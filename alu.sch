VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL Sel(2:0)
        SIGNAL Cin
        SIGNAL S(31:0)
        SIGNAL Cout
        SIGNAL Sel(1)
        SIGNAL Sel(2)
        SIGNAL XLXN_11
        SIGNAL Sel(0)
        SIGNAL B(15:0)
        SIGNAL B(31:16)
        SIGNAL XLXN_15(31:0)
        SIGNAL XLXN_15(15:0)
        SIGNAL XLXN_15(31:16)
        SIGNAL XLXN_18
        SIGNAL XLXN_24(31:0)
        SIGNAL XLXN_25(31:0)
        SIGNAL XLXN_26(31:0)
        SIGNAL XLXN_27(31:0)
        SIGNAL XLXN_28(31:0)
        SIGNAL XLXN_29(31:0)
        SIGNAL XLXN_31(31:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Input Sel(2:0)
        PORT Input Cin
        PORT Output S(31:0)
        PORT Output Cout
        BEGIN BLOCKDEF and2b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 64 -48 64 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF ttbitmux
            TIMESTAMP 2025 1 27 19 57 5
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF inv16
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            RECTANGLE N 0 -44 64 -20 
            RECTANGLE N 160 -44 224 -20 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF ANDOR
            TIMESTAMP 2025 1 27 19 56 45
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF orgate
            TIMESTAMP 2025 1 27 19 57 17
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF adder
            TIMESTAMP 2025 1 27 20 4 25
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF shifter
            TIMESTAMP 2025 1 27 20 48 48
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2b2
            PIN I0 Sel(2)
            PIN I1 Sel(1)
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_2 or2
            PIN I0 XLXN_11
            PIN I1 Sel(0)
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_3 ttbitmux
            PIN A(31:0) B(31:0)
            PIN B(31:0) XLXN_15(31:0)
            PIN S(31:0) XLXN_24(31:0)
            PIN Sel XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_4 inv16
            PIN I(15:0) B(15:0)
            PIN O(15:0) XLXN_15(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 inv16
            PIN I(15:0) B(31:16)
            PIN O(15:0) XLXN_15(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_6 ANDOR
            PIN A(31:0) A(31:0)
            PIN B(31:0) XLXN_24(31:0)
            PIN S(31:0) XLXN_25(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 orgate
            PIN A(31:0) A(31:0)
            PIN B(31:0) XLXN_24(31:0)
            PIN S(31:0) XLXN_26(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 adder
            PIN A(31:0) A(31:0)
            PIN B(31:0) XLXN_24(31:0)
            PIN Cin Cin
            PIN Cout Cout
            PIN S(31:0) XLXN_27(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 ttbitmux
            PIN A(31:0) XLXN_25(31:0)
            PIN B(31:0) XLXN_26(31:0)
            PIN S(31:0) XLXN_28(31:0)
            PIN Sel Sel(0)
        END BLOCK
        BEGIN BLOCK XLXI_10 ttbitmux
            PIN A(31:0) XLXN_27(31:0)
            PIN B(31:0) XLXN_28(31:0)
            PIN S(31:0) XLXN_29(31:0)
            PIN Sel Sel(1)
        END BLOCK
        BEGIN BLOCK XLXI_11 ttbitmux
            PIN A(31:0) XLXN_29(31:0)
            PIN B(31:0) XLXN_31(31:0)
            PIN S(31:0) S(31:0)
            PIN Sel Sel(2)
        END BLOCK
        BEGIN BLOCK XLXI_12 shifter
            PIN A(31:0) A(31:0)
            PIN S(31:0) XLXN_31(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH A(31:0)
            WIRE 640 640 800 640
            WIRE 800 272 800 640
            WIRE 800 272 992 272
            WIRE 992 272 1920 272
            WIRE 1920 272 2512 272
            WIRE 1920 272 1920 640
            WIRE 1920 640 2080 640
            WIRE 2080 640 2496 640
            WIRE 2080 640 2080 1088
            WIRE 2080 1088 2528 1088
            WIRE 992 272 992 512
            WIRE 992 512 2992 512
            WIRE 2992 512 2992 1120
            WIRE 2992 1120 3376 1120
        END BRANCH
        IOMARKER 640 640 A(31:0) R180 28
        BEGIN BRANCH B(31:0)
            WIRE 640 992 800 992
            WIRE 800 992 944 992
            WIRE 944 992 1152 992
            WIRE 1152 992 1584 992
        END BRANCH
        IOMARKER 640 992 B(31:0) R180 28
        BEGIN BRANCH Sel(2:0)
            WIRE 640 1344 672 1344
            WIRE 672 1344 720 1344
            WIRE 720 1344 768 1344
            WIRE 768 1344 800 1344
        END BRANCH
        IOMARKER 640 1344 Sel(2:0) R180 28
        BEGIN BRANCH Cin
            WIRE 640 1696 800 1696
            WIRE 800 1696 1552 1696
            WIRE 1552 400 1552 1696
            WIRE 1552 400 2512 400
        END BRANCH
        IOMARKER 640 1696 Cin R180 28
        BEGIN BRANCH S(31:0)
            WIRE 4432 608 4752 608
            WIRE 4752 608 4752 752
            WIRE 4752 752 4912 752
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2896 336 2928 336
            WIRE 2928 336 2928 1232
            WIRE 2928 1232 4752 1232
            WIRE 4752 1232 4912 1232
        END BRANCH
        IOMARKER 4912 752 S(31:0) R0 28
        IOMARKER 4912 1232 Cout R0 28
        BUSTAP 672 1344 672 1440
        BUSTAP 720 1344 720 1440
        BUSTAP 768 1344 768 1440
        INSTANCE XLXI_1 1168 1616 R0
        BEGIN BRANCH Sel(1)
            WIRE 720 1440 720 1488
            WIRE 720 1488 976 1488
            WIRE 976 1488 1168 1488
            WIRE 912 448 912 1472
            WIRE 912 1472 976 1472
            WIRE 976 1472 976 1488
            WIRE 912 448 3488 448
        END BRANCH
        BEGIN BRANCH Sel(2)
            WIRE 672 1440 672 1552
            WIRE 672 1552 896 1552
            WIRE 896 1552 1168 1552
            WIRE 896 1552 896 1632
            WIRE 896 1632 2976 1632
            WIRE 2976 736 2976 1632
            WIRE 2976 736 4048 736
        END BRANCH
        INSTANCE XLXI_2 1600 1568 R0
        BEGIN BRANCH XLXN_11
            WIRE 1424 1520 1504 1520
            WIRE 1504 1504 1504 1520
            WIRE 1504 1504 1600 1504
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 768 1440 768 1504
            WIRE 768 1504 848 1504
            WIRE 848 1440 848 1504
            WIRE 848 1440 1408 1440
            WIRE 1408 1440 1600 1440
            WIRE 1344 928 1344 1408
            WIRE 1344 1408 1408 1408
            WIRE 1408 1408 1408 1440
            WIRE 1344 928 3184 928
        END BRANCH
        BEGIN INSTANCE XLXI_3 1584 1152 R0
        END INSTANCE
        BUSTAP 800 992 800 1088
        BUSTAP 944 992 944 1088
        INSTANCE XLXI_4 944 1184 R0
        INSTANCE XLXI_5 960 1312 R0
        BEGIN BRANCH B(15:0)
            WIRE 864 1104 944 1104
            WIRE 864 1104 864 1152
            WIRE 864 1152 944 1152
            WIRE 944 1088 944 1104
        END BRANCH
        BEGIN BRANCH B(31:16)
            WIRE 800 1088 800 1280
            WIRE 800 1280 960 1280
        END BRANCH
        BEGIN BRANCH XLXN_15(31:0)
            WIRE 1408 1056 1456 1056
            WIRE 1456 1056 1520 1056
            WIRE 1520 1056 1584 1056
        END BRANCH
        BUSTAP 1456 1056 1456 1152
        BUSTAP 1520 1056 1520 1152
        BEGIN BRANCH XLXN_15(15:0)
            WIRE 1168 1152 1232 1152
            WIRE 1232 1152 1232 1232
            WIRE 1232 1232 1456 1232
            WIRE 1456 1152 1456 1232
        END BRANCH
        BEGIN BRANCH XLXN_15(31:16)
            WIRE 1184 1280 1520 1280
            WIRE 1520 1152 1520 1280
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1568 896 1568 1120
            WIRE 1568 1120 1584 1120
            WIRE 1568 896 2016 896
            WIRE 2016 896 2016 1472
            WIRE 1856 1472 2016 1472
        END BRANCH
        BEGIN INSTANCE XLXI_6 2496 736 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2528 1184 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2512 432 R0
        END INSTANCE
        BEGIN BRANCH XLXN_24(31:0)
            WIRE 1968 992 2240 992
            WIRE 2240 992 2240 1152
            WIRE 2240 1152 2528 1152
            WIRE 2224 704 2496 704
            WIRE 2224 704 2224 784
            WIRE 2224 784 2224 800
            WIRE 2224 800 2240 800
            WIRE 2240 800 2240 992
            WIRE 2240 336 2512 336
            WIRE 2240 336 2240 800
        END BRANCH
        BEGIN INSTANCE XLXI_9 3184 960 R0
        END INSTANCE
        BEGIN BRANCH XLXN_25(31:0)
            WIRE 2880 640 3024 640
            WIRE 3024 640 3024 800
            WIRE 3024 800 3184 800
        END BRANCH
        BEGIN BRANCH XLXN_26(31:0)
            WIRE 2912 1088 3040 1088
            WIRE 3040 864 3040 1088
            WIRE 3040 864 3184 864
        END BRANCH
        BEGIN INSTANCE XLXI_10 3488 480 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 4048 768 R0
        END INSTANCE
        BEGIN BRANCH XLXN_27(31:0)
            WIRE 2896 272 3184 272
            WIRE 3184 272 3184 320
            WIRE 3184 320 3488 320
        END BRANCH
        BEGIN BRANCH XLXN_28(31:0)
            WIRE 3424 208 3424 384
            WIRE 3424 384 3488 384
            WIRE 3424 208 3920 208
            WIRE 3920 208 3920 800
            WIRE 3568 800 3920 800
        END BRANCH
        BEGIN BRANCH XLXN_29(31:0)
            WIRE 3872 320 3952 320
            WIRE 3952 320 3952 608
            WIRE 3952 608 4048 608
        END BRANCH
        BEGIN BRANCH XLXN_31(31:0)
            WIRE 3760 1120 3808 1120
            WIRE 3808 672 4048 672
            WIRE 3808 672 3808 880
            WIRE 3808 880 3808 944
            WIRE 3808 944 3808 1024
            WIRE 3808 1024 3808 1120
        END BRANCH
        BEGIN INSTANCE XLXI_12 3376 1152 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
