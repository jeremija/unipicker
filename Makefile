UNICODE_VERSION = 10.0.0

Blocks.txt:
	wget -O$@ "http://ftp.unicode.org/Public/$(UNICODE_VERSION)/ucd/Blocks.txt"

symbols: Blocks.txt
	./generate-symbols.py > "$@"
