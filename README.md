# Configuration

1. 部署 subconverter

```yaml
services:
  subconverter:
    image: tindy2013/subconverter:latest
    container_name: subconverter
    restart: always
    volumes:
      - ./base:/base
```

2. 修改`/base/base/all_base.tpl`

# Tools

https://github.com/ChellyL/geosite-list  

https://github.com/plsy1/v2ray-rules-dat
