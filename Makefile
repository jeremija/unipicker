PREFIX = /usr/local
UNICODE_VERSION = 10.0.0
SYMBOLSFILE = $(PREFIX)/share/unipicker/symbols

Blocks.txt:
	wget -O$@ "http://ftp.unicode.org/Public/$(UNICODE_VERSION)/ucd/Blocks.txt"

symbols: Blocks.txt
	./generate-symbols.py > "$@"

install: symbols
	mkdir -p $(dir $(SYMBOLSFILE))
	cp symbols $(SYMBOLSFILE)
	mkdir -p $(PREFIX)/bin
	cat unipicker |sed 's|^SYMBOLSFILE=.*|SYMBOLSFILE="$(SYMBOLSFILE)"|' > $(PREFIX)/bin/unipicker
	chmod a+x $(PREFIX)/bin/unipicker
