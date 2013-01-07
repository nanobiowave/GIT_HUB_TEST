/**************************************************/
/* compute1logit.c: Enter five integer numbers,   */
/* add all five integers to compute sum,          */
/* divide sum by five to compute average,         */
/* and print the sum and average results          */
/* to the screen and to compute1_log.txt.         */
/**************************************************/

#include <stdio.h>

int main()
{
  FILE * pFile;
  int a,b,c,d,e,sum,avg;

  pFile = fopen ("compute1_log.txt","w");


  printf("Enter five integers seperated by a space: \n");

  fprintf(pFile, "------------------------------------------------------- \n");
  fprintf(pFile, "        Filename: compute1_log.txt:                     \n");
  fprintf(pFile, "------------------------------------------------------- \n");
  fprintf(pFile, "Enter five integer numbers.                             \n");
  fprintf(pFile, "Add all five integers to compute sum.                   \n");
  fprintf(pFile, "Divide sum by five to compute average.                  \n");
  fprintf(pFile, "Print the sum and average results to compute1_log.txt.  \n");
  fprintf(pFile, "------------------------------------------------------- \n");

  fprintf(pFile, "Enter five integers seperated by a space: \n");

  scanf( "%d %d %d %d %d", &a, &b, &c, &d, &e );

  fprintf(pFile, "a = %d b = %d c = %d d = %d e = %d \n", a,b,c,d,e);

  sum = (a+b+c+d+e);
  avg = (sum / 5);
  
  printf("The sum of the five integers is: %d\n", sum);
  printf("The average of the five integers is: %d\n", avg);
  
  fprintf(pFile, "The sum of the five integers is: %d\n", sum);
  fprintf(pFile, "The average of the five integers is: %d\n", avg);
     
  fprintf(pFile, "------------------------------------------------------- \n");
    
  fclose (pFile); 
  return 0;
}

