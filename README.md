# docker_ros2_tao_pointpillars
本リポジトリは、3D-LiDAR（[LIVOX MID-360](https://www.livoxtech.com/jp/mid-360)）と[ros2_tao_pointpillars](https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git)を用いて人検出を提供するDocker環境です。

</br>

# Installation
本リポジトリをクローンする。

```bash
git clone https://github.com/HappyYusuke/docker_ros2_tao_pointpillars.git
```

</br>

zip形式のrosbag2ファイルを以下URLからダウンロードする。</br>
https://kanazawa-it.box.com/s/tuikkndo4hfgks5x6o0am811my0cdz8g

解凍し移動。
```bash
# 解凍
cd ~/Downloads
unzip ros2_bags.zip

# 本リポジトリの`home`へ移動
mv ros2_bags ~/docker_ros2_tao_pointpillars/home
```

</br>

> [!NOTE]
> Dockerがインストールされていない場合
> ```bash
> 本リポジトリに移動
> cd ~/docker_ros2_tao_pointpillars
>
> # Dockerをインストール
> ./install-docker.sh
> ```

</br>

Dockerを起動する。<br>
Docker Imageのロードが始まり、コンテナが起動するとプロンプトの@以降がros2になる。

```
./run-docker-container.sh
```

> [!TIP]
> インターネットが遅くてDocker ImageのPullに時間がかかる場合。<br>
> 以下URLからImageをダウンロードしてください (金沢工業大学のメールアドレスのみ)。<br>
> https://kanazawa-it.box.com/s/p2ntuh18y7193mk0oivdvf65bjf858bl
>
> ダウンロード完了後、ロードしてください。
> ```bash
> cd ~/Downloads
> docker load < ros2_tao_pointpillars.tar.gz
> ```

</br>

> [!TIP]
> 金沢工業大学のプロキシ環境下で開発する場合
> ```bash
> # プロキシを設定する
> setkitproxy
>
> # プロキシを設定しない
> unkitproxy
> ```

以下3つのリポジトリを使用するため、セットアップ用のシェルスクリプトを実行してください。
* [ros2_tao_pointpillars](https://github.com/HappyYusuke/ros2_tao_pointpillars.git) (HARRP用に調整)
* [harrp](https://github.com/HappyYusuke/harrp.git)
* [livox_ros_driver2](https://github.com/Livox-SDK/livox_ros_driver2.git)

```bash
./setup.sh
```

</br>

# Usage
## ros2 bagを使ってros2_tao_pointpillarsを試す
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

harrpを起動。

```bash
ros2 launch harrp rviz_pointpillars_launch.py
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

</br>

## 実機を使ってros2_tao_pointpillrasを試す

イーサネットを設定します。
1. PCの設定を開き、「Network」を選択してください。
2. 「Wired」の「＋」をクリックしてください。
3. 「IPv4」タブを選択してください。
4. 「IPv4 Method」の「Manual」を選択してください。
5. 「Addresses」を以下のように設定してください。

    - Address：192.168.1.50
    - Netmask：255.255.255.0
    - Gateway：192.168.1.1

6. ウィンドウ右上の「Add」をクリックしてください。

<img src=fig/1.jpg width=500>

</br>

`livox_ros_driver2`の設定ファイルを書き換えます。

1. `./run-docker-containter.sh`でDockerを起動します。
   
2. `MID360_config.json`を開きます。
```
vim ~/colcon_ws/src/livox_ros_driver2/config/MID360_config.json
```
3. `host_net_info`内のipを`192.168.1.50`に変更します。具体的な変更箇所は以下の通りです。

    - `"cmd_data_ip" : "192.168.1.50",`
    - `"push_msg_ip": "192.168.1.50",`
    - `"point_data_ip": "192.168.1.50",`
    - `"imu_data_ip" : "192.168.1.50",`

4. `lidar_configs`のipを以下の手順で変更します。

    - お手元のMID-360のシリアル番号末尾2桁をご確認ください（ここでは例として`15`とします）。
    - MID-360は`192.168.1.1XX/24`のいずれかに設定されます。（`192.168.1.115`となります）。
    - `ping 192.168.1.1XX`を実行し、応答があることを確認します。
    - 応答が確認できたら、`lidar_configs`のipアドレスを変更してください。

5. `launch_ROS2/msg_MID360_launch.py`のパラメータを変更します。
launchファイルを開きます。
```bash
vim ~/colcon_ws/src/livox_ros_driver2/launch_ROS2/msg_MID360_launch.py
```

`xfer_format   = 1`を`xfer_format   = 0`にしてください。

<br>

6. ビルド
```bash
cd ~/colcon_ws
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
source ~/colcon_ws/install/setup.bash
```

</br>

MID-360のlaunchを実行します。

```bash
ros2 launch livox_ros_driver2 msg_MID360_launch.py
```

</br>

harrpを実行します。

```bash
ros2 launch harrp unified_rviz_pointpillars_launch.py
```

</br>

rviz2で適宜認識の様子を確認してください。
