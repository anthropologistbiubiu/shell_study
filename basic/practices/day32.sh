#!/bin/bash


# 在 awk 中，使用 for (i in array) 遍历数组时，遍历的顺序不是按照索引的自然顺序（如1, 2, 3, 4），而是由内部的实现机制决定的。具体而言，awk 使用哈希表存储数组，而 for (i in array) 遍历的是哈希表中的键。因此，遍历顺序可能看起来是随机的，或者跟我们预期的顺序不同。

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
