SRC=./src
OBJ=./obj
LIB=../lib

.PHONY: all clean

all: $(LIB)/libmybasic.a

AR = ar
ARFLAGS = rcs

$(LIB)/libmybasic.a: $(OBJ)/add.o $(OBJ)/sub.o $(OBJ)/mul.o $(OBJ)/divd.o
	$(AR) $(ARFLAGS) $@ $^

$(OBJ)/%.o: $(SRC)/%.c
	gcc -c $< -o $@ -I../include

clean:
	rm -f $(OBJ)/*.o $(LIB)/libmybasic.a
