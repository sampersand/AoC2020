000 CLEAR : HOME
010 REM Apple II BASIC
020 REM Solves https://adventofcode.com/2020/day/2
030 REM Run this on https://www.calormen.com/jsbasic/
040 REM I used these as reference:
050 REM https://www.calormen.com/jsbasic/reference.html
060 REM http://www.landsnail.com/a2ref.htm

100 REM Part 1
110 SM = 0
120 FOR DN = 1 TO 1000
130 GOSUB 1000 : REM Fetch the next line
140 CN = 0
150 FOR N = 1 TO LEN(P$)
160 IF ASC(P$) = CH THEN CN = CN + 1
170 P$ = RIGHT$(P$, LEN(P$) - 1)
180 NEXT N
190 IF MN <= CN AND CN <= MX THEN SM = SM + 1
200 NEXT DN
210 PRINT "Part1: SUM=" SM
220 GOTO 500

500 REM Part 2
510 RESTORE : REM Reset DATA counter so we can read again
520 SM = 0 : REM SUM = 0
530 FOR DN = 1 TO 1000
540 GOSUB 1000 : REM Fetch the next line
550 CN = 0
560 FOR N = 1 TO LEN(P$)
570 IF (N = MN OR N = MX) AND ASC(P$) = CH THEN CN = CN + 1
580 P$ = RIGHT$(P$, LEN(P$) - 1)
590 NEXT N
600 IF CN = 1 THEN SM = SM + 1
610 NEXT DN
620 PRINT "Part2: SUM=" SM
630 END

1000 REM Read a line from DATA, set the
1010 REM bounds to 'MN', 'MX', the char
1020 REM to 'CH', and password to 'P$'.
1030 READ P$
1040 MN=VAL(P$) : P$ = RIGHT$(P$, LEN(P$) - LEN(STR$(MN)) - 1)
1050 MX=VAL(P$) : P$ = RIGHT$(P$, LEN(P$) - LEN(STR$(MX)) - 1)
1060 CH=ASC(P$) : P$ = RIGHT$(P$, LEN(P$) - 3)
1070 RETURN


