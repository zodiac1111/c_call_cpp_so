//test.c
#include "stdio.h"
#include "dlfcn.h"

#define SOFILE "./sec.so"
int (*f)();
int main()
{
	void *dp;
	dp=dlopen(SOFILE,RTLD_LAZY);
	f=dlsym(dp,"f");
	f();
	return 0;
}
