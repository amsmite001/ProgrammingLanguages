#!/usr/bin/env lci

HAI 1.3
BTW Complex Nums

HOW IZ I SQUARENUM YR N
	FOUND YR PRODUKT OF N AN N
IF U SAY SO


BTW Z = X + Yi
OH HAI IM COMPLEX
	I HAS A X
	I HAS A Y
	
	
	HOW IZ I INITIALIZE YR x AN YR y
		ME'Z X R x
		ME'Z Y R y
	IF U SAY SO
	
	
	HOW IZ I SQUARE
		BTW This Outputs a new complex number.
        I HAS A x ITZ ME'Z X
		I HAS A y ITZ ME'Z Y
		I HAS A XS
		XS R I IZ SQUARENUM YR x MKAY
		I HAS A YS
		YS R I IZ SQUARENUM YR y MKAY
		I HAS A TEMPX
		TEMPX R DIFF OF XS AN YS
		
		I HAS A TEMPY
		TEMPY R PRODUKT OF x AN y
		TEMPY R PRODUKT OF 2 AN TEMPY
		
		I HAS A output ITZ LIEK A COMPLEX
		output IZ INITIALIZE YR TEMPX AN YR TEMPY MKAY
		FOUND YR output

IF U SAY SO
	
	
	HOW IZ I SHOWED
		VISIBLE ME'Z X
		VISIBLE ME'Z Y
	IF U SAY SO
	
KTHX


BTW Here's some testing 

BTW This creates a complex number, test:
I HAS A test ITZ LIEK A COMPLEX 
BTW This initializes the complex number: test = 2 + i
test IZ INITIALIZE YR 2.0 AN YR 1.0 MKAY
test IZ SHOWED MKAY

BTW temp will store test squared
I HAS A temp ITZ LIEK A COMPLEX
temp R test IZ SQUARE MKAY 
temp IZ SHOWED MKAY

BTW (2+i)^2 = 3 + 4i

KTHXBYE 
