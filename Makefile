# Nome do compilador final
TARGET = carlos

all: $(TARGET)

$(TARGET): lex.yy.c parser.tab.c
	g++ lex.yy.c parser.tab.c -o $(TARGET) -lfl

lex.yy.c: lexer.l
	flex lexer.l

parser.tab.c parser.tab.h: parser.y
	bison -d parser.y

clean:
	rm -f $(TARGET) lex.yy.c parser.tab.c parser.tab.h

install: all
	mkdir -p /usr/local/include/carlos
	cp carlinho.h /usr/local/include/carlos/
	cp $(TARGET) /usr/local/bin/
