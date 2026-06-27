# 2026-06-27 20:39:48 by RouterOS 7.19.4
# software id = QUA2-ZM9T
#
# model = RB951Ui-2HnD
# serial number = DE3B0E89BC52
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
add authentication-types=wpa-psk,wpa2-psk,wpa-eap,wpa2-eap mode=dynamic-keys \
    name=belajar supplicant-identity=""
/interface wireless
set [ find default-name=wlan1 ] band=2ghz-b/g/n disabled=no frequency=2467 \
    security-profile=belajar ssid=Belajar-Mikrotik
/ip address
add address=192.168.20.1/24 interface=ether2 network=192.168.20.0
/ip dhcp-client
add default-route-tables=main interface=wlan1
/ip firewall nat
add action=masquerade chain=srcnat out-interface=wlan1
/system clock
set time-zone-name=Asia/Jakarta
