RM	= rm -f
HOSTCC	= gcc
HOSTCXX	= g++
CFLAGS		:= -Wall -Wextra -fexceptions -O3
CPPFLAGS	:= -std=c++17 -Wall -Wextra -fexceptions -O3
DIR	= ~/SmallTools

SRCS		:= $(wildcard *.cpp)
TARGETS		:= $(patsubst %.cpp,$(DIR)/%,$(SRCS))

all: $(TARGETS)

$(DIR)/%: %.cpp
	$(HOSTCXX) $(CPPFLAGS) $< -o $@ -lpthread

clean:
	$(RM) $(TARGETS)

.PHONY: all clean

