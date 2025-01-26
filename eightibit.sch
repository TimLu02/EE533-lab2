VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL Cin
        SIGNAL S(7:0)
        SIGNAL A(0)
        SIGNAL A(1)
        SIGNAL B(0)
        SIGNAL B(1)
        SIGNAL XLXN_10
        SIGNAL S(0)
        SIGNAL A(2)
        SIGNAL A(3)
        SIGNAL A(4)
        SIGNAL A(5)
        SIGNAL A(6)
        SIGNAL A(7)
        SIGNAL Cout
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL B(7)
        SIGNAL B(6)
        SIGNAL B(5)
        SIGNAL B(4)
        SIGNAL B(3)
        SIGNAL B(2)
        SIGNAL S(7)
        SIGNAL S(6)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Input Cin
        PORT Output S(7:0)
        PORT Output Cout
        BEGIN BLOCKDEF onebit
            TIMESTAMP 2025 1 26 22 39 24
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 onebit
            PIN a A(1)
            PIN b B(1)
            PIN cin XLXN_10
            PIN cout XLXN_24
            PIN s S(1)
        END BLOCK
        BEGIN BLOCK XLXI_2 onebit
            PIN a A(0)
            PIN b B(0)
            PIN cin Cin
            PIN cout XLXN_10
            PIN s S(0)
        END BLOCK
        BEGIN BLOCK XLXI_3 onebit
            PIN a A(2)
            PIN b B(2)
            PIN cin XLXN_24
            PIN cout XLXN_26
            PIN s S(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 onebit
            PIN a A(3)
            PIN b B(3)
            PIN cin XLXN_26
            PIN cout XLXN_25
            PIN s S(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 onebit
            PIN a A(4)
            PIN b B(4)
            PIN cin XLXN_25
            PIN cout XLXN_27
            PIN s S(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 onebit
            PIN a A(5)
            PIN b B(5)
            PIN cin XLXN_27
            PIN cout XLXN_28
            PIN s S(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 onebit
            PIN a A(6)
            PIN b B(6)
            PIN cin XLXN_28
            PIN cout XLXN_29
            PIN s S(6)
        END BLOCK
        BEGIN BLOCK XLXI_8 onebit
            PIN a A(7)
            PIN b B(7)
            PIN cin XLXN_29
            PIN cout Cout
            PIN s S(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(7:0)
            WIRE 640 640 800 640
            WIRE 800 64 800 112
            WIRE 800 112 800 176
            WIRE 800 176 800 240
            WIRE 800 240 800 304
            WIRE 800 304 800 368
            WIRE 800 368 800 448
            WIRE 800 448 800 528
            WIRE 800 528 800 608
            WIRE 800 608 800 640
        END BRANCH
        IOMARKER 640 640 A(7:0) R180 28
        BEGIN BRANCH B(7:0)
            WIRE 640 1120 688 1120
            WIRE 688 1120 752 1120
            WIRE 752 1120 800 1120
            WIRE 800 752 800 816
            WIRE 800 816 800 880
            WIRE 800 880 800 944
            WIRE 800 944 800 992
            WIRE 800 992 800 1040
            WIRE 800 1040 800 1088
            WIRE 800 1088 800 1120
        END BRANCH
        IOMARKER 640 1120 B(7:0) R180 28
        BEGIN BRANCH Cin
            WIRE 640 1600 800 1600
            WIRE 800 1600 1088 1600
            WIRE 1088 272 1088 1600
            WIRE 1088 272 1376 272
        END BRANCH
        IOMARKER 640 1600 Cin R180 28
        IOMARKER 2880 640 S(7:0) R0 28
        IOMARKER 2880 1120 Cout R0 28
        BEGIN INSTANCE XLXI_1 1392 816 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1376 304 R0
        END INSTANCE
        BUSTAP 800 112 896 112
        BUSTAP 800 176 896 176
        BUSTAP 800 816 896 816
        BUSTAP 800 880 896 880
        BEGIN BRANCH A(0)
            WIRE 896 112 1136 112
            WIRE 1136 112 1136 144
            WIRE 1136 144 1376 144
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 896 176 1136 176
            WIRE 1136 176 1136 656
            WIRE 1136 656 1392 656
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 896 816 1120 816
            WIRE 1120 208 1120 816
            WIRE 1120 208 1376 208
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 896 880 1136 880
            WIRE 1136 720 1136 880
            WIRE 1136 720 1392 720
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1328 544 1328 784
            WIRE 1328 784 1392 784
            WIRE 1328 544 1840 544
            WIRE 1760 208 1840 208
            WIRE 1840 208 1840 544
        END BRANCH
        BUSTAP 2752 640 2752 544
        BUSTAP 2816 640 2816 544
        BEGIN BRANCH S(0)
            WIRE 1760 144 2816 144
            WIRE 2816 144 2816 544
        END BRANCH
        BEGIN INSTANCE XLXI_3 1376 1152 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1376 1456 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1392 1808 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1376 2144 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1360 2544 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2144 2496 R0
        END INSTANCE
        BUSTAP 800 240 896 240
        BUSTAP 800 304 896 304
        BUSTAP 800 368 896 368
        BUSTAP 800 528 896 528
        BUSTAP 800 608 896 608
        BUSTAP 800 448 896 448
        BEGIN BRANCH A(2)
            WIRE 896 240 1104 240
            WIRE 1104 240 1104 992
            WIRE 1104 992 1376 992
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 896 304 1152 304
            WIRE 1152 304 1152 1296
            WIRE 1152 1296 1376 1296
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 896 368 1168 368
            WIRE 1168 368 1168 1648
            WIRE 1168 1648 1392 1648
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 896 448 1184 448
            WIRE 1184 448 1184 1984
            WIRE 1184 1984 1376 1984
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 896 528 1072 528
            WIRE 1072 528 1072 2384
            WIRE 1072 2384 1360 2384
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 896 608 976 608
            WIRE 976 608 976 2336
            WIRE 976 2336 2144 2336
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2528 2400 2704 2400
            WIRE 2704 1120 2704 2400
            WIRE 2704 1120 2880 1120
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1296 880 1296 1120
            WIRE 1296 1120 1376 1120
            WIRE 1296 880 1856 880
            WIRE 1776 720 1856 720
            WIRE 1856 720 1856 880
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1328 1552 1328 1776
            WIRE 1328 1776 1392 1776
            WIRE 1328 1552 1840 1552
            WIRE 1760 1360 1840 1360
            WIRE 1840 1360 1840 1552
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1296 1424 1376 1424
            WIRE 1296 1424 1296 1520
            WIRE 1296 1520 1824 1520
            WIRE 1760 1056 1824 1056
            WIRE 1824 1056 1824 1520
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1312 2112 1376 2112
            WIRE 1312 2112 1312 2208
            WIRE 1312 2208 1856 2208
            WIRE 1776 1712 1856 1712
            WIRE 1856 1712 1856 2208
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1296 2272 1296 2512
            WIRE 1296 2512 1360 2512
            WIRE 1296 2272 1824 2272
            WIRE 1760 2048 1824 2048
            WIRE 1824 2048 1824 2272
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1744 2448 1936 2448
            WIRE 1936 2448 1936 2464
            WIRE 1936 2464 2144 2464
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 2336 656 2384 656
            WIRE 2384 656 2448 656
            WIRE 2448 656 2496 656
            WIRE 2496 656 2560 656
            WIRE 2560 656 2624 656
            WIRE 2624 656 2688 656
            WIRE 2688 656 2720 656
            WIRE 2720 640 2752 640
            WIRE 2752 640 2816 640
            WIRE 2816 640 2880 640
            WIRE 2720 640 2720 656
        END BRANCH
        BUSTAP 2688 656 2688 560
        BUSTAP 2624 656 2624 560
        BUSTAP 2560 656 2560 560
        BUSTAP 2496 656 2496 560
        BUSTAP 2448 656 2448 560
        BUSTAP 2384 656 2384 560
        BUSTAP 800 944 896 944
        BUSTAP 800 992 896 992
        BUSTAP 800 1040 896 1040
        BUSTAP 800 1088 896 1088
        BUSTAP 688 1120 688 1216
        BUSTAP 752 1120 752 1216
        BEGIN BRANCH B(7)
            WIRE 688 1216 688 1472
            WIRE 688 1472 1808 1472
            WIRE 1808 1472 1808 2400
            WIRE 1808 2400 2144 2400
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 752 1216 752 2448
            WIRE 752 2448 1360 2448
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 896 1088 1136 1088
            WIRE 1136 1088 1136 2048
            WIRE 1136 2048 1376 2048
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 896 1040 1120 1040
            WIRE 1120 1040 1120 1712
            WIRE 1120 1712 1392 1712
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 896 992 1056 992
            WIRE 1056 992 1056 1360
            WIRE 1056 1360 1376 1360
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 896 944 1136 944
            WIRE 1136 944 1136 1056
            WIRE 1136 1056 1376 1056
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 2384 480 2384 560
            WIRE 2384 480 2784 480
            WIRE 2784 480 2784 2336
            WIRE 2528 2336 2784 2336
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 1744 2384 1792 2384
            WIRE 1792 464 1792 2384
            WIRE 1792 464 2448 464
            WIRE 2448 464 2448 560
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 1760 1984 1920 1984
            WIRE 1920 496 1920 1984
            WIRE 1920 496 2496 496
            WIRE 2496 496 2496 560
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 1776 1648 1904 1648
            WIRE 1904 512 1904 1648
            WIRE 1904 512 2560 512
            WIRE 2560 512 2560 560
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1760 1296 1808 1296
            WIRE 1808 384 1808 1296
            WIRE 1808 384 2624 384
            WIRE 2624 384 2624 560
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 1760 992 1872 992
            WIRE 1872 400 1872 992
            WIRE 1872 400 2688 400
            WIRE 2688 400 2688 560
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1776 656 1824 656
            WIRE 1824 528 1824 656
            WIRE 1824 528 2752 528
            WIRE 2752 528 2752 544
        END BRANCH
    END SHEET
END SCHEMATIC
