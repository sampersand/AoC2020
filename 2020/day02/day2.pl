# Day 2, 2020.
# Some dude messed up their passwords and we had to fix it.

use v5.10;

open STDIN,'day2.txt'; # Omit if reading from stdin

               for(<>){m@^(\d(?#
              (# Please fix my #)
    +)-(?#   ./#  passwords!   /)    (\d+)\ 
    (.):@x  ;$t++if(substr($',$      1,1)eq
    $3)^$3                        eq substr
      $' ,$     2,1;$m=$1;$x=$2;$_=    $'
    ;$z=s/     (?#   Uhh ok?    #)   $3//gx
   ;+ $o        ++if grep{$_==$z}   $m .. $x
      }$                               ,=
     "\n"                             ;say
    $o  ,$                           t;  "\
   /X    X\                         'X    X"
