OVPN_DATA="$(pwd)/data"
OVPN_USER="$1"

docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full $OVPN_USER nopass
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_getclient $OVPN_USER > keys/$OVPN_USER.ovpn
