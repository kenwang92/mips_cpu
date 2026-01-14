// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Mon Jan 12 11:29:25 2026
// Host        : lily running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ instruction_memory_sim_netlist.v
// Design      : instruction_memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "instruction_memory,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "instruction_memory.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18912)
`pragma protect data_block
+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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
