ABC.exe: main.o  hello.o factorial.o
	gcc -o ABC.exe main.o hello.o factorial.o

main.o: main.c
	gcc -c main.c

hello.o: hello.c
	gcc -c hello.c

factorial.o: factorial.c
	gcc -c factorial.c

clean:
	rm -rf *.o *.exe
