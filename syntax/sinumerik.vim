" Vim syntax file
" Language: Sinumerik NC 

" Quit when a (custom syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

syn case ignore

syn match sinumerikComment ";.*"

syn keyword sinumerikType INT REAL STRING BOOL CHAR FRAME

syn cluster sinumerikNonTop contains=sinumerikAddressG,sinumerikAddressM,sinumerikAddressAxis,sinumerikAddressSpeed,sinumerikAddressTool,sinumerikAddressMulti,sinumerikAddressBlock

syn match sinumerikConstantNumber "\<[-+]\?\(\d*[.]\d\+\|\d\+\)\>"
syn region sinumerikConstantString  start=/"/ end=/"/
syn match sinumerikScalarOperator "[-+*/]\|<<"
syn match sinumerikLogicalOperator "<=?\|>=?\|==\|<>"
syn match sinumerikRegister "\<R\d\+"
syn region sinumerikRegister start="\<R[[]"he=e-1 end="[]]"
syn match sinumerikSystemVariable "$[A-Z0-9_]\+" nextgroup=sinumerikIndex
syn region sinumerikSystemVariable start="$[A-Z0-9_]\+\s*[[]"he=e-1 end="[]]"

syn keyword sinumerikKeyword ABS AC ACC ACCLIMA ACN ACOS ACP ACTBLOCNO ADDFRAME ADIS ADISPOS ADISPOSA ALF AMIRROR AND ANG AP APR APRB APW APWB APWP APX AR AROT AROTS
syn keyword sinumerikKeyword SL ASCALE ASIN ASPLINE ATAN2 ATOL ATRANS AX AXCTSWE AXCTSWED AXIS AXNAME AXSTRING AXTOCHAN AXTOSPI B_AND B_OR B_NOT B_XOR BAUTO BLOCK
syn keyword sinumerikKeyword BLSYNC BNAT BOUND BRISK BRISKA BSPLINE BTAN CAC CACN CACP CALCDAT CALCPOSI CALL CALLPATH CANCEL CASE CDC CDOF CDOF2 CDON CFC CFIN CFINE
syn keyword sinumerikKeyword CFTCP CHAN CHANDATA CHECKSUM CHF CHKDM CHKDNO CHR CIC CIP CLEARM CLRINT CMIRROR COARSEA COMPCAD COMPCURV COMPLETE COMPOF COMPON CONTDCON
syn keyword sinumerikKeyword CONTPRON CORROF COS COUPDEF COUPDEL COUPOF COUPOFS COUPON COUPONC COUPRES CP CPRECOF CPRECON CPROT CPROTDEF CR CROT CROTS CRPL CSCALE
syn keyword sinumerikKeyword CSPLINE CT CTAB CTABDEF CTABDEL CTABEND CTABEXISTS CTABFNO CTABFPOL CTABFSEG CTABID CTABINV CTABISLOCK CTABLOCK CTABMEMTYP CTABMPOL
syn keyword sinumerikKeyword CTABMSEG CTABNO CTABNOMEM CTABPERIOD CTABPOL CTABPOLID CTABSEG CTABSEGID CTABSEV CTABSSV CTABTEP CTABTEV CTABTMAX CTABTMIN CTABTSP
syn keyword sinumerikKeyword CTABTSV CTABUNLOCK CTOL CTRANS CUT2D CUT2DF CUT3DC CUT3DCC CUT3DCCD CUT3DF CUT3DFF CUT3DFS CUTCONOF CUTCONON CUTMOD DAC DC DEF DEFINE
syn keyword sinumerikKeyword DEFAULT DELAYFSTON DELAYFSTOF DELDL DELDTG DELETE DELTOOLENV DIACYCOFA DIAM90 DIAM90A DIAMCHAN DIAMCHANA DIAMCYCOF DIAMOF DIAMOFA DIAMON
syn keyword sinumerikKeyword DIAMONA DIC DILF DISABLE DISC DISCL DISPLOF DISPLON DISPR DISR DITE DITS DIV DL DO DRFOF DRIVE DRIVEA DYNFINISH DYNNORM DYNPOS DYNROUGH
syn keyword sinumerikKeyword DYNSEMIFIN DZERO EAUTO EGDEF EGDEL EGOFC EGOFS EGON EGONSYN EGONSYNE ELSE ENABLE ENAT ENDFOR ENDIF ENDLABEL ENDLOOP ENDPROC ENDWHILE ETAN
syn keyword sinumerikKeyword EVERY EX EXECSTRING EXECTAB EXECUTE EXP EXTCALL EXTERN FA FAD FB FCTDEF FCUB FD FDA FENDNORM FFWOF FFWON FGREF FGROUP FI FIFOCTRL
syn keyword sinumerikKeyword FILEDATE FILEINFO FILESIZE FILESTAT FILETIME FINEA FL FLIN FMA FNORM FOCOF FOCON FOR FP FPO FPR FPRAOF FPRAON FRC FRCM FROM FTOC
syn keyword sinumerikKeyword FTOCOF FTOCON FXS FXST FXSW FZ GEOAX GET GETACTT GETACTTD GETD GETDNO GETEXET GETFREELOC GETSELT GETT GETTCOR GETTENV GOTO GOTOB GOTOC
syn keyword sinumerikKeyword GOTOF GOTOS GP GWPSOF GWPSON HOLES1 HOLES2 IC ICYCOF ICYCON ID IDS IF INDEX INIPO INIRE INICF INIT INITIAL INTERSEC INVCCW INVCW
syn keyword sinumerikKeyword INVFRAME IP IPOBRKA IPOENDA IPTRLOCK IPTRUNLOCK ISAXIS ISD ISFILE ISNUMBER ISOCALL ISVAR JERKA JERKLIM JERKLIMA KONT KONTC KONTT LEAD
syn keyword sinumerikKeyword LEADOF LEADON LENTOAX LFOF LFON LFPOS LFTXT LFWP LIFTFAST LIMS LLI LN LOCK LONGHOLE LOOP MASLDEF MASLDEL MASLOF MASLOFS MASLON MATCH
syn keyword sinumerikKeyword MAXVAL MCALL MEAC MEAFRAME MEAS MEASA MEASURE MEAW MEAWA MI MINDEX MINVAL MIRROR MMC MOD MODAXVAL MOV MSG MVTOOL NCK NEWCONF NEWT NORM
syn keyword sinumerikKeyword NOT NPROT NPROTDEF NUMBER OEMIPO1 OEMIPO2 OF OFFN OMA1 OMA2 OMA3 OMA4 OMA5 OR ORIAXES ORIAXPOS ORIC ORICONCCW ORICONCW ORICONIO ORICONTO
syn keyword sinumerikKeyword ORICURVE ORID ORIEULER ORIMKS ORIPATH ORIPATHS ORIPLANE ORIRESET ORIROTA ORIROTC ORIROTR ORIROTT ORIRPY ORIRPY2 ORIS ORISOF ORISON
syn keyword sinumerikKeyword ORIVECT ORIVIRT1 ORIVIRT2 ORIVIRT3 ORIWKS OS OSBOSC OSCILL OSCTRL OSD OSE OSNSC OSOF OSP1 OSP2 OSS OSSE OST OST1 OST2 OTOL OVR OVRA
syn keyword sinumerikKeyword OVRRAP PAROT PAROTOF PCALL PDELAYOF PDELAYON PHU PL PM PO POCKET3 POCKET4 POLF POLFA POLFMASK POLFMLIN POLY POLYPATH PON PONS POS POSA
syn keyword sinumerikKeyword POSM POSP POSRANGE POT PR PREPRO PRESETON PRIO PROC PTPPTPG0 PUNCHACC PUTFTOC PUTFTOCF PW QECLRNOF QECLRNON QU RAC RDISABLE READ REDEF
syn keyword sinumerikKeyword RELEASE REP REPEAT REPEATB REPOSA REPOSH REPOSHA REPOSL REPOSQ REPOSQ RESET RESETMON RET RIC RINDEX RMB RME RMI RMN RND RNDM ROT ROTS
syn keyword sinumerikKeyword ROUND ROUNDUP RP RPL RT RTLIOF RTLION SAVE SBLOF SBLON SC SCALE SCC SCPARA SD SEFORM SET SETAL SETDNO SETINT SETM SETMS SETMTH SETPIECE
syn keyword sinumerikKeyword SETTA SETTCOR SETTIA SF SIN SIRELAY SIRELIN SIRELOUT SIRELTIME SLOT1 SLOT2 SOFT SOFTA SON SONS SPATH SPCOF SPCON SPI SPIF1 SPIF2
syn keyword sinumerikKeyword SPLINEPATH SPN SPOF SPOS SPOSA SPP SQRT SR SRA ST STA START STARTFIFO STAT STOLF STOPFIFO STOPRE STOPREOF STRINGFELD STRINGIS
syn keyword sinumerikKeyword STRINGVAR STRLEN SUBSTR SUPA SVC SYNFCT SYNR SYNRW SYNW TAN TANG TANGDEL TANGOF TANGON TCA TCARR TCI TCOABS TCOFR TCOFRX TCOFRY TCOFRZ
syn keyword sinumerikKeyword THETA TILT TLIFT TMOF TMON TO TOFF TOFFL TOFFOF TOFFON TOFFR TOFRAME TOFRAMEX TOFRAMEY TOFRAMEZ TOLOWER TOOLENV TOROT TOROTOF TOROTX
syn keyword sinumerikKeyword TOROTY TOROTZ TOUPEPER TOWBCS TOWKCS TOWMCS TOWSTD TOWTCS TOWWCS TR TRAANG TRACON TRACYL TRAFOOF TRAILOF TRAILON TRANS TRANSMIT TRAORI
syn keyword sinumerikKeyword TRUE TRUNC TU TURN ULI UNLOCK UNTIL UPATH VAR VELOLIM VELOLIMA WAITC WAITE WAITENV WAITM WAITMC WAITP WAITS WALIMOF WALIMON WHEN WHENEVER
syn keyword sinumerikKeyword WHILE WRITE WRTPR XOR
syn match sinumerikKeyword "CYCLE\d\+"
syn match sinumerikKeyword "WALCS\d"

