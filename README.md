Hometask #7 (01/11)
===================

Guide
-----

- Start instance
```bash
./run-and-provision.sh
```

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
