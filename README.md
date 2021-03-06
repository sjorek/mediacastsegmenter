Mediacast-Segmenter
===================

This is a commandline tool to create MPEG2-TS encapsulated stream-segments,
as described in [HTTP Live Streaming](http://en.wikipedia.org/wiki/HTTP_Live_Streaming)
and documented in [RFC 8216](https://tools.ietf.org/html/rfc8216) .


What does it do ?
=================

Compared to Apple's “mediastreamsegmenter” it delivers somewhat equivalent
results, although their implementation is much more advanced.  The main and
as far as I know only advantage of this implementation is its independence.
It is build upon the fabulous “libav” and thus it should compile and run on
all systems supported by “libav”.  The current build is optimized for
Mac OS X 10.6.x and MacPort's “libav”.

The sources are derived from [Assembla](http://svn.assembla.com/svn/legend/segmenter/)
and have been updated since then, in order to reflect latest “libav” changes.


Dependencies
============

* “libav” version 5.2 or above to build and run


Build & Install
===============

Run `make clean && make` to build.
Run `make install` to install the tool to /usr/local/bin/.
Run `make uninstall` to uninstall the tool from /usr/local/bin/.


Usage
=====

Run `mediacastsegmenter` to get a detailed commandline parameter-list.


License
=======

Everything is released under GPL 2 - see [LICENSE](https://github.com/sjorek/mediacastsegmenter/blob/master/LICENSE).
