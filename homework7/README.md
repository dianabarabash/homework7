Hometask #7 (01/11)
===================

1. Run ec2-instance (ami-053b0d53c279acc90) Ubuntu 22.04
2. Connect to instance via ssh with dynamic port forward ( -D)
3. Configure SOCKS-proxy for your desktop browser using ssh dynamic port forwarding. Check your proxy by changing location of your browser. (Visit: getip.org) 
4. Run any web server on your home computer. (see: one line python web-server)
5. Connect to instance ssh-reverse using ssh remote port forwarding (-R). Check your connection from the 6. Internet to your home computer web server.

Do not forget:
--------------
  - modify with used-data /etc/ssh/sshd_config on your instance for GatewayPorts=yes using sed
  - restart ssh service on instance (in user-data)
  - add inbound port in AWS SG rules on instance (preferably via aws cli)
Store ssh command lines used in 2. and 5,6
Push user-data and commands to github.

Guide
-----

- Login to the EC2 instance with dynamic port forwarding
```bash
ssh -D :2001 -i ../diana-key-pair.pem ubuntu@ip-address-ec2-instance
```

- Run Google Chrome with SOCKS proxy enabled on MacOS or use a SOCKS plugin
```bash
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server="socks5://127.0.0.1:2001"
```

- Execute Python's HTTP server
```bash
python3 -m http.server
```

- Login to the EC2 instance with remote port forwarding
```bash
ssh -i diana-key-pair.pem -R 8111:localhost:8000 ubuntu@ip-address-ec2-instance
```

- Open your browser http://ip-address-ec2-instance:8111
```bash
curl http://ip-address-ec2-instance:8111
```
