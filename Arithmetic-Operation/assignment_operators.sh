#!/bin/bash

a=5
((a +=3))
echo "a +=3: $a"
((a -=2))
echo " a-=2: $a"
((a *= 2))
echo "a *= 2: $a"
(( a /= 3))
echo "a /= 3: $a"
((a %=2))
echo "a %2= $a"