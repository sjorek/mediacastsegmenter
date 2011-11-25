all:
	# gcc -Wall -g segmenter.c -o segmenter -lavformat -lavcodec -lavutil
	gcc -Wall -I/opt/local/include -L/opt/local/lib -g mediacastsegmenter.c -o mediacastsegmenter -lavformat -lavcodec -lavutil -lbz2 -lm -lz -lfaac -lmp3lame -lx264 -lfaad

clean:
	rm -r mediacastsegmenter.dSYM
	rm mediacastsegmenter

install: mediacastsegmenter
	chmod a+x mediacastsegmenter
	cp mediacastsegmenter /usr/local/bin/

uninstall:
	rm /usr/local/bin/mediacastsegmenter
