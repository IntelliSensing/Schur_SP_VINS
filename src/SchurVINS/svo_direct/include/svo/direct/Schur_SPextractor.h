#ifndef SCHUR_SPEXTRACTOR_H
#define SCHUR_SPEXTRACTOR_H

#include <vector>
#include <list>
#include <opencv2/opencv.hpp>
#include <torch/torch.h>
#include <torch/script.h>
//#include "svo/direct/Schur_SuperPoint.h"

namespace Schur_SP
{

class ExtractorNode
{
public:
    ExtractorNode():bNoMore(false){}

    void DivideNode(ExtractorNode &n1, ExtractorNode &n2, ExtractorNode &n3, ExtractorNode &n4);

    std::vector<cv::KeyPoint> vKeys;
    cv::Point2i UL, UR, BL, BR;
    std::list<ExtractorNode>::iterator lit;
    bool bNoMore;
};

class SPextractor
{
public:
    SPextractor(int nfeatures = 1000, 
    		float scaleFactor = 1.2, 
    		int nlevels = 1,
    		float iniThFAST = 20, 
    		float minThFAST = 7,
    		const std::string& weight_path = "");
    ~SPextractor(){}

    // Compute the SP features and descriptors on an image.
    void operator()(cv::InputArray image, cv::InputArray mask,
                    std::vector<cv::KeyPoint>& keypoints,
                    cv::OutputArray descriptors);

    // Getters for class properties
    int inline GetLevels(){ return nlevels; }
    float inline GetScaleFactor(){ return scaleFactor; }

    std::vector<float> inline GetScaleFactors(){ return mvScaleFactor; }
    std::vector<float> inline GetInverseScaleFactors(){ return mvInvScaleFactor; }

    std::vector<float> inline GetScaleSigmaSquares(){ return mvLevelSigma2; }
    std::vector<float> inline GetInverseScaleSigmaSquares(){ return mvInvLevelSigma2; }

    std::vector<cv::Mat> mvImagePyramid;

protected:
    void ComputePyramid(cv::Mat image);
    void ComputeKeyPointsOctTree(std::vector<std::vector<cv::KeyPoint>>& allKeypoints, cv::Mat &_desc);

    int nfeatures;
    double scaleFactor;
    int nlevels;
    float iniThFAST;
    float minThFAST;

    std::vector<int> mnFeaturesPerLevel;
    std::vector<float> mvScaleFactor;
    std::vector<float> mvInvScaleFactor;
    std::vector<float> mvLevelSigma2;
    std::vector<float> mvInvLevelSigma2;

    torch::jit::script::Module model;
    std::string weight_path_;
};

} // namespace Schur_SP

#endif
