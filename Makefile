all:
	# gcc -Wall -g segmenter.c -o segmenter -lavformat -lavcodec -lavutil
	gcc -Wall -I/opt/local/include -L/opt/local/lib -g segmenter.c -o segmenter -lavformat -lavcodec -lavutil -lbz2 -lm -lz -lfaac -lmp3lame -lx264 -lfaad

clean:
	rm -r segmenter.dSYM
	rm segmenter

install: segmenter
	cp segmenter /usr/local/bin/

uninstall:
	rm /usr/local/bin/segmenter
