# Usage

```
docker run -d -p 9091:9091 dummy18/armtransmission
```

This will create 2 volumes in the host for:
- /var/lib/transmission-daemon/downloads
- /var/lib/transmission-daemon/Downloads

Use docker inspect to know the path in the host or you can use the next mapping to set your custom path:

```
docker run -d -p 9091:9091 \
	-v /var/lib/transmission-daemon/downloads:/var/lib/transmission-daemon/downloads \
	-v /var/lib/transmission-daemon/Downloads:/var/lib/transmission-daemon/Downloads \
	dummy18/armtransmission
```