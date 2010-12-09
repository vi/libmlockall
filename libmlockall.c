#include <stdio.h>
#include <sys/mman.h>

void __attribute__((constructor)) init() {
    if(mlockall(MCL_CURRENT|MCL_FUTURE)) {
	perror("mlockall");
    }
}
