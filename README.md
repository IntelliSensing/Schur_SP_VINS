# Schur_SP_VINS
This project introduces modifications to the visual frontend of SchurVINS in order to enhance the performance of feature extraction and tracking.

## Reproduction of SchurVINS
Here are some tips from my experience reproducing SchurVINS. Additionally, if the download speed of the SchurVINS repository is too slow, you may consider switching to a different mirror.

The project was run in an environment consisting of Ubuntu 20.04, ROS Noetic, and OpenCV 3.4.20 (Ubuntu 18.04 + ROS Melodic + OpenCV 3.2.0 has also been tested).

First, you need to open three terminals and run the following commands in each of them respectively.

```
cd /home/<your_usr_name>/SchurVINS-ws
source devel/setup.bash
roslaunch svo_ros euroc_vio_stereo.launch
```
```
cd /home/<your_usr_name>/SchurVINS-ws
source devel/setup.bash
cd /home/<your_usr_name>/SchurVINS-ws/src/SchurVINS
rviz -d svo_ros/rviz_config.rviz
```
```
cd /home/<your_usr_name>/datasets/rosbag
rosbag play MH_01_easy.bag
```

## Run and Evaluation
In this project, the traditional hand-crafted feature extraction approach was replaced by the deep learning-based SuperPoint method. However, no changes were made to the execution process.

### Dataset Processing
The publicly available EuRoC dataset is used in this project and needs to be converted into the following format:
```
<dataset_name>
├── calib.yaml  --> 校准文件
├── data
│   ├── groundtruth_matches.txt
│   ├── groundtruth.txt
│   ├── stamped_groundtruth.txt
│   ├── images.txt
│   ├── img --> 包含实际图像的文件夹
│   ├── imu.txt
└── dataset.yaml --> 可选，用于指定特定数据集的参数
```
The dataset has already been processed and is ready for use. It is located in the *svo_benchmarking* folder.

### Execution Configuration
Open two terminals, one to run:
```
roscore
```
and the other to run:
```
rosrun svo_benchmarking benchmark.py superpoint.yaml
```
There is no need to launch a separate terminal for *roslaunch*, as *benchmark.py* already starts the necessary ROS nodes.

### Evaluation
```
rosrun rpg_trajectory_evaluation analyze_trajectory_single.py <result_folder>
```
For each evaluation, make sure to copy the labeled ground truth file into the results directory.










