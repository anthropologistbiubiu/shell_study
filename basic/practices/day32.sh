#!/bin/bash



awk '{
  split($0,parts,".") 
  if (length(parts) != 4){
     print "err"
     next 
  }
  for (i in parts) {
   print i
   if ( parts[i] !~ /^[0-9]{1,3}$/ || parts[i] < 0 || parts[i] > 255 ){
      print "no"
      next 
   }
  }
  print "yes"
}' ip_match.txt
