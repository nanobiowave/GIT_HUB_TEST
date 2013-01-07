/*********************************************/
/* compute1.c: Enter five integer numbers,   */
/* add all five integers to compute sum,     */
/* divide sum by five to compute average,    */
/* and print the sum and average results.    */
/*********************************************/

#include <stdio.h>

int main()
{
  int a,b,c,d,e,sum,avg;
  printf("Enter five integers seperated by a space: ");
  scanf( "%d %d %d %d %d", &a, &b, &c, &d, &e );
  sum = (a+b+c+d+e);
  avg = (sum / 5);
  printf("The sum of the five integers is: %d\n", sum);
  printf("The average of the five integers is: %d\n", avg);

  return 0;
}

