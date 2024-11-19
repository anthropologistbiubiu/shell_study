#!/bin/bash




grep -nir "ESTABLISHED" net.txt | awk  '{ print $5 }'   