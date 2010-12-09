all: libmlockall.so.0.0

libmlockall.so.0.0: Makefile libmlockall.c
	${CC} -fPIC -shared -Wl,-soname,libmlockall.so.0 -o libmlockall.so.0.0 -lc libmlockall.c  # -Wl,-export-dynamic
	ln -fs libmlockall.so.0.0 libmlockall.so
	ln -fs libmlockall.so.0.0 libmlockall.so.0
clean:
	rm -Rf *.o lib*.so*

# for checkinstall
install:
	install lib*.so* /usr/lib/
	install mlockall /usr/bin/
