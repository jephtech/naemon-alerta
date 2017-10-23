CC=gcc
MOD_CFLAGS=-fPIC
CFLAGS=-g -O2 -DHAVE_CONFIG_H $(pkg-config --cflags --libs glib-2.0)
MOD_LDFLAGS=-shared
LDFLAGS=
LIBS= -lcurl
LDLIBS = $(pkg-config --libs glib-2.0)

STRIP=/usr/bin/strip

CP=@CP@

nagios4: alerta-neb.c
	$(CC) $(MOD_CFLAGS) $(CFLAGS) -I../include -I../include/nagios4 $(LIBS) -o alerta-neb.o alerta-neb.c $(MOD_LDFLAGS) $(LDFLAGS) $(LIBS)

naemon: alerta-neb.c
	$(CC) $(MOD_CFLAGS) $(CFLAGS) -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -lglib-2.0  -I../include -I../include/naemon $(LIBS) -o alerta-neb.o alerta-neb.c $(MOD_LDFLAGS) $(LDFLAGS) $(LIBS)

install:
	[ -d /usr/lib/nagios ] || mkdir /usr/lib/nagios
	install -m 0644 alerta-neb.o /usr/lib/nagios

clean:
	rm -f core *.o
	rm -f *~ *.*~
