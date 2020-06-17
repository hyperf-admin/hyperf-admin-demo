
`hyperf-admin` 的运行 demo

### 1. 一键启动
先确认 `docker`, `docker-compose` 已安装

```bash
git clone https://github.com/hyperf-admin/hyperf-admin-demo.git
cd hyperf-admin-demo 
docker-compose up
```

浏览器打开 `http://127.0.0.1:8081/default/#/dashboard` 即可访问

### 2. 无 docker 启动

```bash
git clone https://github.com/hyperf-admin/hyperf-admin-demo.git
cd hyperf-admin-demo/backend
composer i
```

然后将 `docker/conf.d/hyperf-admin.conf` 拷贝到本地 `nginx` 目录即可.

注意, 记得添加 `server_name`
