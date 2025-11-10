.PHONY: all basic_ops advanced_ops clean

PROJ=$(shell pwd)
SRC_DIR=$(PROJ)/src
OBJ_DIR=$(PROJ)/obj
BIN_DIR=$(PROJ)/bin
INC_DIR=$(PROJ)/include
LIB_DIR=$(PROJ)/lib
STATIC_LIB=$(LIB_DIR)/libmybasic.a $(LIB_DIR)/libmyadvanced.a
CC=gcc
CFLAGS=-I$(INC_DIR)
LDFLAGS=-L$(LIB_DIR) -lmybasic -lmyadvanced -lm

all: basic_ops advanced_ops $(BIN_DIR)/myapp

$(BIN_DIR)/myapp: $(SRC_DIR)/myapp.c $(STATIC_LIB)
	mkdir -p $(BIN_DIR)
	$(CC) -o $@ $< $(CFLAGS) $(LDFLAGS)
basic_ops:
	$(MAKE) -C basic_ops

advanced_ops:
	$(MAKE) -C advanced_ops
clean:
	rm -rf $(BIN_DIR)/* $(OBJ_DIR)/*
	$(MAKE) -C basic_ops clean
	$(MAKE) -C advanced_ops clean
