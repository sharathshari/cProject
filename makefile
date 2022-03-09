exec : \
 compile  
	echo "Executing the object file"
	./compile 

compile : main.o hello.o factorial.o
	echo "Compiling"
	gcc -o compile $^


main.o: main.c
	gcc -c main.c

hello.o: hello.c
	gcc -c hello.c

factorial.o: factorial.c
	gcc -c factorial.c

clean:
	rm -rf *.o *.exe
