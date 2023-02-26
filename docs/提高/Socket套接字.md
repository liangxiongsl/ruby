- 套接字是通信通道的端点，客户端和服务器在其中相互通信
- 它们可以在同一台机器上或不同的机器上进行通信
- 插座有两个级别: low , high
	- 低级别访问允许您在系统支持的套接字上工作, 它允许实现无连接和面向连接的协议, 
	- 高级访问允许您使用网络协议(如: http 或 ftp)

`Socket`类型：

- TCP Socket
- UDP Socket
- UNIX Socket

###  ###

# 1. #

- `TCPServer.open("<ip>", "<port>") TCPServer`: 在`ip:port`上开启服务，返回`<TCPServer>`
- `<TCPServer>.accept() TCPSocket`: 侦听端口，若侦听到了就返回`<TCPSocket>`

- `TCPSocket.open("<ip>", "<port>") TCPSocket`: 与`ip:port`连接，连接上后返回`<TCPSocket>`