syn match sinumerikCommands "\<\([ABCDFGHIJKMNSTXYZ]\s*\([-+]\?\(\d*[.]\d\+\|\d\+[.]\d*\|\d\+\)\)\)\{1,}\>" contains=sinumerikAddressG,sinumerikAddressM,sinumerikAddressAxis,sinumerikAddressSpeed,sinumerikAddressTool,sinumerikAddressBlock
syn match sinumerikCommand "[A-Z]\s*=\@=" contains=sinumerikAddressG,sinumerikAddressM,sinumerikAddressAxis,sinumerikAddressSpeed,sinumerikAddressTool,sinumerikAddressBlock
syn match sinumerikCommand "[A-Z]\{2,}\s*=\@=" contains=sinumerikAddressMulti
syn match sinumerikAddressG "G\d\+\([.]\d\+\)\?" contained
syn match sinumerikAddressG "G\s*=" contained
syn match sinumerikAddressM "M\d\+" contained
syn match sinumerikAddressM "M\s*=" contained
syn match sinumerikAddressAxis "[ABCIJKXYZ]\([-+]\?\(\d*[.]\d\+\|\d\+[.]\d*\|\d\+\)\)" contained
syn match sinumerikAddressAxis "[ABCIJKXYZ]\s*=\s*" contained
syn match sinumerikAddressSpeed "[FS]\d\+" contained
syn match sinumerikAddressSpeed "[FS]\s*=" contained
syn match sinumerikAddressTool "[DHT]\d\+" contained
syn match sinumerikAddressTool "[DHT]\s*=" contained
syn keyword sinumerikAddressMulti SPOS OVR contained
syn match sinumerikAddressBlock "N\d\+" contained
syn region sinumerikSubexpression start="(" end=")"

