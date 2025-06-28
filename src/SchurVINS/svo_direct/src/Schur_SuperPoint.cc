#include "svo/direct/Schur_SuperPoint.h"

namespace Schur_SP
{

SuperPoint::SuperPoint()
    : conv1a(torch::nn::Conv2dOptions(1, 64, 3).stride(1).padding(1)),
      conv1b(torch::nn::Conv2dOptions(64, 64, 3).stride(1).padding(1)),
      conv2a(torch::nn::Conv2dOptions(64, 128, 3).stride(1).padding(1)),
      conv2b(torch::nn::Conv2dOptions(128, 128, 3).stride(1).padding(1)),
      conv3a(torch::nn::Conv2dOptions(128, 256, 3).stride(1).padding(1)),
      conv3b(torch::nn::Conv2dOptions(256, 256, 3).stride(1).padding(1)),
      conv4a(torch::nn::Conv2dOptions(256, 512, 3).stride(1).padding(1)),
      conv4b(torch::nn::Conv2dOptions(512, 512, 3).stride(1).padding(1)),
      convPa(torch::nn::Conv2dOptions(512, 256, 3).stride(1).padding(1)),
      convPb(torch::nn::Conv2dOptions(256, 65, 1).stride(1).padding(0)),
      convDa(torch::nn::Conv2dOptions(512, 256, 3).stride(1).padding(1)),
      convDb(torch::nn::Conv2dOptions(256, 256, 1).stride(1).padding(0))
{
    register_module("conv1a", conv1a);
    register_module("conv1b", conv1b);
    register_module("conv2a", conv2a);
    register_module("conv2b", conv2b);
    register_module("conv3a", conv3a);
    register_module("conv3b", conv3b);
    register_module("conv4a", conv4a);
    register_module("conv4b", conv4b);
    register_module("convPa", convPa);
    register_module("convPb", convPb);
    register_module("convDa", convDa);
    register_module("convDb", convDb);
}

std::vector<torch::Tensor> SuperPoint::forward(torch::Tensor x)
{
    // Forward pass through the network
    x = torch::relu(conv1a->forward(x));
    x = torch::relu(conv1b->forward(x));
    x = torch::max_pool2d(x, 2, 2);

    x = torch::relu(conv2a->forward(x));
    x = torch::relu(conv2b->forward(x));
    x = torch::max_pool2d(x, 2, 2);

    x = torch::relu(conv3a->forward(x));
    x = torch::relu(conv3b->forward(x));
    x = torch::max_pool2d(x, 2, 2);

    x = torch::relu(conv4a->forward(x));
    x = torch::relu(conv4b->forward(x));

    auto cPa = torch::relu(convPa->forward(x));
    auto semi = convPb->forward(cPa);  // Probability map for keypoints

    auto cDa = torch::relu(convDa->forward(x));
    auto desc = convDb->forward(cDa);  // Descriptors

    semi = torch::softmax(semi, 1);
    semi = semi.slice(1, 0, 64);
    semi = semi.permute({0, 2, 3, 1});  // [B, H/8, W/8, 64]

    int Hc = semi.size(1);
    int Wc = semi.size(2);
    semi = semi.contiguous().view({-1, Hc, Wc, 8, 8});
    semi = semi.permute({0, 1, 3, 2, 4});
    semi = semi.contiguous().view({-1, Hc * 8, Wc * 8});  // [B, H, W]

    return {semi, desc};
}

} // namespace Schur_SP
