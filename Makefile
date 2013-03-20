so1:
	g++ -shared -o libmy.so firstso.cpp
so2:
	gcc -shared -o sec.so secso.cpp -L. -lmy -Wl,-R.
test:
	gcc -o myapp test.c ./sec.so ./libmy.so -ldl -Wl,-R.
