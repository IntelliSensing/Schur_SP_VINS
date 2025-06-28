#ifndef SCHUR_SUPERPOINT_H
#define SCHUR_SUPERPOINT_H

#include <torch/torch.h>
#include <opencv2/opencv.hpp>
#include <vector>

namespace Schur_SP
{

// SuperPoint 模型结构
struct SuperPoint : torch::nn::Module {
  SuperPoint();

  // 前向传播方法
  std::vector<torch::Tensor> forward(torch::Tensor x);

  // 网络层
  torch::nn::Conv2d conv1a{nullptr};
  torch::nn::Conv2d conv1b{nullptr};
  torch::nn::Conv2d conv2a{nullptr};
  torch::nn::Conv2d conv2b{nullptr};
  torch::nn::Conv2d conv3a{nullptr};
  torch::nn::Conv2d conv3b{nullptr};
  torch::nn::Conv2d conv4a{nullptr};
  torch::nn::Conv2d conv4b{nullptr};
  torch::nn::Conv2d convPa{nullptr};
  torch::nn::Conv2d convPb{nullptr};
  torch::nn::Conv2d convDa{nullptr};
  torch::nn::Conv2d convDb{nullptr};
};

}  // namespace Schur_SP

#endif
