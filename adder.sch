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
        SIGNAL Cin
        SIGNAL S(31:0)
        SIGNAL XLXN_6
        SIGNAL A(7:0)
        SIGNAL A(15:8)
        SIGNAL B(7:0)
        SIGNAL B(15:8)
        SIGNAL S(7:0)
        SIGNAL S(15:8)
        SIGNAL S(23:16)
        SIGNAL S(31:24)
        SIGNAL Cout
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL A(23:16)
        SIGNAL A(31:24)
        SIGNAL B(23:16)
        SIGNAL B(31:24)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Input Cin
        PORT Output S(31:0)
        PORT Output Cout
        BEGIN BLOCKDEF eightibit
            TIMESTAMP 2025 1 26 23 41 55
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
        BEGIN BLOCK XLXI_1 eightibit
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN Cin Cin
            PIN Cout XLXN_6
            PIN S(7:0) S(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 eightibit
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN Cin XLXN_6
            PIN Cout XLXN_19
            PIN S(7:0) S(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_3 eightibit
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN Cin XLXN_19
            PIN Cout XLXN_20
            PIN S(7:0) S(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 eightibit
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN Cin XLXN_20
            PIN Cout Cout
            PIN S(7:0) S(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(31:0)
            WIRE 640 640 704 640
            WIRE 704 640 800 640
            WIRE 800 400 800 464
            WIRE 800 464 800 528
            WIRE 800 528 800 608
            WIRE 800 608 800 640
        END BRANCH
        IOMARKER 640 640 A(31:0) R180 28
        BEGIN BRANCH B(31:0)
            WIRE 640 1120 688 1120
            WIRE 688 1120 768 1120
            WIRE 768 1120 800 1120
            WIRE 800 832 800 912
            WIRE 800 912 800 1008
            WIRE 800 1008 800 1120
        END BRANCH
        IOMARKER 640 1120 B(31:0) R180 28
        BEGIN BRANCH Cin
            WIRE 640 1600 800 1600
            WIRE 800 1600 1072 1600
            WIRE 1072 736 1072 1600
            WIRE 1072 736 1344 736
        END BRANCH
        IOMARKER 640 1600 Cin R180 28
        BEGIN BRANCH S(31:0)
            WIRE 2496 640 2560 640
            WIRE 2560 640 2640 640
            WIRE 2640 640 2720 640
            WIRE 2720 640 2768 640
            WIRE 2768 640 2816 640
            WIRE 2816 640 2880 640
        END BRANCH
        IOMARKER 2880 640 S(31:0) R0 28
        IOMARKER 2880 1120 Cout R0 28
        BEGIN INSTANCE XLXI_1 1344 768 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1376 1296 R0
        END INSTANCE
        BEGIN BRANCH XLXN_6
            WIRE 1296 1264 1376 1264
            WIRE 1296 1264 1296 1376
            WIRE 1296 1376 1840 1376
            WIRE 1728 672 1840 672
            WIRE 1840 672 1840 1376
        END BRANCH
        BUSTAP 800 464 896 464
        BUSTAP 800 528 896 528
        BUSTAP 800 912 896 912
        BUSTAP 800 1008 896 1008
        BEGIN BRANCH A(7:0)
            WIRE 896 464 1120 464
            WIRE 1120 464 1120 608
            WIRE 1120 608 1344 608
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 896 528 1056 528
            WIRE 1056 528 1056 1136
            WIRE 1056 1136 1376 1136
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 896 912 1040 912
            WIRE 1040 672 1040 912
            WIRE 1040 672 1344 672
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 896 1008 1040 1008
            WIRE 1040 1008 1040 1200
            WIRE 1040 1200 1376 1200
        END BRANCH
        BUSTAP 2768 640 2768 736
        BUSTAP 2816 640 2816 736
        BEGIN BRANCH S(7:0)
            WIRE 1728 608 1792 608
            WIRE 1792 608 1792 816
            WIRE 1792 816 2768 816
            WIRE 2768 736 2768 816
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 1760 1136 2816 1136
            WIRE 2816 736 2816 1136
        END BRANCH
        BEGIN INSTANCE XLXI_3 1376 1632 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1408 1888 R0
        END INSTANCE
        BUSTAP 688 1120 688 1216
        BUSTAP 768 1120 768 1216
        BUSTAP 704 640 704 736
        BUSTAP 800 608 896 608
        BUSTAP 2640 640 2640 544
        BUSTAP 2560 640 2560 544
        BEGIN BRANCH S(23:16)
            WIRE 1760 1472 1776 1472
            WIRE 1776 480 1776 1472
            WIRE 1776 480 2640 480
            WIRE 2640 480 2640 544
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 1792 1728 1872 1728
            WIRE 1872 496 1872 1728
            WIRE 1872 496 2560 496
            WIRE 2560 496 2560 544
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1792 1792 2336 1792
            WIRE 2336 1120 2336 1792
            WIRE 2336 1120 2880 1120
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1312 1600 1376 1600
            WIRE 1312 1600 1312 1648
            WIRE 1312 1648 1824 1648
            WIRE 1760 1200 1824 1200
            WIRE 1824 1200 1824 1648
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1328 1856 1408 1856
            WIRE 1328 1856 1328 1952
            WIRE 1328 1952 1856 1952
            WIRE 1760 1536 1856 1536
            WIRE 1856 1536 1856 1952
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 896 608 1104 608
            WIRE 1104 608 1104 1472
            WIRE 1104 1472 1376 1472
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 656 800 704 800
            WIRE 656 800 656 1728
            WIRE 656 1728 1408 1728
            WIRE 704 736 704 800
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 768 1216 768 1536
            WIRE 768 1536 1376 1536
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 688 1216 688 1792
            WIRE 688 1792 1408 1792
        END BRANCH
    END SHEET
END SCHEMATIC
