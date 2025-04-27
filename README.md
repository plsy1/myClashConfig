正常分流 https://github.com/plsy1/v2ray-rules-dat

屏蔽广告 https://github.com/217heidai/adblockfilters

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

# REJECT

[reject.yaml](https://github.com/plsy1/myClashConfig/blob/main/reject.yaml)

# DIRECT

[direct.txt](https://github.com/plsy1/v2ray-rules-dat/blob/hidden/direct.txt)

