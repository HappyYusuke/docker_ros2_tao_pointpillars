# docker_ros2_tao_pointpillars
本リポジトリは、3D-LiDAR（[LIVOX MID-360](https://www.livoxtech.com/jp/mid-360)）と[ros2_tao_pointpillars](https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git)を用いて人検出を提供するDocker環境です。

</br>

# Installation
本リポジトリをクローンする。

```bash
git clone https://github.com/HappyYusuke/docker_ros2_tao_pointpillars.git
```

</br>

zip形式のファイルを以下URLからダウンロードする。</br>
https://kanazawa-it.box.com/s/tuikkndo4hfgks5x6o0am811my0cdz8g

解凍しホームディレクトリへ移動。
```bash
# 解凍
cd ~/Downloads
unzip docker_ros2_tao_pointpillars.zip

# ホームディレクトリへ移動
mv docker_ros2_tao_pointpillars ~/
```

</br>

Docker Imageをロードする。

```bash
docker load < ~/docker_ros2_tao_pointpillars/docker_ros2_tao_pointpillars.tar.gz
```

</br>

Dockerを起動する。
Dockerを起動すると、プロンプトの@以降がros2になる。

```
./run-docker-container.sh
```

</br>

colcon_ws/srcに、[ros2_tao_pointpillars](https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git)と[reid_pillar_hf](https://github.com/HappyYusuke/reid_pillar_hf.git)をクローンしビルドする。

```
# リポジトリのクローン
mkdir -p ~/colcon_ws/src && cd ~/colcon_ws/src
git clone https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git
git clone https://github.com/HappyYusuke/reid_pillar_hf.git

# ファイルを置換
rm ~/colcon_ws/src/ros2_tao_pointpillars/launch/pp_infer_launch.py
rm ~/colcon_ws/src/ros2_tao_pointpillars/package.xml
cp ~/colcon_ws/src/reid_pillar_hf/external_files/pp_infer_launch.py ~/colcon_ws/src/ros2_tao_pointpillars/launch/
cp ~/colcon_ws/src/reid_pillar_hf/external_files/point_cloud2_iterator.hpp ~/colcon_ws/src/ros2_tao_pointpillars/include/pp_infer
cp ~/colcon_ws/src/reid_pillar_hf/external_files/package.xml ~/colcon_ws/src/ros2_tao_pointpillars/

# 依存関係のパッケージをダウンロード
cd ~/colcon_ws
rosdep update
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src

# ros2_tao_pointpillarsの学習済みモデルをダウンロード
wget --content-disposition 'https://api.ngc.nvidia.com/v2/models/org/nvidia/team/tao/pointpillarnet/deployable_v1.1/files?redirect=true&path=pointpillars_deployable.onnx' -O ~/colcon_ws/src/ros2_tao_pointpillars/include/pointpillars_deployable.onnx

# ビルド
colcon build --symlink-install
source ~/colcon_ws/install/setup.bash
```

</br>

# Usage
### ros2 bagを使ってros2_tao_pointpillarsを試す
Dockerを起動。

```bash
./run-docker-containter.sh
```

</br>

`terminator`を起動
```bash
terminator
```

`terminator`は以下の通りターミナルを分割できます。
- ctrl+shift+oで上下分割
- ctrl+shift+eで左右分割
- ctrl+shift+nや+pで画面間移動
- ctrl+shift+wで画面を一つ閉じる

reid_pillar_hfを起動。

```bash
ros2 run reid_pillar_hf rviz_pointpillars_launch.py
```

</br>

pointpillarsを起動

```bash
ros2 launch pp_infer pp_infer_launch.py
```

</br>

rosbag2を再生

```bash
cd ros2_bags
ros2 bag play lidar_data_three_person
```

</br>

以上の手順で、認識している様子を確認できます。
