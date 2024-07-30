# A Real Time Chatroom Using boost::asio
- This project is a simple chat room application implemented using the `boost::asio` library in C++. The chat room allows multiple clients to connect to a server and exchange messages in real-time. The server acts as a central hub, relaying messages between clients.

- You can also whisper to specific clients by mentioning their username in the message. The server will ensure that the message is delivered only to the intended recipient.


<img width="1470" alt="Screenshot 2024-07-30 at 5 02 44 PM" src="https://github.com/user-attachments/assets/4f96f8e6-dfc4-4624-8002-828896f86bd4">

## Installation and Usage
- `make` will generate 2 binaries, `client` and `server`
- Start the server via this command `./server <port_number>`
- Clients can join via this command `./client <username> <server IP> <port_number>`
- By Default all the messages that you sent would be broadcasted to all the users connected to the chatroom.
- You can also whisper messages to specific users.
