#include <cstdio>

typedef long long LL;

template<typename T>
void PrintFactor(T x) {
	if(0 == x) return;
	for(LL i = 2; i * i <= x; ++i) {
		int cnt = 0;
		while(0 == x % i) {
			x /= i;
			++cnt;
		}
		if(cnt) {
			printf("%lld", i);
			if(cnt > 1) {
				printf("^%d", cnt);
			}
			if(x > 1)
				printf(" * ");
		}
	}
	if(x > 1)printf("%lld", x);
	putchar('\n');
}

void run() {
	LL x;
	while(1) {
		scanf("%lld", &x);
		PrintFactor(x);
	}
}
void test(const char *s) {
	LL x;
	sscanf(s, "%llu", &x);
	PrintFactor(x);
}

int main(int argc, char **argv) {

	if (argc == 1) {
		run();
	} else if (argc == 2) {
		test(argv[1]);
	} else {
		printf("Usage: %s [num]\n", argv[0]);
	}

	return 0;
}

