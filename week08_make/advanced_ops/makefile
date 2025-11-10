SRC=./src
OBJ=./obj
LIB=../lib

.PHONY: all clean

all: $(LIB)/libmyadvanced.a

AR = ar
ARFLAGS = rcs

$(LIB)/libmyadvanced.a: $(OBJ)/mypow.o $(OBJ)/mymod.o
	$(AR) $(ARFLAGS) $@ $^

$(OBJ)/%.o: $(SRC)/%.c
	gcc -c $< -o $@ -I../include

clean:
	rm -f $(OBJ)/*.o $(LIB)/libmyadvanced.a