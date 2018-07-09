DESTDIR = 
PREFIX = $(DESTDIR)/usr/local
UNICODE_VERSION = 10.0.0

Blocks.txt:
	wget -O$@ "http://ftp.unicode.org/Public/$(UNICODE_VERSION)/ucd/Blocks.txt"

symbols: Blocks.txt
	./generate-symbols.py > "$@"

install: symbols
	install -d -m755 $(PREFIX)/bin
	install -m755 unipicker $(PREFIX)/bin/unipicker
	install -d -m755 $(PREFIX)/share/unipicker
	install -m644 symbols $(PREFIX)/share/unipicker/symbols
	install -d -m755 $(DESTDIR)/etc
	install -b -m644 unipickerrc $(DESTDIR)/etc/unipickerrc
