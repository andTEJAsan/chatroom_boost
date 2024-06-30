CC      = g++-13 -I/opt/homebrew/Cellar/boost/1.85.0/include/  -L/opt/homebrew/Cellar/boost/1.85.0/lib/
CFLAGS  = -O3 
OPTION  = -std=c++14
# LDFLAGS = -L/opt/homebrew/Cellar/boost/1.85.0/lib/
LIBS    = -lboost_system -lboost_thread-mt -pthread

all: chat_server chat_client

chat_server: chat_server.o
	$(CC) -o $@ $^ $(LDFLAGS) $(LIBS)

chat_client: chat_client.o
	$(CC) -o $@ $^ $(LDFLAGS) $(LIBS)
	
chat_server.o: chat_server.cpp protocol.hpp
	$(CC) $(OPTION) -c $(CFLAGS) chat_server.cpp

chat_client.o: chat_client.cpp protocol.hpp
	$(CC) $(OPTION) -c $(CFLAGS) chat_client.cpp

.PHONY: clean

clean:
	rm *.o
	rm chat_server chat_client
