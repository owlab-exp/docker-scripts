# docker-scripts
이 repository는 여타의 프로젝트들의 기반이 되는 소프트웨어 패키지들을 docker로 실행하기 위한 스크립트들을 모아놓은 것이다.

## pixiecore-start/stop.sh
PXE 부트서버를 실행하고 중지하는 스크립트이다.<br>
머신에 CoreOS를 설치해야 하는 경우에, 
- 다른 (리눅스) 시스템에서 **pixiecore-start.sh**를 실행한 후
- 머신을 네트워크에 연결하고,
- 머신의 BIOS에서 PXE 부트를 하도록 설정한 후
- 머신을 시작하면, CoreOS로 부팅이 된다.
이렇게 부팅을 한 후에 cloud-config.yaml를 작성하여 (혹은, 다른 시스템에 올려놓은 것을 sftp등으로 내려받아)<br>
아래의 명력으로 디스크에 CoreOS를 설치한다.

    coreos-install -d /dev/sda -c cloud-config.yaml

자세한 사항은 [Installing CoreOS to Disk](https://coreos.com/os/docs/latest/installing-to-disk.html)를 참조한다.

## obzen-registry-start/stop.sh
Public Docker Hub를 이용하지 않고 별도의 Docker Registry Server를 운영하기 위해 필요한 것이다.
자세한 사항은 [Docker Registry V2](https://github.com/docker/distribution)를 참조한다.

## gitlab-ce-start/stop.sh
[GitHub](http://www.github.com)을 이용하지 않고, 별도의 내부 Git Repository Server를 운영하기 위해 필요한 소프트웨어 패키지를 docker로 만든 것이다.
자세한 사항은 [GitLab](https://about.gitlab.com/)을 참고한다.
