CC = gcc
CXX = g++
CFLAGS = -Wall -Wextra -Og -g
CXXFLAGS = $(CFLAGS)
TARGET = prog
C_SRCS = server.c client.c
OBJS = $(C_SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
