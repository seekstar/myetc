RM	= rm -f
HOSTCC	= gcc
HOSTCXX	= g++
CFLAGS		:= -Wall -Wextra -fexceptions -O3
CPPFLAGS	:= -std=c++17 -Wall -Wextra -fexceptions -O3

CPPSRCS		:= $(wildcard *.cpp)
CPPTARGETS	:= $(patsubst %.cpp,bin/%,$(CPPSRCS))

bin/%: %.cpp
	mkdir -p bin && $(HOSTCXX) $(CPPFLAGS) $< -o $@

all:	${CPPTARGETS}

clean:
	${RM} ${CPPTARGETS}

.PHONY: all
