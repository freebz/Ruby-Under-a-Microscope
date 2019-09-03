// 목록 8-5: while 루프를 이용해서 1부터 10까지 더하기

#include <stdio.h>
main()
{
  int i, sum;
  i = 1;
  sum = 0;
  while (i <= 10) {
    sum = sum + i;
    i++;
  }
  printf("Sum: %d\n", sum);
}
