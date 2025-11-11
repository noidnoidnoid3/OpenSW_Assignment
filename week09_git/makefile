CC=gcc
Target=bin/myapp
OBJDIR=obj
LIBDIR=lib
BINDIR=bin
SRCDIR=src

.PHONY: all clean

all: $(Target)

# 실행 파일 생성
$(Target): $(SRCDIR)/myapp.c $(LIBDIR)/libmyops.so.1.0
	$(CC) -o $@ $< -I./include -L./lib -lmyops

# 공유 라이브러리 생성
$(LIBDIR)/libmyops.so.1.0: $(OBJDIR)/myadd.o $(OBJDIR)/mysub.o $(OBJDIR)/mymul.o $(OBJDIR)/mydiv.o $(OBJDIR)/mymod.o $(OBJDIR)/mypow.o
	$(CC) -fPIC -shared -Wl,-soname,libmyops.so.1 -o $@ $^
	ln -s libmyops.so.1.0 $(LIBDIR)/libmyops.so.1
	ln -s libmyops.so.1.0 $(LIBDIR)/libmyops.so

# 오브젝트 파일 생성
$(OBJDIR)/%.o: $(SRCDIR)/%.c
	$(CC) -fPIC -c $< -o $@ -I./include

clean: 
	rm -f $(Target) $(OBJDIR)/*.o $(LIBDIR)/libmyops.so.1.0
	rm -f $(Target) $(OBJDIR)/*.o $(LIBDIR)/libmyops.so.1.0 
	rm $(LIBDIR)/libmyops.so.1 $(LIBDIR)/libmyops.so