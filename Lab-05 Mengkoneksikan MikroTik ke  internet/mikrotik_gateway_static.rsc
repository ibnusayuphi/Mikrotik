# 2026-06-26 10:35:31 by RouterOS 7.19.4
# software id = QUA2-ZM9T
#
# model = RB951Ui-2HnD
# serial number = DE3B0E89BC52
/interface wireless
set [ find default-name=wlan1 ] ssid=MikroTik
/interface ethernet
set [ find default-name=ether1 ] name=ether1-WAN
set [ find default-name=ether2 ] name=ether2-LAN
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip neighbor discovery-settings
set discover-interface-list=!dynamic
/ip address
add address=192.168.137.2/24 interface=ether1-WAN network=192.168.137.0
add address=192.168.100.1/24 interface=ether2-LAN network=192.168.100.0
/ip dns
set servers=8.8.8.8,1.1.1.1
/ip firewall nat
add action=masquerade chain=srcnat out-interface=ether1-WAN
/ip route
add disabled=no dst-address=0.0.0.0/0 gateway=192.168.137.1 routing-table=\
    main suppress-hw-offload=no
/system clock
set time-zone-name=Asia/Jakarta
