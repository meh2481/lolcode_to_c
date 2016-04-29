lolcode: lex.yy.c lolcode.tab.c lolcode.cpp
	g++ -o lolcode lolcode.cpp lex.yy.c lolcode.tab.c

lex.yy.c: lolcode.l
	flex lolcode.l

lolcode.tab.c: lolcode.y
	bison -dv lolcode.y

clean:
	rm -rf lex.yy.c
	rm -rf lolcode.output
	rm -rf lolcode.tab.h
	rm -rf lolcode.tab.c