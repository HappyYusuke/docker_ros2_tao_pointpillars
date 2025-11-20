# docker_ros2_tao_pointpillars
本リポジトリは、3D-LiDAR（[LIVOX MID-360](https://www.livoxtech.com/jp/mid-360)）と[ros2_tao_pointpillars](https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git)を用いて人検出を提供するDocker環境です。

</br>

# Installation
本リポジトリをクローンする。

```
git clone https://github.com/HappyYusuke/docker_ros2_tao_pointpillars.git
```

</br>

テスト用のrosbagを以下URLからホームディレクトリへダウンロードする。</br>
https://kanazawa-it.box.com/s/0aja3txig7wyjgq5p30m7gs3becye8k7

```
mv ~/Downloads/large_files_docker_ReID3D2025.zip ~/
```

</br>

Dockerfileからビルドする。

```
cd ~/docker_ReID3D2025/
./build-docker-image.sh
```

</br>

Dockerを起動する。
Dockerを起動すると、プロンプトの@以降がros2になる。

```
./run-docker-container.sh
```

</br>

colcon_ws/srcに、[ros2_tao_pointpillars](https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git)と[follow_me_by_3d_lidar](https://github.com/HappyYusuke/follow_me_by_3d_lidar.git)をクローンしビルドする。

```
# リポジトリのクローン
mkdir -p ~/colcon_ws/src && cd ~/colcon_ws/src
git clone https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git
git clone https://github.com/HappyYusuke/follow_me_by_3d_lidar.git

# ファイルを置換
rm ~/colcon_ws/src/ros2_tao_pointpillars/launch/pp_infer_launch.py
rm ~/colcon_ws/src/ros2_tao_pointpillars/package.xml
cp ~/colcon_ws/src/follow_me_by_3d_lidar/external_files/pp_infer_launch.py ~/colcon_ws/src/ros2_tao_pointpillars/launch/
cp ~/colcon_ws/src/follow_me_by_3d_lidar/external_files/point_cloud2_iterator.hpp ~/colcon_ws/src/ros2_tao_pointpillars/include/pp_infer
cp ~/colcon_ws/src/follow_me_by_3d_lidar/external_files/package.xml ~/colcon_ws/src/ros2_tao_pointpillars/

# 依存関係のパッケージをダウンロード
cd ~/colcon_ws
rosdep update
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src

# 学習済みモデルをダウンロード
wget --content-disposition 'https://api.ngc.nvidia.com/v2/models/org/nvidia/team/tao/pointpillarnet/deployable_v1.1/files?redirect=true&path=pointpillars_deployable.onnx' -O ~/colcon_ws/src/ros2_tao_pointpillars/include/pointpillars_deployable.onnx

# ビルド
colcon build --symlink-install
source ~/colcon_ws/install/setup.bash
```

</br>

# Usage
### ros2 bagを使ってros2_tao_pointpillarsを試す
Dockerを起動。

```
./run-docker-containter.sh
```

</br>

follow_me_by_3d_lidarを起動。

```
ros2 run follow_me_by_3d_lidar detection_3d_array_rviz
```

</br>

pointpillarsを起動

```
ros2 launch pp_infer pp_infer_launch.py
```

</br>

ros2bagを再生

```
cd ros2_bags
ros2 bag play lidar_data_three_person
```

</br>
rviz2を起動。

```
rviz2
```

</br>

rviz2を起動後、「Fixed Frame」を`livox_frame`に変更してください。

<img src=fig/2.jpg width=500>

</br>

適宜トピックを追加してrviz2で認識できているか確認します。

</br>

# TODO
* ~~本ブランチのREADMEのInstallationの再現性を検証する~~
* 認識が不安定なので、[PointPillars](https://github.com/zhulf0804/PointPillars.git)も試す
  - PointPillarsの環境構築
  - PointPillarsで学習
  - PointPillarsで推論
  - ros2_tao_pointpillarsとPointPillarsの比較
  - 精度が高い方を実装する
* with_pointpillarsブランチにマージする
* ReID3DとPointPillarsで再識別の精度を検証する
