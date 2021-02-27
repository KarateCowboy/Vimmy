=====
Identify your systems bluetooth devices
-----
hcitool dev 
=====
scan available bluetooth devices 
-----
hcitool -i {devicename} scan 
=====
Trust an available bluetooth device 
-----
bluetoothctl; trust C0:28:8D:7D:7D:A1
=====
connect to a bluetooth device within bluetoothctl 
-----
connect C0:28:8D:7D:7D:A1
