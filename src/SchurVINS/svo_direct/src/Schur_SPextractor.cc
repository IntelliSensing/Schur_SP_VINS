#include "svo/direct/Schur_SPextractor.h"
//#include "svo/direct/Schur_SuperPoint.h"
#include <opencv2/opencv.hpp>
#include <torch/torch.h>
#include <torch/script.h>
#include <vector>
#include <iostream>
#include <ros/ros.h>

namespace Schur_SP
{

// === 统一构造函数，支持外部传入或 ROS 参数 ===
SPextractor::SPextractor(int nfeatures, float scaleFactor, int nlevels,
                         float iniThFAST, float minThFAST,
                         const std::string& weight_path)
  : nfeatures(nfeatures),
    scaleFactor(scaleFactor),
    nlevels(nlevels),
    iniThFAST(iniThFAST),
    minThFAST(minThFAST),
    weight_path_(weight_path)
{
    // 1. 若外部没给路径，则尝试从 ROS 私有参数读取
    if (weight_path_.empty()) {
        ros::NodeHandle pnh("~");
        weight_path_ = pnh.param<std::string>("superpoint_model_path",
                                              std::string("weights/superpoint_v1.pt"));
    }

    // 2. 初始化网络并加载
    try {
        model = torch::jit::load(weight_path_, torch::kCPU);
        model.eval();
        ROS_INFO_STREAM("[SPextractor] Loaded SuperPoint weights: " << weight_path_);
    } catch (const c10::Error& e) {
        ROS_ERROR_STREAM("[SPextractor] Failed to load weights: " << e.what());
    }
}

void SPextractor::operator()(cv::InputArray image, cv::InputArray mask,
                              std::vector<cv::KeyPoint>& keypoints,
                              cv::OutputArray descriptors)
{
    // Convert image to tensor (convert to float and normalize)
    auto img = torch::from_blob(image.getMat().data, {1, 1, image.rows(), image.cols()}, torch::kByte);
    img = img.to(torch::kFloat) / 255;  // Normalize pixel values to [0, 1]

    // Pass the image through SuperPoint model to get keypoints and descriptors
    // std::vector<torch::Tensor> out = model->forward(img);

    // Check if the output is valid
    // if (out.empty() || !out[0].defined() || !out[1].defined()) {
    //TorchScript forward : returns Tuple(prob, desc)
    std::vector<torch::IValue> inputs{img};
    auto output_tuple = model.forward(inputs).toTuple();
    if (output_tuple->elements().size() < 2){
        std::cerr << "SuperPoint forward() output is invalid!" << std::endl;
        return;
    }

    // Get probability map and descriptors from the output
    // torch::Tensor prob = out[0];  // Probability map for keypoints
    // torch::Tensor desc = out[1];  // Feature descriptors
    torch::Tensor prob = output_tuple->elements()[0].toTensor();
    torch::Tensor desc = output_tuple->elements()[1].toTensor();

    // Convert probability map to OpenCV Mat and extract keypoints above threshold
    auto prob_sizes = prob.sizes();
    if (prob_sizes.size() < 2) return;  // Ensure the tensor is correctly shaped

    cv::Mat prob_mat(prob_sizes[0], prob_sizes[1], CV_32FC1, prob.data<float>());

    // Extract keypoints from the probability map
    for (int i = 0; i < prob_mat.rows; i++) {
        for (int j = 0; j < prob_mat.cols; j++) {
            if (prob_mat.at<float>(i, j) > 0.5) {  // Keypoint threshold
                keypoints.push_back(cv::KeyPoint(j, i, 8, -1, prob_mat.at<float>(i, j)));
            }
        }
    }

    // Convert descriptors to OpenCV Mat and assign to output using assign
    descriptors.assign(cv::Mat(prob_mat.rows, prob_mat.cols, CV_32FC1, desc.data<float>()));
}

} // namespace Schur_SP
