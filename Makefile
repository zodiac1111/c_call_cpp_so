so1:
	g++ -shared -o libmy.so firstso.cpp
so2:
	gcc -shared -o sec.so secso.cpp -L. -lmy
test:
	gcc -o myapp test.c ./sec.so ./libmy.so -ldl
	export LD_LIBRARY_PATH=.
