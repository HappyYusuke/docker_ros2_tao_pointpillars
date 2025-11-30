#!/bin/bash

# リポジトリのクローン
mkdir -p ~/colcon_ws/src && cd ~/colcon_ws/src
git clone https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git
git clone https://github.com/HappyYusuke/harrp.git
git clone https://github.com/Livox-SDK/livox_ros_driver2.git

# ファイルを置換
rm ~/colcon_ws/src/ros2_tao_pointpillars/launch/pp_infer_launch.py
rm ~/colcon_ws/src/ros2_tao_pointpillars/package.xml
cp ~/colcon_ws/src/harrp/external_files/pp_infer_launch.py ~/colcon_ws/src/ros2_tao_pointpillars/launch/
cp ~/colcon_ws/src/harrp/external_files/point_cloud2_iterator.hpp ~/colcon_ws/src/ros2_tao_pointpillars/include/pp_infer
cp ~/colcon_ws/src/harrp/external_files/package.xml ~/colcon_ws/src/ros2_tao_pointpillars/

# 依存関係のパッケージをダウンロード
cd ~/colcon_ws
rosdep update
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src

# ros2_tao_pointpillarsの学習済みモデルをダウンロード
wget --content-disposition 'https://api.ngc.nvidia.com/v2/models/org/nvidia/team/tao/pointpillarnet/deployable_v1.1/files?redirect=true&path=pointpillars_deployable.onnx' -O ~/colcon_ws/src/ros2_tao_pointpillars/include/pointpillars_deployable.onnx

# ビルド
cd src/livox_ros_driver2
./build.sh ROS2
source ~/colcon_ws/install/setup.bash

# ホームディレクトリに戻る
cd ~/
