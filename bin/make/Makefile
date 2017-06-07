# example-program
# See LICENSE file for copyright and license details.
.POSIX:

include config.mk

TARG = example-program
HDR = header1.h header2.h header3.h
SRC = src1.c src2.c src3.c
EXTRA = LICENSE README
MAN1 = $(TARG:=.1)

OBJ = $(SRC:.c=.o)

all: $(TAR)

$(TAR): config.mk $(OBJ)
	$(CC) -o $@ $(LDFLAGS) $(OBJ) $($LDLIBS)

$(OBJ): config.mk $(HDR)

.c.o:
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $<

clean:
	rm -f $(TARG) $(OBJ)

dist:
	rm -rf "$(TAR)-$(VERSION)"
	mkdir -p "$(TAR)-$(VERSION)"
	cp -R Makefile config.mk $(EXTRA) $(HDR) $(SRC) $(MAN1) "$(TAR)-$(VERSION)"
	tar -cf - "$(TAR)-$(VERSION)" | gzip -c > "$(TAR)-$(VERSION).tar.gz"
	rm -rf "$(TAR)-$(VERSION)"

install: all
	mkdir -p "$(DESTDIR)$(PREFIX)/bin"
	cp -f $(TARG) "$(DESTDIR)$(PREFIX)/bin"
	for f in $(TARG); do chmod 755 "$(DESTDIR)$(PREFIX)/bin/$$f"; done
	mkdir -p "$(DESTDIR)$(MANPREFIX)/man1"
	cp -f $(MAN1) "$(DESTDIR)$(MANPREFIX)/man1"
	for m in $(MAN1); do chmod 644 "$(DESTDIR)$(MANPREFIX)/man1/$$m"; done

uninstall:
	for f in $(TARG); do rm -f "$(DESTDIR)$(PREFIX)/bin/$$f"; done
	for m in $(MAN1); do rm -f "$(DESTDIR)$(MANPREFIX)/man1/$$m"; done
