/**************************************************/
/*                                                */
/* compute_mortgage.c - Compute Monthly Payment   */ 
/* given INT_RATE, LOAN_YEARS, and LOAN_AMT       */ 
/* and print summary to screen and the logfile    */
/* compute_mortgage_log.txt                       */ 
/*                                                */ 
/********************************************************************************************/
/*                                                                                          */
/* Example:                                                                                 */
/*                                                                                          */
/* MONTHLY_PMT =((6.5/100/12)/(1-(1+6.5/100/12)^(-30*12)))*200000                           */
/*                                                                                          */
/* MONTHLY_PMT = ((INT_RATE/100/12)/(1-(1+(INT_RATE/100/12)^(-LOAN_YEARS*12)))*LOAN_AMT     */
/*                                                                                          */ 
/********************************************************************************************/
/*                                                                                          */
/* Example Command Line: gcc compute_mortgage.c -o compute_mortgage                         */
/*                                                                                          */
/********************************************************************************************/
  
#include <math.h>
#include <stdio.h>

int main()
{
  FILE * pFile;
    
  int LOAN_AMT; 
  float LOAN_AMT_F; 

  int LOAN_YEARS;
  float LOAN_YEARS_F;
   
  float LOAN_MONTHS_N;
 
  float INT_RATE;
  float INT_RATE_CALC;
  float ONE_PLUS_INT_RATE_CALC; 
  float POW_TEMP; 
 
  float MONTHLY_PMT;
 
  pFile = fopen ("compute_mortgage_log.txt","w");
  
  printf("Enter Loan Amount - Example: 375000 : \n"); 
  scanf( "%d", &LOAN_AMT );
 
  printf("Enter Loan Years - Example: 30 : \n"); 
  scanf( "%d", &LOAN_YEARS );

  printf("Enter Interest Rate - Example: 4.56 : \n"); 
  scanf( "%f", &INT_RATE );
  
  printf("----------------------------------------------------------------- \n");
  printf("          Filename: compute_mortgage_log.txt:                     \n");
  printf("----------------------------------------------------------------- \n");
  
  printf("LOAN_AMT = %d LOAN_YEARS = %d INT_RATE = %f \n", LOAN_AMT,LOAN_YEARS,INT_RATE);
    
  fprintf(pFile, "----------------------------------------------------------------- \n");
  fprintf(pFile, "          Filename: compute_mortgage_log.txt:                     \n");
  fprintf(pFile, "----------------------------------------------------------------- \n");
  
  fprintf(pFile, "LOAN_AMT = %d LOAN_YEARS = %d INT_RATE = %f \n", LOAN_AMT,LOAN_YEARS,INT_RATE);
   
  LOAN_AMT_F = (float) LOAN_AMT;
  LOAN_YEARS_F = (float) LOAN_YEARS; 
  LOAN_MONTHS_N = LOAN_YEARS_F * 12.00 * (-1.00);
  INT_RATE_CALC = (INT_RATE/100.00/12.00);
  ONE_PLUS_INT_RATE_CALC = (1.00 + INT_RATE_CALC);
  POW_TEMP = pow(ONE_PLUS_INT_RATE_CALC, LOAN_MONTHS_N); 
    
  MONTHLY_PMT = LOAN_AMT * (INT_RATE_CALC/(1.00-POW_TEMP));  
 
  /* MONTHLY_PMT = ((INT_RATE/100/12)/(1-(1+(INT_RATE/100/12)^(-LOAN_YEARS*12)))*LOAN_AMT; */
  
  printf("Monthly Payment = %f \n", MONTHLY_PMT); 
  printf("----------------------------------------------------------------- \n");
      
  fprintf(pFile, "Monthly Payment = %f \n", MONTHLY_PMT); 
  fprintf(pFile, "----------------------------------------------------------------- \n");
    
  fclose (pFile); 
  return 0;
}

