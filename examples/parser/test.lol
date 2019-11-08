HAI 1.2
CAN HAS STDIO?
CAN HAS STRING?

BTW -----------------GLOBAL DECLARAION---------------------
I HAS A TOKEN ITZ ""        BTW TOKEN is YARN (string)                
I HAS A LINE ITZ ""         BTW LINE is YARN (string)              
I HAS A ERROR ITZ 0         BTW ERROR is NUMBR (integer)
I HAS A INDEX ITZ 0         BTW INDEX is NUMBR (integer)  
I HAS A ALLDONE ITZ 0
BTW ------------------------------------

BTW---Handle opening the file-----------
HOW IZ I readins
    I HAS A readFile ITZ I IZ STDIO'Z OPEN YR "input.txt" AN YR "r" MKAY
    I IZ STIOD'Z DIAF YR readFile MKAY
    O RLY?
        YA RLY
            VISIBLE "Ya suck, yer file didn't open"
        NO WAI
            VISIBLE "We're ready to go bois"
    OIC
    GTFO
IF U SAY SO
BTW--------------------------------------

HOW IZ I READIN
    VISIBLE "Gimme the string"
    GIMMEH LINE
    I HAS A length ITZ I IZ STRING'Z LEN YR LINE MKAY
    I HAS A CONTWOL ITZ 1
    IM IN YR LOOP UPPIN YR CONTWOL WILE DIFFRINT CONTWOL AN BIGGR OF CONTWOL AN length
        TOKEN R ""
        I IZ PAWSE MKAY
        BOTH SAEM ALLDONE AN 1, O RLY?
            YA RLY
             CONTWOL R 9999
             GTFO
        OIC
    IM OUTTA YR LOOP
    BOTH SAEM ERROR AN 1, O RLY?
            YA RLY, VISIBLE "Error meow-ists"
            NO WAI, VISIBLE "Meow clear"
        OIC
    GTFO
IF U SAY SO

HOW IZ I GETDATOKEN
    I HAS A length ITZ I IZ STRING'Z LEN YR LINE MKAY
    BOTH SAEM INDEX AN length, O RLY?
        YA RLY
            ALLDONE R 1
            GTFO
        NO WAI
            I HAS A char ITZ I IZ STRING'Z AT YR LINE AN YR INDEX MKAY
            INDEX R SUM OF INDEX AN 1
            TOKEN R char
            VISIBLE "<GETDATOKEN!> "
            VISIBLE TOKEN
            GTFO
    OIC
IF U SAY SO

HOW IZ I PAWSE              BTW Parse
    VISIBLE "<PAWSE> "
    I IZ GETDATOKEN MKAY
    I IZ EXP MKAY
    GTFO
IF U SAY SO

HOW IZ I EXP                BTW Expression
    VISIBLE "<EXPWASSION> "
    I IZ TERM MKAY
    I HAS A CONTWOL ITZ 1
    TOKEN, WTF?
        OMG "+"
            IM IN YR LOOP UPPIN YR CONTWOL WILE DIFFRINT CONTWOL AN SMALLR OF CONTWOL AN 0 BTW While's don't exist for conditional, you have to trick it!
                I IZ GETDATOKEN MKAY
                I IZ TERM MKAY
                VISIBLE TOKEN
                BOTH SAEM TOKEN AN "+", O RLY? BTW While conditional check
                    YA RLY, CONTWOL R 1
                    NO WAI, CONTWOL R -1
                OIC
            IM OUTTA YR LOOP
            GTFO BTW Break Case
    OIC BTW Break Switch
    GTFO
IF U SAY SO

HOW IZ I TERM
    VISIBLE "<TERM> "
    I IZ FAKTOR MKAY
    I HAS A CONTWOL ITZ 1
    TOKEN, WTF?
        OMG "*"
            IM IN YR LOOP UPPIN YR CONTWOL WILE DIFFRINT CONTWOL AN SMALLR OF CONTWOL AN 0
                I IZ GETDATOKEN MKAY
                I IZ FAKTOR MKAY
                BOTH SAEM TOKEN AN "*", O RLY?
                    YA RLY, CONTWOL R 1
                    NO WAI, CONTWOL R -1
                OIC
            IM OUTTA YR LOOP
            GTFO
    OIC
    GTFO
IF U SAY SO

HOW IZ I FAKTOR
    VISIBLE "<FAKTOR> "
    TOKEN, WTF?
		OMG "("
			I IZ GETDATOKEN MKAY
            I IZ EXP MKAY
            TOKEN, WTF?
				OMG ")"
					I IZ GETDATOKEN MKAY
					GTFO
				OMGWTF
					ERROR R 1
					GTFO
		OIC
		GTFO
		OMGWTF BTW Base Case
			I IZ NUMBARZ MKAY
			GTFO
		OIC
    GTFO
IF U SAY SO

HOW IZ I NUMBARZ
    VISIBLE "<NUMBAR> "
    I IZ DIGITZ MKAY
    TOKEN, WTF?
		OMG "1"
			I IZ DIGITZ MKAY
			GTFO
		OMG "2"
			I IZ DIGITZ MKAY
			GTFO
		OMG "3"
			I IZ DIGITZ MKAY
			GTFO
		OMG "4"
			I IZ DIGITZ MKAY
			GTFO
		OMG "5"
			I IZ DIGITZ MKAY
			GTFO
		OMG "6"
			I IZ DIGITZ MKAY
			GTFO
		OMG "7"
			I IZ DIGITZ MKAY
			GTFO
		OMG "8"
			I IZ DIGITZ MKAY
			GTFO
		OMG "9"
			I IZ DIGITZ MKAY
			GTFO
		OMGWTF
			GTFO
	OIC
    GTFO
IF U SAY SO

BTW DONE
HOW IZ I DIGITZ
	TOKEN, WTF?
		OMG "1"
			VISIBLE "<DIGITZ> "
			I IZ GETDATOKEN MKAY
			GTFO
		OMG "2"
			VISIBLE "<DIGITZ> "
			I IZ GETDATOKEN MKAY
			GTFO
		OMG "3"
			VISIBLE "<DIGITZ> "
			I IZ GETDATOKEN MKAY
			GTFO
		OMG "4"
			VISIBLE "<DIGITZ> "
			I IZ GETDATOKEN MKAY
			GTFO
		OMG "5"
			VISIBLE "<DIGITZ> "
			I IZ GETDATOKEN MKAY
			GTFO
		OMG "6"
			VISIBLE "<DIGITZ> "
			I IZ GETDATOKEN MKAY
			GTFO
		OMG "7"
			VISIBLE "<DIGITZ> "
			I IZ GETDATOKEN MKAY
			GTFO
		OMG "8"
			VISIBLE "<DIGITZ> "
			I IZ GETDATOKEN MKAY
			GTFO
		OMG "9"
			VISIBLE "<DIGITZ> "
			I IZ GETDATOKEN MKAY
			GTFO
		OMG "0"
			VISIBLE "<DIGITZ> "
			I IZ GETDATOKEN MKAY
			GTFO
		OMGWTF
			ERROR R 1
			GTFO
	OIC
    GTFO
IF U SAY SO

I IZ READIN MKAY
KTHXBYE
