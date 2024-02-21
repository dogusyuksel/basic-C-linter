all: clean
	gcc -g -o analyzer analyzer.c -Wno-deprecated-declarations -Werror
clean:
	rm -rf analyzer
