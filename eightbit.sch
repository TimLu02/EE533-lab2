VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL Cin
        SIGNAL S(7:0)
        SIGNAL Cout
        SIGNAL A(0)
        SIGNAL A(1)
        SIGNAL A(2)
        SIGNAL A(3)
        SIGNAL A(4)
        SIGNAL A(5)
        SIGNAL A(6)
        SIGNAL A(7)
        SIGNAL B(0)
        SIGNAL B(1)
        SIGNAL B(2)
        SIGNAL B(3)
        SIGNAL B(4)
        SIGNAL B(5)
        SIGNAL B(6)
        SIGNAL B(7)
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL S(0)
        SIGNAL S(1)
        SIGNAL S(2)
        SIGNAL S(3)
        SIGNAL S(4)
        SIGNAL S(5)
        SIGNAL S(6)
        SIGNAL S(7)
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Input Cin
        PORT Output S(7:0)
        PORT Output Cout
        BEGIN BLOCKDEF onebit
            TIMESTAMP 2025 1 25 7 17 5
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 onebit
            PIN a A(0)
            PIN b B(0)
            PIN cin Cin
            PIN cout XLXN_32
            PIN s S(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 onebit
            PIN a A(1)
            PIN b B(1)
            PIN cin XLXN_32
            PIN cout XLXN_31
            PIN s S(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 onebit
            PIN a A(2)
            PIN b B(2)
            PIN cin XLXN_31
            PIN cout XLXN_29
            PIN s S(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 onebit
            PIN a A(3)
            PIN b B(3)
            PIN cin XLXN_29
            PIN cout XLXN_28
            PIN s S(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 onebit
            PIN a A(4)
            PIN b B(4)
            PIN cin XLXN_28
            PIN cout XLXN_27
            PIN s S(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 onebit
            PIN a A(5)
            PIN b B(5)
            PIN cin XLXN_27
            PIN cout XLXN_26
            PIN s S(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 onebit
            PIN a A(6)
            PIN b B(6)
            PIN cin XLXN_26
            PIN cout XLXN_25
            PIN s S(6)
        END BLOCK
        BEGIN BLOCK XLXI_8 onebit
            PIN a A(7)
            PIN b B(7)
            PIN cin XLXN_25
            PIN cout Cout
            PIN s S(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(7:0)
            WIRE 640 640 800 640
            WIRE 784 64 784 80
            WIRE 784 80 800 80
            WIRE 800 80 800 112
            WIRE 800 112 800 160
            WIRE 800 160 800 224
            WIRE 800 224 800 288
            WIRE 800 288 800 352
            WIRE 800 352 800 416
            WIRE 800 416 800 480
            WIRE 800 480 800 560
            WIRE 800 560 800 640
            WIRE 784 64 1680 64
            WIRE 1680 64 1792 64
            WIRE 1792 64 1792 80
        END BRANCH
        IOMARKER 640 640 A(7:0) R180 28
        BEGIN BRANCH B(7:0)
            WIRE 640 1120 688 1120
            WIRE 688 1120 752 1120
            WIRE 752 1120 800 1120
            WIRE 800 704 800 736
            WIRE 800 736 800 800
            WIRE 800 800 800 880
            WIRE 800 880 800 960
            WIRE 800 960 800 1040
            WIRE 800 1040 800 1104
            WIRE 800 1104 800 1120
        END BRANCH
        IOMARKER 640 1120 B(7:0) R180 28
        BEGIN BRANCH Cin
            WIRE 640 1600 800 1600
            WIRE 800 1600 1088 1600
            WIRE 1088 304 1088 1600
            WIRE 1088 304 1104 304
        END BRANCH
        IOMARKER 640 1600 Cin R180 28
        BEGIN BRANCH S(7:0)
            WIRE 2704 48 2720 48
            WIRE 2720 48 2720 80
            WIRE 2720 80 2720 128
            WIRE 2720 128 2720 192
            WIRE 2720 192 2720 240
            WIRE 2720 240 2720 288
            WIRE 2720 288 2720 336
            WIRE 2720 336 2720 384
            WIRE 2720 384 2720 464
            WIRE 2720 464 2720 640
            WIRE 2720 640 2880 640
        END BRANCH
        IOMARKER 2880 640 S(7:0) R0 28
        BEGIN BRANCH Cout
            WIRE 2272 2320 2720 2320
            WIRE 2720 1120 2880 1120
            WIRE 2720 1120 2720 2320
        END BRANCH
        IOMARKER 2880 1120 Cout R0 28
        BEGIN INSTANCE XLXI_1 1104 336 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1104 720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1104 1216 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1120 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1120 1984 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1120 2320 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1120 2640 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1888 2416 R0
        END INSTANCE
        BUSTAP 800 112 896 112
        BUSTAP 800 160 896 160
        BUSTAP 800 224 896 224
        BUSTAP 800 288 896 288
        BUSTAP 800 352 896 352
        BUSTAP 800 416 896 416
        BUSTAP 800 480 896 480
        BEGIN BRANCH A(0)
            WIRE 896 112 992 112
            WIRE 992 112 992 176
            WIRE 992 176 1104 176
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 896 160 976 160
            WIRE 976 160 976 560
            WIRE 976 560 1104 560
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 896 224 960 224
            WIRE 960 224 960 1056
            WIRE 960 1056 1104 1056
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 896 288 944 288
            WIRE 944 288 944 1424
            WIRE 944 1424 1120 1424
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 896 352 928 352
            WIRE 928 352 928 1824
            WIRE 928 1824 1120 1824
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 896 416 912 416
            WIRE 912 416 912 2160
            WIRE 912 2160 1120 2160
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 896 480 1008 480
            WIRE 1008 480 1008 2480
            WIRE 1008 2480 1120 2480
        END BRANCH
        BUSTAP 1680 64 1680 160
        BEGIN BRANCH A(7)
            WIRE 1680 160 1680 2256
            WIRE 1680 2256 1888 2256
        END BRANCH
        BUSTAP 800 736 896 736
        BUSTAP 800 800 896 800
        BUSTAP 800 880 896 880
        BUSTAP 800 960 896 960
        BUSTAP 800 1040 896 1040
        BEGIN BRANCH B(0)
            WIRE 896 736 992 736
            WIRE 992 240 992 736
            WIRE 992 240 1104 240
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 896 800 1024 800
            WIRE 1024 624 1024 800
            WIRE 1024 624 1104 624
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 896 880 992 880
            WIRE 992 880 992 1120
            WIRE 992 1120 1104 1120
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 896 960 976 960
            WIRE 976 960 976 1488
            WIRE 976 1488 1120 1488
        END BRANCH
        BUSTAP 800 1104 896 1104
        BUSTAP 752 1120 752 1216
        BUSTAP 688 1120 688 1024
        BEGIN BRANCH B(4)
            WIRE 896 1040 1024 1040
            WIRE 1024 1040 1024 1888
            WIRE 1024 1888 1120 1888
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 896 1104 960 1104
            WIRE 960 1104 960 2224
            WIRE 960 2224 1120 2224
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 752 1216 752 2544
            WIRE 752 2544 1120 2544
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 688 992 688 1024
            WIRE 688 992 1568 992
            WIRE 1568 992 1568 2320
            WIRE 1568 2320 1888 2320
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1504 2544 1696 2544
            WIRE 1696 2384 1696 2544
            WIRE 1696 2384 1888 2384
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1056 2608 1120 2608
            WIRE 1056 2608 1056 2704
            WIRE 1056 2704 1552 2704
            WIRE 1504 2224 1552 2224
            WIRE 1552 2224 1552 2704
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1040 2288 1120 2288
            WIRE 1040 2288 1040 2400
            WIRE 1040 2400 1536 2400
            WIRE 1504 1888 1536 1888
            WIRE 1536 1888 1536 2400
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1056 1952 1120 1952
            WIRE 1056 1952 1056 2064
            WIRE 1056 2064 1552 2064
            WIRE 1504 1488 1552 1488
            WIRE 1552 1488 1552 2064
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1056 1552 1120 1552
            WIRE 1056 1552 1056 1648
            WIRE 1056 1648 1584 1648
            WIRE 1488 1120 1584 1120
            WIRE 1584 1120 1584 1648
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1040 960 1040 1184
            WIRE 1040 1184 1104 1184
            WIRE 1040 960 1568 960
            WIRE 1488 624 1568 624
            WIRE 1568 624 1568 960
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1040 688 1104 688
            WIRE 1040 688 1040 784
            WIRE 1040 784 1552 784
            WIRE 1488 240 1552 240
            WIRE 1552 240 1552 784
        END BRANCH
        BUSTAP 2720 80 2624 80
        BUSTAP 2720 128 2624 128
        BUSTAP 2720 192 2624 192
        BUSTAP 2720 240 2624 240
        BUSTAP 2720 288 2624 288
        BUSTAP 2720 336 2624 336
        BUSTAP 2720 384 2624 384
        BUSTAP 2720 464 2624 464
        BEGIN BRANCH S(0)
            WIRE 1488 176 2048 176
            WIRE 2048 80 2048 176
            WIRE 2048 80 2624 80
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1488 560 2064 560
            WIRE 2064 128 2064 560
            WIRE 2064 128 2624 128
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 1488 1056 2080 1056
            WIRE 2080 192 2080 1056
            WIRE 2080 192 2624 192
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1504 1424 2096 1424
            WIRE 2096 240 2096 1424
            WIRE 2096 240 2624 240
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 1504 1824 2112 1824
            WIRE 2112 288 2112 1824
            WIRE 2112 288 2624 288
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 1504 2160 2128 2160
            WIRE 2128 336 2128 2160
            WIRE 2128 336 2624 336
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 1504 2480 1664 2480
            WIRE 1664 384 1664 2480
            WIRE 1664 384 2624 384
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 2272 2256 2448 2256
            WIRE 2448 464 2448 2256
            WIRE 2448 464 2624 464
        END BRANCH
    END SHEET
END SCHEMATIC