010005 REM DATA To be used
010000 DATA "1-2 x: xpxc"
010010 DATA "1-5 b: bwlbbbbcq"
010020 DATA "3-5 v: qvjjdhvl"
010030 DATA "9-12 t: ttfjvvtgxtctrntnhtt"
010040 DATA "3-4 r: rqjw"
010050 DATA "3-7 p: ppfpppppp"
010060 DATA "5-6 q: qqqqgq"
010070 DATA "7-10 v: gpvgmqkvxgbvs"
010080 DATA "4-12 b: kkdnrhwzbbbb"
010090 DATA "3-7 r: rrkwrshls"
010100 DATA "3-4 l: ldltwzclnrllhkb"
010110 DATA "4-6 m: mfcmmdvmmmm"
010120 DATA "6-16 c: ccccczcccccccccgcc"
010130 DATA "5-7 k: kkppkrr"
010140 DATA "2-5 p: bpppmpcjrgwp"
010150 DATA "8-14 c: dcwklzcckccwdw"
010160 DATA "4-7 j: qhjjjhsj"
010170 DATA "2-5 c: jcdclznbzb"
010180 DATA "7-8 x: xxxxxxxsxxxxlxxxxxx"
010190 DATA "6-7 s: rhsstssmvssss"
010200 DATA "8-16 j: rhsxwjrtpjjjjxhcjhx"
010210 DATA "13-14 q: lqmqqqzsvqqjqq"
010220 DATA "5-7 g: gggsfggj"
010230 DATA "15-16 s: ssssssssssssssxd"
010240 DATA "3-5 d: dmwsm"
010250 DATA "4-5 v: vbvvvg"
010260 DATA "5-6 f: jfzbgfp"
010270 DATA "1-4 k: qkkkk"
010280 DATA "11-15 l: lllllllllllllln"
010290 DATA "12-16 n: nfpnnnnnnhncnjnnls"
010300 DATA "6-8 l: llllllllll"
010310 DATA "13-15 p: pppppppppppphppp"
010320 DATA "4-9 k: bkvqvwkgk"
010330 DATA "1-3 j: jsrg"
010340 DATA "10-14 r: rrvfrvrrrrtrrmsr"
010350 DATA "2-4 r: tcfnd"
010360 DATA "5-6 t: ttwtjk"
010370 DATA "7-18 h: wjjfhphhbqlvqkhjwhk"
010380 DATA "6-9 p: phkkzvppppjpcpnfpsxt"
010390 DATA "5-6 f: ffffmfffffff"
010400 DATA "9-16 p: gbwsmxplndwmrpps"
010410 DATA "1-6 s: sczssw"
010420 DATA "5-14 t: ctxlqhrlvvdttwlnt"
010430 DATA "2-5 n: nndkqnnft"
010440 DATA "7-8 c: zclccrwc"
010450 DATA "4-11 q: pqrqdkpqbjshn"
010460 DATA "5-6 m: nmcmrbmfcgmfw"
010470 DATA "16-17 h: hhhhhhhxhhrhhhhhlh"
010480 DATA "5-6 v: vvvvvv"
010490 DATA "2-11 m: wpsmlpznxdkhs"
010500 DATA "3-4 s: sswf"
010510 DATA "2-3 s: hsbczzspqkwjr"
010520 DATA "4-7 s: zsjrrsvssss"
010530 DATA "11-16 j: hpjdcwpjjnjfgkjlxt"
010540 DATA "5-7 b: rcbbbbg"
010550 DATA "13-15 w: wwwwwwwwwwwwwwww"
010560 DATA "1-6 c: cccmgc"
010570 DATA "2-4 v: vvgv"
010580 DATA "4-5 m: mfmmhms"
010590 DATA "1-3 t: mntqgkdfjsxzptk"
010600 DATA "2-7 v: nvnqmvv"
010610 DATA "19-20 c: ccccccccccccccpcccfc"
010620 DATA "11-12 t: wttmnqtbkttc"
010630 DATA "3-5 p: ptpvp"
010640 DATA "1-11 l: lglwgtlqlnxl"
010650 DATA "4-8 m: mprmmmmwmmfmm"
010660 DATA "9-10 d: ddddddddxdd"
010670 DATA "16-20 r: rrrrrrrrrrrrrrrlrrrt"
010680 DATA "1-4 g: gggg"
010690 DATA "2-12 b: bczgbbbfbwbprbbbtb"
010700 DATA "2-7 n: nnnmnxkntwwxnr"
010710 DATA "14-18 z: tzzzqzzzlnpqzpzzkz"
010720 DATA "5-7 p: ppppmkp"
010730 DATA "9-14 c: vvcgvrxlccxvlpfml"
010740 DATA "2-3 l: jlzpf"
010750 DATA "3-5 p: pbpbp"
010760 DATA "9-13 j: jjjjjjjjjjjjj"
010770 DATA "5-7 k: fmckjkkklkxpf"
010780 DATA "5-6 d: ddddrd"
010790 DATA "9-10 s: sssnsgssbs"
010800 DATA "9-10 p: ppwvppbpptpp"
010810 DATA "1-8 z: kmfszzrx"
010820 DATA "9-10 v: vvjjvsklvdkrkvs"
010830 DATA "2-17 k: kkctmcfzhtvskxlkq"
010840 DATA "10-12 n: vjnndvnlgnhmfc"
010850 DATA "5-6 n: hnnnnntn"
010860 DATA "1-6 f: fptffkhhkktfbtst"
010870 DATA "4-6 k: kqnkjhhwqhpzb"
010880 DATA "6-12 r: rrrrrrrrrrrv"
010890 DATA "8-13 l: llllllllwlllllll"
010900 DATA "4-6 p: qxprzs"
010910 DATA "2-10 w: wswpdwwwrcth"
010920 DATA "4-6 n: gnnfnnnnnnn"
010930 DATA "10-14 s: ssssssprbfssssw"
010940 DATA "3-4 f: ftfk"
010950 DATA "6-16 x: cqxxqwrdxxxxsxbxxxxt"
010960 DATA "4-8 f: ffsqvfpm"
010970 DATA "8-11 t: ttztttttttnttt"
010980 DATA "13-15 q: qqnqqqqqqqqqqqq"
010990 DATA "2-3 w: wwww"
011000 DATA "2-8 n: ntnnnnnrnn"
011010 DATA "2-3 k: jkzkk"
011020 DATA "3-4 s: sscscp"
011030 DATA "14-19 g: gzggggggggggfgfgggqg"
011040 DATA "5-6 n: nnnnwlnn"
011050 DATA "11-12 b: bbmbbbbbbbxbbn"
011060 DATA "5-6 t: zntzfk"
011070 DATA "4-5 j: ljphjl"
011080 DATA "3-12 d: zndtlvdvvdzzn"
011090 DATA "7-8 h: hhhhhhhwhh"
011100 DATA "12-13 s: sssssshssxssss"
011110 DATA "4-5 h: nhsxxmh"
011120 DATA "7-9 f: fzfkffffsfxn"
011130 DATA "1-8 c: cccfcpccmhcch"
011140 DATA "1-2 d: kfdwwm"
011150 DATA "13-14 l: llllllllllllcll"
011160 DATA "2-5 p: jpxdpkg"
011170 DATA "2-4 h: hvhbmhhhhhnh"
011180 DATA "5-9 g: ngqgtqtggdgg"
011190 DATA "15-17 b: brhlrjflddssrrjxb"
011200 DATA "10-15 v: vkfvvqtcxvvvtvcbvv"
011210 DATA "1-3 g: pvkqsgzggg"
011220 DATA "7-8 j: jjjjjjbjj"
011230 DATA "3-4 w: jwrw"
011240 DATA "4-7 c: mhcmkcjrpncxmcrccbc"
011250 DATA "9-12 q: qqqqqqqqqqqs"
011260 DATA "13-16 n: nwngndnnnnnnnnnnnn"
011270 DATA "3-4 b: fjbbb"
011280 DATA "8-9 d: jdfdsqnmdwfdnddkd"
011290 DATA "1-4 f: ggfwgbfhvs"
011300 DATA "4-5 g: gggvg"
011310 DATA "8-12 x: gxhxxxxkxzmfxxx"
011320 DATA "1-5 q: dqqhq"
011330 DATA "3-9 m: mmdmmmzmmp"
011340 DATA "1-2 l: llll"
011350 DATA "6-8 q: qjwhqqhpkbzppc"
011360 DATA "3-10 m: mmcjgrtzmmdmmm"
011370 DATA "2-4 q: cxvq"
011380 DATA "11-13 v: fvvvvvvvvvvvv"
011390 DATA "7-13 b: bbbgbnbkbkbrldbbtc"
011400 DATA "14-16 m: wmmmmmzxrmmjmwmh"
011410 DATA "6-10 b: bwvwbbvshbgtbsrlwbzt"
011420 DATA "6-8 q: qdwhcgpqxw"
011430 DATA "16-17 l: llllbjlrllllcbdhllpl"
011440 DATA "3-4 m: mmmrv"
011450 DATA "7-8 m: mhjnnchg"
011460 DATA "12-13 p: ppppppppppppt"
011470 DATA "1-4 s: sssx"
011480 DATA "1-2 d: xmpdq"
011490 DATA "10-11 x: xxxxxxxxxbbx"
011500 DATA "2-4 s: lxds"
011510 DATA "1-4 b: jbsxbbmbbj"
011520 DATA "6-8 q: qqqqqqblqq"
011530 DATA "15-16 q: qqqqqwzqqqqqnqqqqfq"
011540 DATA "5-7 s: fzvsssr"
011550 DATA "6-7 l: lncbgqr"
011560 DATA "7-8 s: ssssssvs"
011570 DATA "3-5 r: rbrjt"
011580 DATA "3-8 j: ksjjtvnjbjppjjjl"
011590 DATA "6-10 s: sszlkrsssss"
011600 DATA "1-4 z: znzfpz"
011610 DATA "7-11 m: dfkcbxmxmnmmtvmtdn"
011620 DATA "6-9 h: hlhhkhhhq"
011630 DATA "8-9 p: ppppppppvp"
011640 DATA "6-9 c: cccgccccmcch"
011650 DATA "5-8 g: bgkggjgtvggn"
011660 DATA "3-4 x: xxhk"
011670 DATA "10-12 h: hhhhhhhhhlhhhhdnh"
011680 DATA "5-6 j: zjjsjn"
011690 DATA "9-14 s: ksclwttsmpjtds"
011700 DATA "6-7 l: gtdcblql"
011710 DATA "1-4 d: dkndjkcd"
011720 DATA "1-6 k: kkkkkckmc"
011730 DATA "10-12 x: xxxxxxxxxrxl"
011740 DATA "2-5 v: fxdjtv"
011750 DATA "3-5 q: pjmkqdmqnzqppr"
011760 DATA "5-8 t: xtgtgtcht"
011770 DATA "6-11 j: nftjzjmfljqjrc"
011780 DATA "6-9 g: rskgggmgmwjggggvgb"
011790 DATA "11-12 v: vkvdmvdvvvdv"
011800 DATA "15-16 z: zzzzzzzzzzzzzzgxz"
011810 DATA "13-17 v: vvvvvvvvvvvvvvvvnv"
011820 DATA "9-14 j: clrfkrwhjtvzvqqj"
011830 DATA "1-12 l: lljljznslllffhblz"
011840 DATA "4-7 c: cccgcxclc"
011850 DATA "6-11 z: tbxqrzzbwbr"
011860 DATA "18-19 m: jmbmmqmshmczlphfgmf"
011870 DATA "1-5 s: ssvsq"
011880 DATA "4-5 k: kkkkw"
011890 DATA "4-7 f: fcqffxff"
011900 DATA "3-8 f: fffzthzf"
011910 DATA "9-12 v: vvvvvvvvvvvmvv"
011920 DATA "14-17 f: ftflcfffjtjrvfkffmvf"
011930 DATA "4-7 n: pnmnxnqqjp"
011940 DATA "6-7 r: rrrkrmr"
011950 DATA "4-13 k: drckdzxrsmzrkqckn"
011960 DATA "5-14 t: dttttttttttttt"
011970 DATA "13-14 v: vvvvfvvvvvvvvvv"
011980 DATA "7-12 j: jrljwnctjqjjxj"
011990 DATA "6-7 v: wchfzvm"
012000 DATA "1-8 d: dddddddzd"
012010 DATA "10-12 g: gvvzrglgrgggggggggg"
012020 DATA "3-4 n: ngtnnn"
012030 DATA "2-4 b: fzbb"
012040 DATA "1-15 x: cxxfxxxckxxhxlxxxxxx"
012050 DATA "7-19 f: ffkzcglddffcfvfhffv"
012060 DATA "9-12 s: sssssssmssss"
012070 DATA "13-20 t: ttttmttttttthtttddtt"
012080 DATA "2-15 v: vvqvcwvvvvsvvqvwm"
012090 DATA "5-10 w: wxcstswwwwnc"
012100 DATA "3-4 v: tjvvnvvtzfdcjjwb"
012110 DATA "1-2 l: lbclr"
012120 DATA "2-13 d: dkdlddcddddddd"
012130 DATA "2-7 n: npnngnnn"
012140 DATA "4-12 g: kmvvmfngwmlg"
012150 DATA "1-2 w: wwwww"
012160 DATA "5-11 t: ttttjtttttttttttt"
012170 DATA "4-5 r: srlrrr"
012180 DATA "5-8 q: qhqfpjqsnqqkq"
012190 DATA "8-15 s: hvtnslpsfbsssrw"
012200 DATA "11-16 n: gnwnfndrnnhnnknsnnc"
012210 DATA "2-7 r: tdrrshrrhsxrr"
012220 DATA "16-18 m: mmbmmmjmmmmmmmmmmbm"
012230 DATA "6-7 n: nnnnnxt"
012240 DATA "4-6 k: dpxzklksk"
012250 DATA "1-9 g: ggkxhgggggggggggqg"
012260 DATA "1-8 l: lllglllh"
012270 DATA "1-4 c: cwtc"
012280 DATA "5-6 h: vhhhvshh"
012290 DATA "10-11 x: xxxxxxxxxxc"
012300 DATA "2-3 q: qhqqgqmt"
012310 DATA "3-6 k: hkqqshgjnxmlkrjdzg"
012320 DATA "9-11 l: llprlllllllll"
012330 DATA "5-7 l: lknflmrv"
012340 DATA "8-9 h: hhhhhhhhh"
012350 DATA "7-8 z: zzzzzgvzzzzz"
012360 DATA "18-20 v: vvvvvvvhbvqvgvlvjbrv"
012370 DATA "13-15 k: xkfcvkrnfkkkvcpt"
012380 DATA "3-5 l: llnnglmgtz"
012390 DATA "15-19 t: tmtsfttxtctdtgtmpttt"
012400 DATA "6-8 f: gmffwvffff"
012410 DATA "10-13 d: dndsddddddpdjndddd"
012420 DATA "7-10 r: rjzqrpgrrrcmrrg"
012430 DATA "1-4 m: hlmm"
012440 DATA "9-15 d: pdddlrwdzddddddd"
012450 DATA "6-13 q: qqqhnvqqqqqqfbqq"
012460 DATA "1-11 z: wzsqmnrzwzzhzxczzzzd"
012470 DATA "6-11 t: tptnjttkttttvtttr"
012480 DATA "3-5 n: nnznnn"
012490 DATA "5-6 t: trtttslv"
012500 DATA "5-6 g: gggggt"
012510 DATA "15-19 s: sssssssssssxsswsssss"
012520 DATA "1-13 q: wzqjljdqqqqnqq"
012530 DATA "6-7 k: kkkkkgkkk"
012540 DATA "4-5 k: zkxvk"
012550 DATA "7-14 t: thsstltbvmsctqkfhdzc"
012560 DATA "2-5 n: hnnnn"
012570 DATA "2-16 t: gsvkhmhktcxkfqbtd"
012580 DATA "8-9 q: qqtzznrqg"
012590 DATA "17-18 v: vvzvvvvvvvvvvvvvlk"
012600 DATA "3-4 v: vvvl"
012610 DATA "3-4 b: bbvb"
012620 DATA "10-12 w: wwwcwwwwwwkzwhw"
012630 DATA "1-3 d: ntps"
012640 DATA "8-9 j: mqcjcjjfjjhjbjj"
012650 DATA "1-7 j: mjjjjjjj"
012660 DATA "13-14 f: bzffglvfcfsfjb"
012670 DATA "2-3 k: kqkq"
012680 DATA "7-15 c: fccpccshcccccccc"
012690 DATA "12-13 k: kkkkkkpkktksqk"
012700 DATA "12-13 w: rwwwwwkwwwwswwwhw"
012710 DATA "5-12 k: nlkthkkklkkktchmhb"
012720 DATA "15-16 f: fffffffdffffffbf"
012730 DATA "3-4 k: kqkprkkp"
012740 DATA "4-5 p: dcpdppzpppjqm"
012750 DATA "4-7 b: qbbkgbgz"
012760 DATA "10-11 n: nnnnnnnnnnw"
012770 DATA "9-12 h: hhhchbhhvhrhhh"
012780 DATA "3-5 h: hrhnbcl"
012790 DATA "6-10 v: nvlvhvrpvvvvvvv"
012800 DATA "3-6 d: dddddjd"
012810 DATA "4-5 r: rrcvr"
012820 DATA "7-12 l: llllllllllllltll"
012830 DATA "3-6 b: zbbbbt"
012840 DATA "6-10 z: zznzzzzzbzbhzz"
012850 DATA "2-5 h: rfwbmkhmhhhmjhmh"
012860 DATA "11-13 q: wkkzzqxvqqsqx"
012870 DATA "2-15 p: hbpjpppppptppppzb"
012880 DATA "9-10 b: bbmbbbbbsb"
012890 DATA "3-10 t: cqmtttjtttttf"
012900 DATA "8-11 v: tvgcvvvvvkv"
012910 DATA "6-9 g: tggnggtggkg"
012920 DATA "3-6 w: dfwnht"
012930 DATA "8-14 c: pncwqccsfgctpccxc"
012940 DATA "6-9 p: bpppjtzprggp"
012950 DATA "15-18 j: sjjjjjjdjmjbjjpvjj"
012960 DATA "1-6 m: mhmkrhxn"
012970 DATA "10-11 d: xcjtpdwdcfvhqdksfhd"
012980 DATA "16-17 t: txtlrttctwtztttnx"
012990 DATA "13-14 j: jjtjjmjjnjjjjjjj"
013000 DATA "10-12 m: ldqmmmgmmxrmfwrbv"
013010 DATA "4-6 p: psmpnpkfq"
013020 DATA "13-14 t: tltttsttmtttjttt"
013030 DATA "7-9 g: ggggggbgv"
013040 DATA "8-9 q: qqqqqqqqd"
013050 DATA "4-5 d: ddddl"
013060 DATA "14-16 g: gggggggwggpgfpgm"
013070 DATA "4-5 v: vvvvl"
013080 DATA "5-8 v: gtjpvvdv"
013090 DATA "5-11 s: dsslsvqpwsss"
013100 DATA "4-6 h: hhhghh"
013110 DATA "16-17 k: hkkkkkkkkkkkkkkqj"
013120 DATA "5-10 d: dddtddddjd"
013130 DATA "6-7 v: vclfvvzvj"
013140 DATA "6-8 m: dtkbcblppzx"
013150 DATA "1-4 g: hggggg"
013160 DATA "9-11 q: qdqvdqkdfqvqzqkq"
013170 DATA "2-6 s: ssgsbswhs"
013180 DATA "3-8 j: jjpjjjjv"
013190 DATA "3-8 d: dddddddqdddd"
013200 DATA "6-8 v: vvvvhcvn"
013210 DATA "6-12 z: gzzzzzzzzzzkzzzzz"
013220 DATA "5-12 k: nrkzklbxcwbc"
013230 DATA "10-14 p: clxjpnhsvttnjp"
013240 DATA "6-17 w: vztxwwwgwlwcwwwtw"
013250 DATA "8-11 c: cctzcccqcjc"
013260 DATA "1-3 b: zdqx"
013270 DATA "3-5 x: dvxxxx"
013280 DATA "6-13 b: gvbbbbbbbbvpkbb"
013290 DATA "7-12 k: hkbkkqkvkmpkrhk"
013300 DATA "3-6 c: ccrbcdccc"
013310 DATA "4-6 m: znhphh"
013320 DATA "4-11 x: xmmgbxxgdxxtbwg"
013330 DATA "15-16 m: nmmbmmbjmrbvmmbm"
013340 DATA "11-12 j: jdcjjtsjjdjj"
013350 DATA "1-4 c: cccfcc"
013360 DATA "6-15 n: ssvnnnnnnwnggzmp"
013370 DATA "4-6 l: qwfllpx"
013380 DATA "6-9 b: bbbbbsbbmb"
013390 DATA "3-6 j: ljjgfh"
013400 DATA "5-9 t: tttttphtwtvtf"
013410 DATA "8-12 x: xtdxxxdjghxxpxhkbxx"
013420 DATA "5-9 r: rrprrmrrrjvszrrtp"
013430 DATA "15-16 r: lrrrrrrrrrrrkrrrr"
013440 DATA "2-5 q: ltfgqcqmt"
013450 DATA "7-13 k: zkkkkkkkkkkkhkkkkk"
013460 DATA "5-6 z: zzzzzszz"
013470 DATA "2-7 g: tnjqnsgkdtc"
013480 DATA "3-4 j: njjjgkxcgckj"
013490 DATA "4-7 j: rxmjlxzhjjjsgjcj"
013500 DATA "7-10 f: rmfbffhffcf"
013510 DATA "11-12 h: hdhhhhhhhhhsh"
013520 DATA "7-8 v: nwrvvvvdv"
013530 DATA "8-9 l: llllllllf"
013540 DATA "4-5 r: rmxrrrrx"
013550 DATA "2-3 c: ccgdcc"
013560 DATA "13-15 r: rrwrrrnrrrrrdrslr"
013570 DATA "4-16 x: cnlxmtpxdzxblfxxjd"
013580 DATA "4-5 m: mmmmtm"
013590 DATA "9-13 x: gxxxxxxlxxqxxxxx"
013600 DATA "1-3 d: ddhd"
013610 DATA "11-14 f: tffffffffqlfff"
013620 DATA "2-4 r: xrrf"
013630 DATA "1-11 m: mtdmsmmmmdmmmmmsmtmr"
013640 DATA "1-8 g: pggtggggdgmgggn"
013650 DATA "7-8 f: ffvfffpff"
013660 DATA "2-7 k: khqgfzk"
013670 DATA "11-12 s: ssssssssssbsss"
013680 DATA "7-14 h: hthpwhhxhglzqtmhh"
013690 DATA "2-4 z: zzpmz"
013700 DATA "16-18 x: xxxqxxmlgbxxxxxxxx"
013710 DATA "9-11 v: dblhzhvvvnfvptvmf"
013720 DATA "4-11 n: nxsddnsnnngsdnghngk"
013730 DATA "8-11 x: xxxxxxxwxxxxxxxxx"
013740 DATA "1-4 s: swst"
013750 DATA "13-14 m: mgmmghmmmmmmrmmfmmmg"
013760 DATA "4-5 c: dcccc"
013770 DATA "4-5 r: jzrrc"
013780 DATA "13-19 b: bbbbbbbbbbbcbcbbbbb"
013790 DATA "11-14 c: ccccncfclccccfcccm"
013800 DATA "3-4 t: tstl"
013810 DATA "1-20 v: vzrzgsvsfgxjqkxgdpwv"
013820 DATA "14-15 h: hhvkbhhhhhhhhmhhsh"
013830 DATA "9-13 b: bbbbbbbbtbbbbbb"
013840 DATA "2-3 b: zbbb"
013850 DATA "17-18 s: smsssssrsssssssssfss"
013860 DATA "5-10 v: vfvvvfvdvjvlltv"
013870 DATA "9-10 n: nnnqnnnnxtn"
013880 DATA "6-7 w: pwtwwwfkwvk"
013890 DATA "11-14 z: wzzzzzjzzzlzzkz"
013900 DATA "5-6 l: lxlllv"
013910 DATA "5-8 v: vvvvvvthhv"
013920 DATA "1-9 r: rrrrjkzrdqmr"
013930 DATA "6-8 s: sssssssg"
013940 DATA "2-4 f: frfff"
013950 DATA "1-16 r: pzbdrgnpndnrrwkczmr"
013960 DATA "8-9 b: sbbbbbbblkwb"
013970 DATA "2-5 z: zzjzz"
013980 DATA "3-6 q: qqwqqr"
013990 DATA "2-13 v: vbvvbvvjvvnvcdnvc"
014000 DATA "12-15 p: pppppppppppppppp"
014010 DATA "2-7 m: mmmmmmd"
014020 DATA "6-11 f: ffffffffffz"
014030 DATA "5-6 r: drrthrzrrrp"
014040 DATA "2-7 q: fntqnbqqzb"
014050 DATA "5-14 w: wlfwstdfzvwvqw"
014060 DATA "4-7 s: mgsssslfjzsssv"
014070 DATA "7-8 g: tgtgjrggggsggtg"
014080 DATA "11-19 z: fkzzzvzzvzdzzzzzfzz"
014090 DATA "3-7 w: kwcwwww"
014100 DATA "6-14 s: sssssssssssswjss"
014110 DATA "7-8 v: vvmbxvxv"
014120 DATA "2-6 n: nnnnnp"
014130 DATA "7-8 b: bbbbbbbb"
014140 DATA "3-6 z: zzzzhz"
014150 DATA "11-17 t: bltttdttttttttttzt"
014160 DATA "1-9 l: llllllvll"
014170 DATA "10-11 n: tznsxfhdpnn"
014180 DATA "6-8 t: tttttnttt"
014190 DATA "4-10 p: pppppppbppppppnc"
014200 DATA "4-11 j: rhvjjjjjjwjnrcp"
014210 DATA "3-4 j: cjjj"
014220 DATA "7-12 v: kmctjvksqzvv"
014230 DATA "16-17 w: wwwwwwwwcwwwwwwwwww"
014240 DATA "12-16 f: fffffjbfffwffwffff"
014250 DATA "9-10 p: ppntppppjppkpdp"
014260 DATA "3-4 l: lllcf"
014270 DATA "5-6 b: dbbbbsbtb"
014280 DATA "2-3 p: pvpz"
014290 DATA "5-6 f: pqffdf"
014300 DATA "1-3 l: lnlpxl"
014310 DATA "8-10 n: nnnjttnxmmns"
014320 DATA "1-10 j: xjjwtjtjjjjjjj"
014330 DATA "2-8 m: smwmcmzrfqbmmwdmm"
014340 DATA "1-6 k: jxpsfkkkgm"
014350 DATA "5-9 f: zjfffjjwknqh"
014360 DATA "1-6 c: rcccczcccccc"
014370 DATA "13-17 g: zsgpfppggwshgbtggxzh"
014380 DATA "12-14 n: qmknbfcgnnnhwn"
014390 DATA "1-6 k: vdklkkzkkkkfkm"
014400 DATA "1-3 h: hhlhhhl"
014410 DATA "16-18 p: qggnxmswcppklptgsp"
014420 DATA "1-4 m: vmmqmmmmmmm"
014430 DATA "8-10 l: lllllxlllvllg"
014440 DATA "4-12 g: gjgghggwctzvgggggg"
014450 DATA "8-11 x: jxhxxxxxxxx"
014460 DATA "4-16 n: xnrnbkrkdvntnjkc"
014470 DATA "2-4 m: mdmmj"
014480 DATA "6-7 n: nnnnnngnnnntn"
014490 DATA "1-13 j: jjjgjjjfgjjmj"
014500 DATA "8-10 z: zzzzzzpjtz"
014510 DATA "1-18 f: ffkwvfgcrnffgnffmf"
014520 DATA "4-5 j: jjtjvb"
014530 DATA "6-11 s: ssscsnslsssssssshsss"
014540 DATA "11-12 n: nnnnnnnnnnmd"
014550 DATA "2-10 n: cpnhnrnbknnkwnbnlb"
014560 DATA "2-4 d: dddnh"
014570 DATA "9-12 f: fffffffffffldfff"
014580 DATA "1-9 d: ddddddvdlddddd"
014590 DATA "1-8 w: wnwwwdwww"
014600 DATA "3-4 h: bhgv"
014610 DATA "1-4 x: vxxj"
014620 DATA "3-4 g: gmgbg"
014630 DATA "7-8 j: nzwgbtnj"
014640 DATA "3-6 z: zzpzzhzw"
014650 DATA "8-10 h: hmhhhhszgz"
014660 DATA "1-5 m: dnqgnxjm"
014670 DATA "11-12 z: zkzpbjxszzzhwgdz"
014680 DATA "10-11 r: rlrrrrrrrrr"
014690 DATA "1-2 v: vvvvtsvvvvvvvvqvvvn"
014700 DATA "13-14 n: nrfzqlxxxsxqhnkhrmws"
014710 DATA "1-4 z: znftzjjwzc"
014720 DATA "6-15 v: fvvvlvvhvvvvvzhvv"
014730 DATA "5-10 x: mtxprgbqxxkfnssvq"
014740 DATA "8-9 f: lffffffwf"
014750 DATA "1-4 g: grxgvlhflrbghj"
014760 DATA "3-5 c: fcxcl"
014770 DATA "6-7 s: ssssdds"
014780 DATA "10-13 l: llllllllllllxl"
014790 DATA "12-15 j: jjvjjbjcjjjjsjjj"
014800 DATA "1-2 c: ctggc"
014810 DATA "2-4 w: wbwwwwr"
014820 DATA "8-20 v: phvvvvvrbvvfvvvvvvhv"
014830 DATA "5-8 v: cvvnvjbl"
014840 DATA "4-19 x: xhvxflxpkxxcfvwxxhl"
014850 DATA "1-2 m: mgqj"
014860 DATA "5-6 q: wpxdbq"
014870 DATA "19-20 d: ddddddbxddddddddddpd"
014880 DATA "5-11 d: dhhwddjddkdd"
014890 DATA "6-7 g: ggggggn"
014900 DATA "1-7 h: zhphhhhhgn"
014910 DATA "7-11 s: ssssssssssksssss"
014920 DATA "2-3 n: hnwn"
014930 DATA "8-9 h: hhsshhhhh"
014940 DATA "1-2 c: ccwcc"
014950 DATA "2-5 s: cdsmmfqfcrsh"
014960 DATA "3-5 m: mwmjt"
014970 DATA "1-4 n: ndntnnnnnnnnnn"
014980 DATA "4-6 s: ssslsssshsssmq"
014990 DATA "5-16 r: rrrrcrrrjrrrrrrrrr"
015000 DATA "1-6 v: bvvvvvvv"
015010 DATA "9-10 t: tsttttztxtttttb"
015020 DATA "8-12 d: tvrbvwxdddxmhfsd"
015030 DATA "3-9 w: wbwwwwwwww"
015040 DATA "3-5 g: bgglcqg"
015050 DATA "8-12 f: fqffvdzslhksrv"
015060 DATA "1-4 h: hsqh"
015070 DATA "6-12 b: hbwhxbfppkbb"
015080 DATA "12-15 l: llllllllllllllplv"
015090 DATA "16-17 m: mmmmmzmvmmmmmmkmhmmm"
015100 DATA "2-8 p: mpnnnpwpv"
015110 DATA "9-10 x: xxpxxxxlcxj"
015120 DATA "10-14 c: mccclvcccfcckwcbczc"
015130 DATA "2-3 v: vvsrg"
015140 DATA "13-15 h: hhhhrlhfhhhhvhhhshh"
015150 DATA "3-8 z: vsbkqlzzzzzsmzw"
015160 DATA "9-11 h: qhhhhhhhddnh"
015170 DATA "4-5 h: hhhkxhh"
015180 DATA "7-12 t: dtcvttttbhnntft"
015190 DATA "1-5 z: kksnxzzxz"
015200 DATA "1-3 j: cjjjjjjjfjj"
015210 DATA "12-15 s: sslssstssssssszss"
015220 DATA "2-4 c: mntc"
015230 DATA "5-8 v: mvbsvfvvvlsrv"
015240 DATA "5-6 z: zmhfjq"
015250 DATA "10-15 r: rrrrrrrjrbrmrjr"
015260 DATA "9-11 j: jjjjjjjjjjxjjj"
015270 DATA "1-2 d: jwhdd"
015280 DATA "4-5 m: mmmkm"
015290 DATA "1-7 j: rprmjbxjj"
015300 DATA "13-14 g: ggggggpqggggqgg"
015310 DATA "1-5 l: llxzlkpptdzg"
015320 DATA "1-2 z: zzzzzzzzzzzzjzzz"
015330 DATA "3-4 h: qhhwtz"
015340 DATA "2-5 t: tptttt"
015350 DATA "1-14 c: cccccccccccccxcccc"
015360 DATA "8-9 t: tgtpttwtqttvt"
015370 DATA "1-16 m: mhmtpmmpmmtmzmmcqj"
015380 DATA "3-4 q: qqvq"
015390 DATA "10-11 h: hxhhhhhhhbhh"
015400 DATA "5-6 n: xlchhnljrlnfrlwzs"
015410 DATA "1-9 x: mxxxxxxxtxxxfxx"
015420 DATA "2-7 n: bbnnrqmnnnnnl"
015430 DATA "2-7 p: rgpqnqp"
015440 DATA "3-4 f: fndf"
015450 DATA "10-11 c: cccccccccqc"
015460 DATA "3-10 l: lpzxlhpslfh"
015470 DATA "3-5 k: kkkkkkk"
015480 DATA "14-17 b: bbbbbbbtbbbbbfbbbb"
015490 DATA "1-2 f: gfff"
015500 DATA "10-14 j: jjjjjjhjjjdjrjc"
015510 DATA "1-9 s: wszsswssspsss"
015520 DATA "4-6 k: dckkkkkk"
015530 DATA "3-13 h: hhvkvhhhhhhdhh"
015540 DATA "15-16 g: ggggggggggggggngg"
015550 DATA "2-11 m: nzdsmbqtmmmmxskcmmv"
015560 DATA "3-11 m: mmmkmhxmwmcmqdlpmf"
015570 DATA "1-8 n: snnnbnwn"
015580 DATA "1-13 j: pjjjjjgjjjjjxjj"
015590 DATA "3-18 m: mmvvmqmlmmmmzcmkwqlw"
015600 DATA "1-4 d: dbdx"
015610 DATA "12-15 r: rrrrrrmrrrrrrrr"
015620 DATA "4-18 s: sssvsssssszsssssscss"
015630 DATA "2-5 q: nqbmmbqds"
015640 DATA "3-12 d: hrdvzzcrbjwdkgddbrpq"
015650 DATA "2-3 r: rsrghkrmdsfm"
015660 DATA "5-9 k: twfwkkkswqkkkkwv"
015670 DATA "4-6 p: tppxpstmxcw"
015680 DATA "12-13 k: kkkktkkkkrkksk"
015690 DATA "1-2 m: lmmm"
015700 DATA "3-5 s: shsss"
015710 DATA "6-7 c: ccccclc"
015720 DATA "10-17 s: ssssshsssssssssshs"
015730 DATA "6-15 n: nnnxnrtfnnnnnnnnn"
015740 DATA "3-18 s: jsfcdsscssmnsgssnj"
015750 DATA "7-8 x: xxcxxxxr"
015760 DATA "3-5 l: lvlllll"
015770 DATA "11-12 h: hmhhhhhhhcxjhhfdh"
015780 DATA "3-4 d: wdfdd"
015790 DATA "3-4 r: qrvr"
015800 DATA "10-18 j: mvwlxblnhjddlzkhqjfj"
015810 DATA "6-20 b: bhbbbbbbbbbtbbkbbbbc"
015820 DATA "8-9 c: cclccmnrr"
015830 DATA "3-6 w: wwwwwww"
015840 DATA "5-9 k: dlgkjnqxk"
015850 DATA "12-18 f: fqfffbfffffcfffhfkf"
015860 DATA "1-3 w: fwwgjsclwpw"
015870 DATA "6-7 z: zwzzzzl"
015880 DATA "14-16 r: jrrrrrrrrrrrrfrrrr"
015890 DATA "11-14 b: bbbbbbbbbbbbbw"
015900 DATA "9-11 h: hhhzhhhfxhhhh"
015910 DATA "3-4 p: pplnp"
015920 DATA "2-3 f: ffff"
015930 DATA "5-8 p: lppppppsppppppp"
015940 DATA "17-18 w: wwwwwwwwwwwwwwwwzcww"
015950 DATA "11-13 n: nnnnnnnqnnnnfn"
015960 DATA "7-12 f: fxmfpdfjrffjgtffzlfg"
015970 DATA "4-16 w: bctwmwtxvwqzrwwwwhw"
015980 DATA "2-7 m: gmmmmmjmmmm"
015990 DATA "1-15 q: tqqqqqqqqqqqqqqq"
016000 DATA "3-4 q: gqwq"
016010 DATA "3-12 s: ssssssssssrhpsg"
016020 DATA "6-8 m: mrmlmhcrsm"
016030 DATA "4-9 q: gdbffcqbqt"
016040 DATA "1-17 k: kkkkkkkkkkkkkkkkkmk"
016050 DATA "15-16 h: hghhhhhhhhhhhhrhh"
016060 DATA "4-5 p: pkpzmb"
016070 DATA "2-18 h: khvkdpbxdptllfdxvhh"
016080 DATA "18-20 z: zzczzzzzzzzzzzzzzpzs"
016090 DATA "1-11 p: ppppppcpzppppppppp"
016100 DATA "4-9 z: ztpfrjzwnv"
016110 DATA "6-11 x: snxxtstcqhv"
016120 DATA "3-5 c: nrlcccbcpsvcc"
016130 DATA "2-7 z: dztxzzqmfzrpz"
016140 DATA "5-14 w: pbcjnqpwwlccfscz"
016150 DATA "1-5 f: rfndsxdmhbgf"
016160 DATA "8-14 t: ttttpdfwtxfttd"
016170 DATA "2-11 l: lndmmrnxdmdpdmlzll"
016180 DATA "3-4 h: chzl"
016190 DATA "10-17 d: ngkkdbvflmcssmgmdk"
016200 DATA "4-7 d: bhksdtd"
016210 DATA "2-6 k: ktkdkzwsgkhkk"
016220 DATA "1-4 r: hrrs"
016230 DATA "15-19 j: ndnvjfjljnwklsmdbjj"
016240 DATA "5-12 v: vhvvvrvgvvqgwvvbfv"
016250 DATA "2-3 r: rfkkhrrhqhks"
016260 DATA "13-17 q: qqmlqqqqqmqqvqqqcqq"
016270 DATA "4-15 z: zvbkvbzczkrttcz"
016280 DATA "4-8 s: ssssssss"
016290 DATA "13-14 x: xmxxrxxxgxxxmb"
016300 DATA "7-10 s: sfjzslwsqsss"
016310 DATA "4-13 c: clccncccccccpc"
016320 DATA "2-4 l: lddlpplrqqs"
016330 DATA "12-13 j: jjjvjjhjjjjmjjjjj"
016340 DATA "6-9 n: lnnznnpnclnnn"
016350 DATA "6-10 g: gggggggwgjgg"
016360 DATA "4-6 l: tjhqmr"
016370 DATA "2-4 d: hddxjdvj"
016380 DATA "5-13 t: tzftwttwttjttt"
016390 DATA "1-9 j: jnjjjkjftjjfmjhjkj"
016400 DATA "8-9 q: qqqsqqqjj"
016410 DATA "15-19 l: lllllbtdlsllllllxlfl"
016420 DATA "5-6 g: gkgkrsgg"
016430 DATA "2-4 t: tttb"
016440 DATA "12-15 p: jpppppspgpppppkxb"
016450 DATA "10-13 n: nznprnnhnmgxhxnknnnn"
016460 DATA "12-13 d: dddsdddddddsd"
016470 DATA "5-15 q: qqqqkqqqmqfzqqqw"
016480 DATA "5-9 s: nmgslvgdz"
016490 DATA "1-4 d: gddkddd"
016500 DATA "12-16 v: zvdsdsgjrtjvzsjtx"
016510 DATA "11-14 q: pqdgjqqqqgqqjwlqqqmq"
016520 DATA "2-7 p: pkpqsppqgz"
016530 DATA "6-10 b: bzdbbbbbbvbbbx"
016540 DATA "14-15 v: vvvvqvvvcvvvvvvv"
016550 DATA "4-5 w: wjwwwhjwg"
016560 DATA "5-10 x: wgthfxtdpxx"
016570 DATA "6-7 c: ccqcfcbcccbml"
016580 DATA "6-7 w: rwwwwxb"
016590 DATA "4-5 n: jnnnngvljjmnr"
016600 DATA "3-11 m: lbmmmmmmmmtxgxmmzm"
016610 DATA "1-2 b: bbbvjcbbb"
016620 DATA "6-9 b: tbwbbcbbbb"
016630 DATA "11-13 d: sdkwqrjdddbdd"
016640 DATA "9-15 t: ttttpqttjttttsjt"
016650 DATA "5-7 j: jjjjjjzj"
016660 DATA "12-13 v: vvjvmvvqvfzvcvvvvvv"
016670 DATA "6-7 d: ddlddrd"
016680 DATA "5-6 j: jjjjwj"
016690 DATA "5-6 f: fffffp"
016700 DATA "6-7 w: zwmwdwww"
016710 DATA "1-4 d: jddddppdktdgh"
016720 DATA "4-14 n: nnnnncnnnnnnnnrn"
016730 DATA "14-17 c: ccccccsdccccccccn"
016740 DATA "3-4 z: zzzgqz"
016750 DATA "5-17 m: mmrsmmnzqlnbmmlljwpm"
016760 DATA "3-5 j: cgvjh"
016770 DATA "12-13 w: wtgblrdchjjkfhg"
016780 DATA "4-7 t: rgclgtt"
016790 DATA "1-3 k: wckhkkkjkk"
016800 DATA "6-11 n: nnnnnnnnnnvn"
016810 DATA "17-18 k: kktkkkknczkkkkhkkk"
016820 DATA "1-6 x: rwxqgxrxxxmsmkrx"
016830 DATA "17-18 g: ggggggggggggggqgjp"
016840 DATA "14-17 w: wwwwwwwwwwwwwnwww"
016850 DATA "11-12 w: vcbmkbwnwbwww"
016860 DATA "15-16 g: gggggggggghjgwgggjvg"
016870 DATA "5-9 n: nnnnwnnnfnnnnnnsnnnn"
016880 DATA "3-4 k: kkkjhk"
016890 DATA "5-8 k: kkkkmkkkk"
016900 DATA "9-13 k: kkrskkkkkkkqfkknmz"
016910 DATA "2-3 j: jtjcj"
016920 DATA "7-8 c: ccvcrcsxc"
016930 DATA "5-9 k: kkkkgkkkkk"
016940 DATA "4-5 h: hhzsxv"
016950 DATA "1-7 d: lgdbdhdddd"
016960 DATA "5-6 j: dsjjkj"
016970 DATA "7-20 x: xnxwmwkbbbkjbpfwkpgx"
016980 DATA "11-12 q: wmbqtffthfcqgq"
016990 DATA "7-16 h: hhfkhhdhhhhhhhhhhhh"
017000 DATA "9-13 b: bhbfbmbbsgbbfbj"
017010 DATA "8-10 w: xwwmwwwgfwwzpwnw"
017020 DATA "7-11 m: bmrmbwmmmmmmmm"
017030 DATA "8-9 d: lshdfglpdq"
017040 DATA "11-13 w: vxwwwwxckwwkww"
017050 DATA "8-13 x: xxzxgtpxxlxxx"
017060 DATA "8-13 z: jrsfgvzzzwrdxz"
017070 DATA "10-11 q: qqqqqlqqqqq"
017080 DATA "2-7 m: knxnmxm"
017090 DATA "2-4 n: znnhnnnnnnn"
017100 DATA "4-6 k: kmxgkkk"
017110 DATA "10-18 z: qhhzhzbldchlmwdzfrsz"
017120 DATA "3-4 n: nnnt"
017130 DATA "11-15 v: vvvvvvvvvvwvwvf"
017140 DATA "4-9 x: dxjxnmghvrxbnzgxljc"
017150 DATA "1-2 m: mmgm"
017160 DATA "18-19 z: zzzzczzzzczzzzzzzjsz"
017170 DATA "6-20 p: pkhzdzpppfbphphpxppp"
017180 DATA "3-9 h: zxhqqkkqknkfvq"
017190 DATA "5-8 l: lllltlll"
017200 DATA "8-10 z: zdzzzzmszz"
017210 DATA "10-17 l: txhgwzsrjlvlvglxl"
017220 DATA "1-12 s: bvgswssssmssvssssssb"
017230 DATA "3-6 j: xjjbjt"
017240 DATA "3-5 x: xxlxq"
017250 DATA "5-15 r: htprxzjstgzpddrtjrr"
017260 DATA "1-10 x: xzftsqxxpgzdlcth"
017270 DATA "6-9 w: wbdwwpbwwwwcrx"
017280 DATA "4-11 n: nnknnhnnnnk"
017290 DATA "8-11 f: ffffffpsfffff"
017300 DATA "6-9 h: hhhnhhqhhhnhvv"
017310 DATA "6-9 x: gqxzhlpnxlcrwnxxp"
017320 DATA "5-7 k: kkkkjkkk"
017330 DATA "5-7 x: xxdxxsqcx"
017340 DATA "6-7 j: jfjljjfp"
017350 DATA "7-8 l: clsldvlc"
017360 DATA "5-10 h: qhqmchbzhlfhc"
017370 DATA "5-9 m: mpdnhsmmb"
017380 DATA "2-4 k: jvmkjrkhkctwlrq"
017390 DATA "2-3 s: ssgstssds"
017400 DATA "8-9 t: tvttttttht"
017410 DATA "5-6 n: nnnpnpn"
017420 DATA "8-9 x: xxxxqxxxsp"
017430 DATA "6-7 z: zzzzzzl"
017440 DATA "4-5 f: fffpkffq"
017450 DATA "1-12 b: bsfbclbxbkbbmbmb"
017460 DATA "14-15 b: rcnwnhbdfbhtblvb"
017470 DATA "7-9 j: jjjjjjjjx"
017480 DATA "2-3 x: xxxx"
017490 DATA "13-14 z: zqzzzzzdztzzzmzz"
017500 DATA "2-6 r: rmlbjrrbrc"
017510 DATA "2-3 m: mwmm"
017520 DATA "9-10 d: ddddddjddz"
017530 DATA "15-18 p: pppppppzppppppzppj"
017540 DATA "3-6 g: glfgdgfgbgdkg"
017550 DATA "1-3 s: sdsblxzscp"
017560 DATA "5-6 v: vvvvsv"
017570 DATA "1-3 d: vdxdkd"
017580 DATA "6-8 w: wkzwcwvwwwqwd"
017590 DATA "9-10 h: hhhhhhhhwh"
017600 DATA "9-12 b: bdbbbbbwbbmbbbb"
017610 DATA "2-8 b: bbbbbbbcb"
017620 DATA "2-9 v: nvtgsfvpv"
017630 DATA "11-13 v: hvvgvvvvvvbvphlhnv"
017640 DATA "6-7 r: rrrrprr"
017650 DATA "10-16 w: wlxptrzwmwxhspcww"
017660 DATA "5-7 f: ffpfshf"
017670 DATA "3-6 t: rnttvx"
017680 DATA "8-16 b: pvlbtnfbvspdhtkk"
017690 DATA "1-4 v: vlvd"
017700 DATA "4-17 l: qflfllkllplllllkl"
017710 DATA "1-3 s: psswjplkhvxssftnpl"
017720 DATA "6-11 t: tthmbtwkfct"
017730 DATA "11-17 w: wwwwjwdtwcnwwwxkx"
017740 DATA "9-11 s: sssssssslsss"
017750 DATA "8-10 n: nnnnnpnwnnnvw"
017760 DATA "12-13 m: mmmmmmmmmmmnpmm"
017770 DATA "14-17 w: xbswvmsflkmqlpkxwm"
017780 DATA "1-3 w: mzww"
017790 DATA "5-6 g: ggggdw"
017800 DATA "1-15 r: rslcrjzhrjdpwqm"
017810 DATA "7-12 g: ggdgfggdzlxfkg"
017820 DATA "2-11 x: cpsxxkxxqhsxdxxjkgbt"
017830 DATA "7-8 w: wdvhwwwp"
017840 DATA "1-4 z: zmfzllxnrnlw"
017850 DATA "9-10 b: rkbbbbksbpdsbcm"
017860 DATA "1-8 h: sqdmcjpw"
017870 DATA "2-6 x: pxxvrx"
017880 DATA "5-6 x: xjshxxqt"
017890 DATA "1-13 b: fbbbbbbbbbbbbbb"
017900 DATA "11-13 t: bwhtttdvtbtkw"
017910 DATA "2-6 j: rjrggj"
017920 DATA "5-6 v: fvvvwvtv"
017930 DATA "10-15 s: ssdsstswssssssc"
017940 DATA "2-6 h: hnqzhlclp"
017950 DATA "8-12 t: pjztttrjtvttt"
017960 DATA "5-6 g: gwxrggtmg"
017970 DATA "1-8 z: kzzzzzzvz"
017980 DATA "10-15 p: pppppppppvpppppp"
017990 DATA "3-4 g: ngxdgg"
018000 DATA "2-5 x: xcxxnbwh"
018010 DATA "3-10 s: sgkghshxdssws"
018020 DATA "1-2 s: pssldmf"
018030 DATA "2-5 m: jmxmm"
018040 DATA "5-6 n: pnsjqnnn"
018050 DATA "13-17 t: ttxslvttlnttrdwtt"
018060 DATA "1-6 n: nnpnsn"
018070 DATA "3-20 m: mmmmmwjmmmmmtmmvmmmm"
018080 DATA "15-17 s: ssszsslsssszssssss"
018090 DATA "5-8 s: hsgzspsk"
018100 DATA "7-8 c: ccccccchc"
018110 DATA "14-17 l: llllllllllllllllk"
018120 DATA "7-14 p: xjbxdpkbgcpbfpptfx"
018130 DATA "5-6 s: sghmss"
018140 DATA "4-6 s: ssssss"
018150 DATA "1-2 c: kcwpwc"
018160 DATA "5-6 m: mmmqtmt"
018170 DATA "1-9 l: glllllllslllll"
018180 DATA "3-4 r: rrcr"
018190 DATA "6-9 r: rpcbrrrrdvrrwf"
018200 DATA "3-7 l: wglsfjtwlldg"
018210 DATA "6-9 g: gggbgggxw"
018220 DATA "9-10 j: jjjjjjjjrjjjjjjjjjj"
018230 DATA "4-14 p: vbppfpncsmhctp"
018240 DATA "10-13 k: kkkkkkkkkkkkkkkkk"
018250 DATA "3-5 p: dnlpp"
018260 DATA "11-15 f: fsffzftkfqflnflf"
018270 DATA "9-11 q: bqdqcqqqqgffqfqmrqlq"
018280 DATA "1-10 l: lszxlhdkgtprglxxl"
018290 DATA "16-18 l: sllllllmlllllllllwl"
018300 DATA "4-7 b: brblbbbtbj"
018310 DATA "3-6 n: rhnntq"
018320 DATA "7-9 k: kjnkjpbkkkkvkjm"
018330 DATA "11-12 g: kvjpqmhcgbrl"
018340 DATA "3-12 h: khhhvhhmchhgfh"
018350 DATA "3-4 r: xmpr"
018360 DATA "3-7 m: mmlmmmmhm"
018370 DATA "7-16 m: mmmlmmlmmmmmmmmmmm"
018380 DATA "3-4 b: sdbbbr"
018390 DATA "14-19 k: hkkkkkjclkgmzvgkkkk"
018400 DATA "12-14 w: ssqgwwcxcqwwww"
018410 DATA "2-3 k: lkkr"
018420 DATA "1-7 t: wtttttlt"
018430 DATA "4-8 d: wdjnqgdf"
018440 DATA "8-9 j: jjsjwjjlj"
018450 DATA "4-7 h: hnhphxhhhq"
018460 DATA "2-5 d: qdjgqdb"
018470 DATA "3-5 w: wpwzwdm"
018480 DATA "3-12 n: pnnngxnjqjhpcntfrvz"
018490 DATA "10-15 h: hhhhhvhhhhhhhhg"
018500 DATA "4-6 s: dwrsksjhtsrjdvmbsbwr"
018510 DATA "8-11 v: vvvvvvvcvvvvvv"
018520 DATA "4-5 m: lnmlmmwsmfsm"
018530 DATA "7-16 c: kvzcrcbcvkcpptdccq"
018540 DATA "2-3 b: bnbbpjp"
018550 DATA "3-5 m: hpjkrmmlwq"
018560 DATA "3-7 v: vvvnlhn"
018570 DATA "3-4 b: bnbbb"
018580 DATA "3-6 d: tkdktrctmjw"
018590 DATA "3-5 f: pffffj"
018600 DATA "6-10 t: ltrgjvjthtpttphrttk"
018610 DATA "3-8 s: ssrkstfgssxxxc"
018620 DATA "1-2 d: sdhkcfdcdg"
018630 DATA "6-12 h: shhhhhzzzhfh"
018640 DATA "4-7 j: jjkzgrj"
018650 DATA "13-15 l: llltlwlllllqzlbldl"
018660 DATA "5-9 d: dzxjdrftsprbldvddk"
018670 DATA "4-14 q: wqsqqxtbfnckzqcqqqq"
018680 DATA "1-2 v: lvdxdwpphqv"
018690 DATA "5-6 z: zpzhzjzqtzh"
018700 DATA "3-4 q: qqqlq"
018710 DATA "9-10 v: svvvhvvvtv"
018720 DATA "3-12 g: kjgmbzgklwfb"
018730 DATA "10-15 v: vvddvvvrhvvmvwvvv"
018740 DATA "1-20 j: kjjjjjjjjkjjpjjjjjjj"
018750 DATA "6-8 t: tttttdtt"
018760 DATA "11-12 v: vvvvvqvvqvxvvv"
018770 DATA "12-13 h: hnhshhhhshhhh"
018780 DATA "7-8 z: vzzzzzrzzzfpz"
018790 DATA "7-8 x: xkxhxxhn"
018800 DATA "4-7 b: hbbzptb"
018810 DATA "5-9 d: fddqjsdbj"
018820 DATA "3-10 l: llllllglxslll"
018830 DATA "1-9 b: dbsbbbbgbb"
018840 DATA "5-8 n: dtnnsnnnn"
018850 DATA "7-16 m: mmmmmmmmmmmmmmmsm"
018860 DATA "3-4 f: nhwk"
018870 DATA "15-17 w: wwfwwxwmwwwwwdswwwww"
018880 DATA "1-11 l: llllllllllll"
018890 DATA "4-9 c: cccccccchcc"
018900 DATA "2-3 k: kkkkbskk"
018910 DATA "3-6 s: nssqtf"
018920 DATA "4-5 m: mmrhm"
018930 DATA "9-11 f: nfnsrfdfnfff"
018940 DATA "15-16 k: kkkkkkkkkkkkkkzhk"
018950 DATA "6-9 q: tzqqxqhnq"
018960 DATA "3-11 k: kkkkkkkkkkck"
018970 DATA "2-5 p: wmpgpmjmrqg"
018980 DATA "15-19 r: rrrrrsrrrrrrhfrrjrr"
018990 DATA "4-10 l: lllsldllll"
019000 DATA "4-7 s: sjhzqns"
019010 DATA "1-3 n: nnknnp"
019020 DATA "13-14 j: hjjgxjzjvjpxjj"
019030 DATA "4-5 r: rrrgrrrrr"
019040 DATA "10-11 p: ppptphpxkpppp"
019050 DATA "2-7 j: fjsnxwpjgqnzjjj"
019060 DATA "6-8 k: kdkkwnvkkkk"
019070 DATA "2-5 q: qdqqjqqwq"
019080 DATA "5-7 x: xdxddbcxvnxxxxhxxxq"
019090 DATA "2-6 n: cnqlmrlwqhdbbvbnhskh"
019100 DATA "7-8 z: zzzzzzzwz"
019110 DATA "6-8 r: llrrtzrpr"
019120 DATA "1-7 d: ddlddvmkddjpd"
019130 DATA "8-9 v: vvvvvvvrkv"
019140 DATA "18-19 t: vtststttfmtqtmttdnz"
019150 DATA "3-9 b: nbwbzntrb"
019160 DATA "3-4 r: pzrrqqrj"
019170 DATA "5-9 x: bvxxllwcf"
019180 DATA "4-6 f: fxmlxf"
019190 DATA "11-15 n: nnqnwnnnwnknnnnnfnn"
019200 DATA "9-11 n: nnnnqnnnnnj"
019210 DATA "7-12 k: kkkkkvjkkksskrkkk"
019220 DATA "2-3 b: cbbvbv"
019230 DATA "3-6 x: xxfldxxxc"
019240 DATA "6-11 k: fkvvkkwkvkpjkjk"
019250 DATA "10-16 f: ffffffmffffffffffff"
019260 DATA "7-8 p: fppplpnc"
019270 DATA "11-20 r: srrrfrrrrrrrrhrrbrrr"
019280 DATA "13-17 s: smssssssssssssssb"
019290 DATA "5-8 q: fcqlqqqq"
019300 DATA "6-10 g: rmpsgrlxcvgtggwgvk"
019310 DATA "13-15 h: hhhhhhhhhcmfhhldhzh"
019320 DATA "5-10 q: qqqqjqqqqqcq"
019330 DATA "5-9 m: lmvcmmsznmmgmmmcs"
019340 DATA "5-6 h: hhhbzr"
019350 DATA "3-4 d: dzdg"
019360 DATA "11-14 h: rfvjnjbzvrhthdxhv"
019370 DATA "14-19 g: ggggggggggggggggggcg"
019380 DATA "6-7 m: mmmmmphg"
019390 DATA "13-14 p: ftzfrppkzrrpgp"
019400 DATA "12-16 n: lxnnnnnngnnbnncnn"
019410 DATA "8-9 c: dqgzbncfccrjtdkc"
019420 DATA "6-9 r: jdrrfrtkmkfltkm"
019430 DATA "4-6 g: dnggrr"
019440 DATA "3-4 s: ssssvs"
019450 DATA "18-19 f: wffffffffsffffffffvf"
019460 DATA "6-10 l: klllbxltll"
019470 DATA "6-7 r: rbdgrrr"
019480 DATA "17-18 l: vjplzpcftlkrllsbqlqg"
019490 DATA "3-9 n: bqnnnnrbxkdsdwnvtwwh"
019500 DATA "1-2 w: qwwt"
019510 DATA "5-18 z: zzzzzzzzzzzzzzzzzlz"
019520 DATA "2-7 n: nbnnnnnnn"
019530 DATA "14-15 g: mcdcmxpxmgkqdhm"
019540 DATA "18-19 s: gsssssssssswssssssss"
019550 DATA "5-6 s: tptssvs"
019560 DATA "8-12 c: cccnbcccmcctclccccx"
019570 DATA "6-15 t: tttttttttmttstf"
019580 DATA "5-6 l: lllklq"
019590 DATA "7-9 d: dqdcdcddxcddmdkrd"
019600 DATA "4-5 r: rrvrxqnzrm"
019610 DATA "9-11 p: pjpppppppppppppp"
019620 DATA "4-6 v: vpvvvvv"
019630 DATA "6-9 h: wwchhhgfh"
019640 DATA "10-11 f: flfcjvtljftfffhff"
019650 DATA "6-7 v: vvvvvvvv"
019660 DATA "12-15 k: kjkkkktkkkkkzvn"
019670 DATA "6-9 v: rsrvvgnwktwvvnvclvvc"
019680 DATA "2-12 c: ccvqsctcwkmkqzc"
019690 DATA "16-18 w: wwwwwwwwwwwwwwwwwwww"
019700 DATA "17-18 g: ggzgggggggglggggsgg"
019710 DATA "13-18 v: vvvvvnvvvgrvvkvtqv"
019720 DATA "5-11 k: kkkkkkkkkkkkkkk"
019730 DATA "11-12 f: ffffffffffvf"
019740 DATA "1-7 h: rstpvhh"
019750 DATA "11-14 l: lrnllwvlnflllfdfllt"
019760 DATA "5-7 g: gcgjgrkgj"
019770 DATA "7-18 z: zzzzzzgzztzzzzzzzxzz"
019780 DATA "17-18 v: vvvvvvvvvvvvmvvvvvvv"
019790 DATA "16-18 m: mmmmhmmmmmtmmmmvmx"
019800 DATA "1-3 z: vzzzwz"
019810 DATA "5-6 n: nnnhnq"
019820 DATA "8-15 r: jsrprrrrmrrkgrkrr"
019830 DATA "2-12 g: txwxcgwfqkfg"
019840 DATA "9-15 l: ldlllllllllllll"
019850 DATA "3-5 f: gfbsf"
019860 DATA "15-16 v: vvhrnzxfvvvvcwjv"
019870 DATA "4-15 c: cccmccccccccccccccc"
019880 DATA "7-13 l: bwlzlxzllctjcf"
019890 DATA "1-3 q: rsgtq"
019900 DATA "4-9 n: npznnnvvnzg"
019910 DATA "3-7 z: sqtczzfzzrzfz"
019920 DATA "2-3 k: ckkrjnkglnz"
019930 DATA "9-10 q: qqqqqqwqjqqfq"
019940 DATA "4-11 v: vvvbvvvvvvnvvd"
019950 DATA "5-7 n: lbwxnnnncnnwnv"
019960 DATA "8-9 k: kgkkkkkjf"
019970 DATA "7-9 l: llllllllll"
019980 DATA "15-19 p: pppbpcppxcptppvmpppb"
019990 DATA "3-4 m: fqmwcncsmp"