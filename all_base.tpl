{% if request.target == "clash" or request.target == "clashr" %}

port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
tproxy-port: 7895
allow-lan: true
mode: Rule
log-level: info
external-controller: 127.0.0.1:9090

dns:
  enable: true
  ipv6: false
  enhanced-mode: fake-ip
  fake-ip-range: 198.19.0.0/16
  listen: 0.0.0.0:7874
  use-hosts: true
  nameserver:
    - tls://1.1.1.1
    - https://146.112.41.2/dns-query
    - https://101.102.103.104/dns-query
    - https://dns.cloudflare.com/dns-query
  direct-nameserver:
    - 
    - 
  proxy-server-nameserver:
    - 223.5.5.5   
  fake-ip-filter-mode: blacklist
  fake-ip-filter:
    - geosite:connectivity-check
    - geosite:private
    - "+.nas.ip"
hosts:
  "nas": ip
  time.android.com: 203.107.6.88

profile:
  store-selected: true
  store-fake-ip: true

tcp-concurrent: true
unified-delay: true
keep-alive-interval: 15
keep-alive-idle: 600

geodata-mode: true
geodata-loader: standard


geo-auto-update: true
geo-update-interval: 24
geox-url:
  geoip: "https://github.com/plsy1/v2ray-rules-dat/releases/latest/download/geoip.dat"
  geosite: "https://github.com/plsy1/v2ray-rules-dat/releases/latest/download/geosite.dat"

sniffer:
  enable: true
  override-destination: true
  sniff:
    QUIC:
      ports:
      - 443
    TLS:
      ports:
      - 443
      - 8443
    HTTP:
      ports:
      - 80
      - 8080-8880
      override-destination: true
  force-domain:
  - "+.netflix.com"
  - "+.nflxvideo.net"
  - "+.amazonaws.com"
  - "+.media.dssott.com"
  skip-domain:
  - "+.apple.com"
  - Mijia Cloud
  - dlg.io.mi.com
  - "+.oray.com"
  - "+.sunlogin.net"
  - "+.push.apple.com"
  parse-pure-ip: true
  
{% endif %}
