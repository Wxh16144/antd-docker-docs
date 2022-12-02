# antd-docker-docs

> 使用 Docker 运行 [ant.design](https://ant.design/) 官方文档。

## Usage

```bash
docker run --rm -dp 8088:80 --name ant-design-site wxh16144/antd-docker-docs

# docker stop ant-design-site # 停止站点
```

or

```bash
git clone https://github.com/wxh16144/antd-docker-docs \
    && cd antd-docker-docs \
    && docker-compose up -d

# docker-compose down # 停止站点
```

稍等片刻后，使用浏览器打开 [http://127.0.0.1:8088](http://127.0.0.1:8088) 即可访问

## Build Image

```bash
build -t wxh16144/antd-docker-docs:[TagName] --build-arg TAG=[TagName] . # ← 注意这里有个 "."
```

## Why

- 开发中需要查阅[官方文档](https://ant.design/)和示例组件，偶尔会出现 ~~网络不稳定~~。可以试试 [Gitee 镜像](https://ant-design.gitee.io/) 、[官方镜像](https://ant-design.antgroup.com/)。
- 学习使用，不做任何商业或其他目的。
