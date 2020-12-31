# gpu-view docker
主機GPU監控

- [原作者REPO](https://github.com/fgaim/gpuview)

## Build Docker Image
```bash
$ docker build -t gpu-view .
```

## Run new container (as slave or master)
```bash
$ docker run -itd --gpus all --restart=always --name gpu-view -p 9988:9988 gpu-view run --safe-zone
```
## Add or Remove machine (only no master)
### Add
```
$ docker exec -it gpu-view gpuview add --url <ip:port> --name <name>
```
### Remove
```
$ docker exec -it gpu-view gpuview remove --url <ip:port> --name <name>
```
### Restart
上述操作完成後請重啟
```
$ docker restart pu-view
```