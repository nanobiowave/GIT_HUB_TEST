#####################################################
#
print "\n";
print "Human Performance Metrics Scoreboard\n";
#
#####################################################

# Set Data Initially to establish writing data to a file
# and then implement as Option Menu in HTML later
# to build Human Performance Metrics Scoreboard database.
 
$weight_pounds = 225;

$time_1m_min = 15;
$time_2m_min = 30;
$time_3m_min = 45;
$time_4m_min = 60;
$time_5m_min = 75;
$time_6m_min = 90;
   
$time_5k_min = 50;
$time_10k_min = 100;
    
$time_1m_sec = 31;
$time_2m_sec = 32;
$time_3m_sec = 33;
$time_4m_sec = 34;
$time_5m_sec = 35;
$time_6m_sec = 36;
  
$time_5k_sec = 37;
$time_10k_sec = 38;
  
print "\n";
print "Weight = $weight_pounds lbs \n";
print "\n";
print "1 Mile Time = $time_1m_min Min $time_1m_sec Sec \n";
print "2 Mile Time = $time_2m_min Min $time_2m_sec Sec \n";
print "3 Mile Time = $time_3m_min Min $time_3m_sec Sec \n";
print "4 Mile Time = $time_4m_min Min $time_4m_sec Sec \n";
print "5 Mile Time = $time_5m_min Min $time_5m_sec Sec \n";
print "\n";
print "5K Time = $time_5k_min Min $time_5k_sec Sec \n";
print "10K Time = $time_10k_min Min $time_10k_sec Sec \n";
print "\n";
   
# write to a new or existing text file
open(TXT, ">scoreboard_display.txt"); 
    
print TXT "\n";
print TXT "Weight = $weight_pounds lbs \n";
print TXT "\n";
print TXT "1 Mile Time = $time_1m_min Min $time_1m_sec Sec \n";
print TXT "2 Mile Time = $time_2m_min Min $time_2m_sec Sec \n";
print TXT "3 Mile Time = $time_3m_min Min $time_3m_sec Sec \n";
print TXT "4 Mile Time = $time_4m_min Min $time_4m_sec Sec \n";
print TXT "5 Mile Time = $time_5m_min Min $time_5m_sec Sec \n";
print TXT "\n";
print TXT "5K Time = $time_5k_min Min $time_5k_sec Sec \n";
print TXT "10K Time = $time_10k_min Min $time_10k_sec Sec \n";
print TXT "\n";
  
close(TXT);
  
#####################################################
#
print "\n";
print "Human Performance Metrics Scoreboard\n";
#
#####################################################
 



















