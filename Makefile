UNAME_S := $(shell uname -s)

all: kilo

kilo: kilo.c
	$(CC) -o kilo kilo.c -Wall -W -pedantic -std=c99

# Windows targets
ifeq ($(UNAME_S),Windows_NT)
kilo-win: kilo-win.c
	gcc -o kilo-win.exe kilo-win.c -Wall -W -pedantic -std=c99

kilo-win-msvc: kilo-win.c
	cl kilo-win.c

clean:
	del /Q kilo.exe kilo-win.exe *.o *.obj *.pdb *.ilk *.exp *.lib 2>nul || true
else
kilo-win: kilo-win.c
	$(CC) -o kilo-win kilo-win.c -Wall -W -pedantic -std=c99

clean:
	rm -f kilo kilo-win *.o
endif
