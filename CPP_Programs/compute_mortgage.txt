//********************************************************************************************
//                                                                                           *
//  compute_mortgage.cpp - Compute Monthly Payment                                           *
//  given INT_RATE, LOAN_YEARS, and LOAN_AMT                                                 * 
//  and print summary to screen and the logfile                                              *
//  compute_mortgage_log.txt                                                                 * 
//                                                                                           * 
//********************************************************************************************
//                                                                                           *
//  Example:                                                                                 *
//                                                                                           *
//  http://en.wikipedia.org/wiki/Fixed-rate_mortgage                                         *                                      *
//                                                                                           *
//  MONTHLY_PMT =((6.5/100/12)/(1-(1+6.5/100/12)^(-30*12)))*200000                           *
//                                                                                           *
//  MONTHLY_PMT = ((INT_RATE/100/12)/(1-(1+(INT_RATE/100/12)^(-LOAN_YEARS*12)))*LOAN_AMT     *
//                                                                                           * 
//********************************************************************************************
//                                                                                           *
// Example Command Line: g++ compute_mortgage.cpp -o compute_mortgage                        *
//                                                                                           *
//********************************************************************************************
      
#include <iostream>
#include <fstream> 
#include <cmath> 
using namespace std;

int main ()
{

//////////////////////////
//
// declaring variables:
//
//////////////////////////
    
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

//////////////////////////////////////////////////////
//
// open logfile compute_mortgage_log.txt 
//
//////////////////////////////////////////////////////
   
  ofstream pFile; 
  pFile.open ("compute_mortgage_log.txt");
 
//////////////////////////////////////////////////////
//
// input LOAN_AMT, LOAN_YEARS, INT_RATE 
//
//////////////////////////////////////////////////////
   
  cout << "Enter Loan Amount - Example: 375000 : ";
  cin >> LOAN_AMT;
  
  cout << "Enter Loan Years - Example: 30 : ";
  cin >> LOAN_YEARS; 
   
  cout << "Enter Interest Rate - Example: 3.25 : ";
  cin >> INT_RATE;
   
////////////////////////////////////////////////////////////////////
//
// output LOAN_AMT, LOAN_YEARS, INT_RATE to screen and logfile
//
////////////////////////////////////////////////////////////////////
          
cout << "----------------------------------------------------------------- \n";
cout << "      Log File Name: compute_mortgage_log.txt:                    \n";
cout << "----------------------------------------------------------------- \n";
        
cout << "LOAN_AMT = " << LOAN_AMT << " LOAN_YEARS = " << LOAN_YEARS << " INT_RATE = " << INT_RATE << " \n"; 
            
pFile << "----------------------------------------------------------------- \n";  
pFile << "      Log File Name: compute_mortgage_log.txt:                    \n"; 
pFile << "----------------------------------------------------------------- \n";  
  
pFile << "LOAN_AMT = " << LOAN_AMT << " LOAN_YEARS = " << LOAN_YEARS << " INT_RATE = " << INT_RATE << " \n"; 
         
////////////////////////////////////////////////////////
//
// Calculate monthly mortgage payment MONTHLY_PMT 
//
////////////////////////////////////////////////////////
  
  LOAN_AMT_F = (float) LOAN_AMT;
  LOAN_YEARS_F = (float) LOAN_YEARS; 
  LOAN_MONTHS_N = LOAN_YEARS_F * 12.00 * (-1.00);
  INT_RATE_CALC = (INT_RATE/100.00/12.00);
  ONE_PLUS_INT_RATE_CALC = (1.00 + INT_RATE_CALC);
  POW_TEMP = pow(ONE_PLUS_INT_RATE_CALC, LOAN_MONTHS_N); 
      
  MONTHLY_PMT = LOAN_AMT * (INT_RATE_CALC/(1.00-POW_TEMP));  
   
//////////////////////////////////////////////////////////////////////////////////////////
//
// MONTHLY_PMT = ((INT_RATE/100/12)/(1-(1+(INT_RATE/100/12)^(-LOAN_YEARS*12)))*LOAN_AMT; 
//
//////////////////////////////////////////////////////////////////////////////////////////
//  
// Output monthly payment MONTHLY_PMT to screen and logfile 
//
//////////////////////////////////////////////////////////////////////////////////////////

 
cout << "Monthly Payment = " << MONTHLY_PMT << " \n"; 
cout << "----------------------------------------------------------------- \n";

             
pFile << "Monthly Payment = " << MONTHLY_PMT << " \n"; 
pFile << "----------------------------------------------------------------- \n";
  
      
//////////////////////////////////////////////
//
// close logfile compute_mortgage_log.txt 
// 
//////////////////////////////////////////////
    
  pFile.close();
  
//////////////////////////////
//
// Terminate the program:
//
//////////////////////////////

  return 0;

}

//////////////////////////////
//
// END of C++ Program File 
//
//////////////////////////////
  

// --------------------------------------------------------------------------------  

     