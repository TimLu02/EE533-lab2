VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a
        SIGNAL b
        SIGNAL cin
        SIGNAL s
        SIGNAL cout
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        PORT Input a
        PORT Input b
        PORT Input cin
        PORT Output s
        PORT Output cout
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 and2
            PIN I0 b
            PIN I1 a
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 cin
            PIN I1 a
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 b
            PIN I1 cin
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_7 xor2
            PIN I0 b
            PIN I1 a
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_8 xor2
            PIN I0 cin
            PIN I1 XLXN_6
            PIN O s
        END BLOCK
        BEGIN BLOCK XLXI_9 or3
            PIN I0 XLXN_15
            PIN I1 XLXN_13
            PIN I2 XLXN_10
            PIN O cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH a
            WIRE 640 640 800 640
            WIRE 800 624 800 640
            WIRE 800 624 928 624
            WIRE 928 624 1056 624
            WIRE 1056 624 1200 624
            WIRE 1056 624 1056 1808
            WIRE 1056 1808 1152 1808
            WIRE 928 624 928 2112
            WIRE 928 2112 1152 2112
        END BRANCH
        IOMARKER 640 640 a R180 28
        BEGIN BRANCH b
            WIRE 640 1120 800 1120
            WIRE 800 1120 864 1120
            WIRE 864 1120 976 1120
            WIRE 976 1120 976 1872
            WIRE 976 1872 1152 1872
            WIRE 864 1120 864 2464
            WIRE 864 2464 1152 2464
            WIRE 800 688 1200 688
            WIRE 800 688 800 1120
        END BRANCH
        IOMARKER 640 1120 b R180 28
        BEGIN BRANCH cin
            WIRE 640 1600 800 1600
            WIRE 800 1600 1424 1600
            WIRE 800 1600 800 2176
            WIRE 800 2176 1152 2176
            WIRE 720 1584 800 1584
            WIRE 800 1584 800 1600
            WIRE 720 1584 720 2400
            WIRE 720 2400 1152 2400
            WIRE 1424 736 1424 1600
            WIRE 1424 736 2064 736
        END BRANCH
        IOMARKER 640 1600 cin R180 28
        BEGIN BRANCH s
            WIRE 2320 704 2720 704
            WIRE 2720 640 2880 640
            WIRE 2720 640 2720 704
        END BRANCH
        IOMARKER 2880 640 s R0 28
        BEGIN BRANCH cout
            WIRE 2336 1168 2720 1168
            WIRE 2720 1120 2880 1120
            WIRE 2720 1120 2720 1168
        END BRANCH
        IOMARKER 2880 1120 cout R0 28
        INSTANCE XLXI_4 1152 1936 R0
        INSTANCE XLXI_5 1152 2240 R0
        INSTANCE XLXI_6 1152 2528 R0
        INSTANCE XLXI_7 1200 752 R0
        INSTANCE XLXI_8 2064 800 R0
        INSTANCE XLXI_9 2080 1296 R0
        BEGIN BRANCH XLXN_6
            WIRE 1456 656 1760 656
            WIRE 1760 656 1760 672
            WIRE 1760 672 2064 672
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1408 1840 1744 1840
            WIRE 1744 1104 1744 1840
            WIRE 1744 1104 2080 1104
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1408 2144 1760 2144
            WIRE 1760 1168 1760 2144
            WIRE 1760 1168 2080 1168
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1408 2432 2080 2432
            WIRE 2080 1232 2080 2432
        END BRANCH
    END SHEET
END SCHEMATIC
