cat <<'MyV2RayClientAdd' > /usr/bin/v2rayclientadd
#!/bin/bash
while getopts u:a: flag
do
    case "${flag}" in
        u) uuid=${OPTARG};;
        a) alterid=${OPTARG};;
    esac
done
sed -i '14 a \          {\n            "id": "'"${uuid}"'",\n            "alterId": '"${alterid}"'\n          },' /etc/v2ray/config.json
systemctl restart v2ray
MyV2RayClientAdd