syn region sinumerikFunctionCall matchgroup=sinumerikFunction start="\<[A-Z][A-Z]\+(" end=")"

syn match sinumerikLabel "[A-Z][A-Z][A-Z0-9_]*:"
syn match sinumerikLabel "_[A-Z][A-Z0-9_]*:"

hi def link sinumerikType Type
hi def link sinumerikKeyword Statement
hi def link sinumerikComment Comment
hi def link sinumerikAddressG Macro
hi def link sinumerikAddressM Macro
hi def link sinumerikAddressAxis Constant
hi def link sinumerikAddressSpeed Special
hi def link sinumerikAddressTool Special
hi def link sinumerikAddressMulti Special
hi def link sinumerikAddressBlock Typedef
hi def link sinumerikConstantNumber Number
hi def link sinumerikConstantString String
hi def link sinumerikRegister Identifier
hi def link sinumerikFunction Function
hi def link sinumerikLabel Typedef
hi def link sinumerikSystemVariable Identifier
hi def link sinumerikScalarOperator Operator
hi def link sinumerikLogicalOperator Operator

" syn keyword sinumerikKeyword proc save displof
" syn keyword sinumerikKeyword if else endif
" syn keyword sinumerikKeyword goto gotof gotob
" syn keyword sinumerikKeyword stopre stopfifo startfifo
" syn keyword sinumerikKeyword def supa meas meaw ret int real string diamof
" syn keyword sinumerikKeyword and or not
" syn keyword sinumerikKeyword trans rot scale mirror atrans arot ascale amirror
" syn keyword sinumerikKeyword cfc cftcp
" syn keyword sinumerikKeyword brisk soft
" syn keyword sinumerikKeyword ffwof ffwon
" syn keyword sinumerikKeyword extcall call mcall
" syn keyword sinumerikKeyword compon compoff compcurv compcad
" syn keyword sinumerikFunction abs trunc msg sin cos tan asin acos atan2 sqrt pot ln exp
" syn keyword sinumerikFunction ac ic acn

let b:current_syntax = "sinumerik"
