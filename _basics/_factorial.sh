#!/usr/bin/env bash

set -x 

function solveForFactorial 
{
  if [ $1 == 0]; then
    return 0
  else
    return $(bc $1  * $1 - 1) 
  fi

}
solveForFactorial

