// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Dec 14 09:51:53 2023
// Host        : VivoBook-ASUSLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/stefa/Documents/GitHub/ThreeNumbersAdder/Vivado_project_v1/Vivado_project_v1.sim/sim_1/impl/timing/xsim/Sim_Add_time_impl.v
// Design      : Three_Adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Register_n
   (Q,
    D,
    CLK,
    AR);
  output [7:0]Q;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "Register_n" *) 
module Register_n_1
   (\Q_reg[7]_0 ,
    Q,
    \Q_reg[8] ,
    D,
    CLK,
    AR);
  output [6:0]\Q_reg[7]_0 ;
  output [1:0]Q;
  input [7:0]\Q_reg[8] ;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [1:0]Q;
  wire \Q[4]_i_2_n_0 ;
  wire \Q[6]_i_2_n_0 ;
  wire \Q[8]_i_2_n_0 ;
  wire [6:0]\Q_reg[7]_0 ;
  wire [7:0]\Q_reg[8] ;
  wire [7:2]Ra;

  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \Q[2]_i_1 
       (.I0(Q[1]),
        .I1(\Q_reg[8] [1]),
        .I2(\Q_reg[8] [0]),
        .I3(Q[0]),
        .I4(Ra[2]),
        .I5(\Q_reg[8] [2]),
        .O(\Q_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[3]_i_1 
       (.I0(\Q[4]_i_2_n_0 ),
        .I1(Ra[3]),
        .I2(\Q_reg[8] [3]),
        .O(\Q_reg[7]_0 [1]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[4]_i_1 
       (.I0(Ra[3]),
        .I1(\Q_reg[8] [3]),
        .I2(\Q[4]_i_2_n_0 ),
        .I3(Ra[4]),
        .I4(\Q_reg[8] [4]),
        .O(\Q_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \Q[4]_i_2 
       (.I0(Q[0]),
        .I1(\Q_reg[8] [0]),
        .I2(\Q_reg[8] [1]),
        .I3(Q[1]),
        .I4(\Q_reg[8] [2]),
        .I5(Ra[2]),
        .O(\Q[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[5]_i_1 
       (.I0(\Q[6]_i_2_n_0 ),
        .I1(Ra[5]),
        .I2(\Q_reg[8] [5]),
        .O(\Q_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[6]_i_1 
       (.I0(Ra[5]),
        .I1(\Q_reg[8] [5]),
        .I2(\Q[6]_i_2_n_0 ),
        .I3(Ra[6]),
        .I4(\Q_reg[8] [6]),
        .O(\Q_reg[7]_0 [4]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[6]_i_2 
       (.I0(\Q[4]_i_2_n_0 ),
        .I1(\Q_reg[8] [3]),
        .I2(Ra[3]),
        .I3(\Q_reg[8] [4]),
        .I4(Ra[4]),
        .O(\Q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[7]_i_1 
       (.I0(\Q[8]_i_2_n_0 ),
        .I1(Ra[7]),
        .I2(\Q_reg[8] [7]),
        .O(\Q_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \Q[8]_i_1 
       (.I0(\Q[8]_i_2_n_0 ),
        .I1(Ra[7]),
        .I2(\Q_reg[8] [7]),
        .O(\Q_reg[7]_0 [6]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[8]_i_2 
       (.I0(\Q[6]_i_2_n_0 ),
        .I1(\Q_reg[8] [5]),
        .I2(Ra[5]),
        .I3(\Q_reg[8] [6]),
        .I4(Ra[6]),
        .O(\Q[8]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Ra[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Ra[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Ra[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Ra[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Ra[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Ra[7]));
endmodule

(* ORIG_REF_NAME = "Register_n" *) 
module Register_n_2
   (\Q_reg[0]_0 ,
    Q,
    \Q_reg[1]_0 ,
    \Q_reg[7]_0 ,
    CLK,
    AR);
  output [1:0]\Q_reg[0]_0 ;
  output [7:0]Q;
  input [1:0]\Q_reg[1]_0 ;
  input [7:0]\Q_reg[7]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]Q;
  wire [1:0]\Q_reg[0]_0 ;
  wire [1:0]\Q_reg[1]_0 ;
  wire [7:0]\Q_reg[7]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_1 
       (.I0(Q[0]),
        .I1(\Q_reg[1]_0 [0]),
        .O(\Q_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \Q[1]_i_1 
       (.I0(Q[0]),
        .I1(\Q_reg[1]_0 [0]),
        .I2(\Q_reg[1]_0 [1]),
        .I3(Q[1]),
        .O(\Q_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[7]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[7]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[7]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[7]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[7]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[7]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[7]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[7]_0 [7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "Register_n" *) 
module Register_n__parameterized2
   (\Q_reg[7]_0 ,
    Q,
    \Q_reg[9] ,
    D,
    CLK,
    AR);
  output [7:0]\Q_reg[7]_0 ;
  output [1:0]Q;
  input [7:0]\Q_reg[9] ;
  input [8:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [8:0]D;
  wire [1:0]Q;
  wire \Q[4]_i_2__0_n_0 ;
  wire \Q[6]_i_2__0_n_0 ;
  wire \Q[9]_i_2_n_0 ;
  wire [7:0]\Q_reg[7]_0 ;
  wire [7:0]\Q_reg[9] ;
  wire [8:2]Ra;

  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \Q[2]_i_1__0 
       (.I0(Q[1]),
        .I1(\Q_reg[9] [1]),
        .I2(\Q_reg[9] [0]),
        .I3(Q[0]),
        .I4(Ra[2]),
        .I5(\Q_reg[9] [2]),
        .O(\Q_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[3]_i_1__0 
       (.I0(\Q[4]_i_2__0_n_0 ),
        .I1(Ra[3]),
        .I2(\Q_reg[9] [3]),
        .O(\Q_reg[7]_0 [1]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[4]_i_1__0 
       (.I0(Ra[3]),
        .I1(\Q_reg[9] [3]),
        .I2(\Q[4]_i_2__0_n_0 ),
        .I3(Ra[4]),
        .I4(\Q_reg[9] [4]),
        .O(\Q_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \Q[4]_i_2__0 
       (.I0(Q[0]),
        .I1(\Q_reg[9] [0]),
        .I2(\Q_reg[9] [1]),
        .I3(Q[1]),
        .I4(\Q_reg[9] [2]),
        .I5(Ra[2]),
        .O(\Q[4]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[5]_i_1__0 
       (.I0(\Q[6]_i_2__0_n_0 ),
        .I1(Ra[5]),
        .I2(\Q_reg[9] [5]),
        .O(\Q_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Q[6]_i_1__0 
       (.I0(Ra[5]),
        .I1(\Q_reg[9] [5]),
        .I2(\Q[6]_i_2__0_n_0 ),
        .I3(Ra[6]),
        .I4(\Q_reg[9] [6]),
        .O(\Q_reg[7]_0 [4]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[6]_i_2__0 
       (.I0(\Q[4]_i_2__0_n_0 ),
        .I1(\Q_reg[9] [3]),
        .I2(Ra[3]),
        .I3(\Q_reg[9] [4]),
        .I4(Ra[4]),
        .O(\Q[6]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[7]_i_1__0 
       (.I0(\Q[9]_i_2_n_0 ),
        .I1(Ra[7]),
        .I2(\Q_reg[9] [7]),
        .O(\Q_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hE178)) 
    \Q[8]_i_1__0 
       (.I0(Ra[7]),
        .I1(\Q[9]_i_2_n_0 ),
        .I2(Ra[8]),
        .I3(\Q_reg[9] [7]),
        .O(\Q_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF170)) 
    \Q[9]_i_1 
       (.I0(Ra[7]),
        .I1(\Q[9]_i_2_n_0 ),
        .I2(Ra[8]),
        .I3(\Q_reg[9] [7]),
        .O(\Q_reg[7]_0 [7]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[9]_i_2 
       (.I0(\Q[6]_i_2__0_n_0 ),
        .I1(\Q_reg[9] [5]),
        .I2(Ra[5]),
        .I3(\Q_reg[9] [6]),
        .I4(Ra[6]),
        .O(\Q[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Ra[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Ra[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Ra[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Ra[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Ra[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Ra[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Ra[8]));
endmodule

(* ORIG_REF_NAME = "Register_n" *) 
module Register_n__parameterized2_0
   (\Q_reg[0]_0 ,
    Q,
    \Q_reg[1]_0 ,
    \Q_reg[8]_0 ,
    CLK,
    AR);
  output [1:0]\Q_reg[0]_0 ;
  output [7:0]Q;
  input [1:0]\Q_reg[1]_0 ;
  input [7:0]\Q_reg[8]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]Q;
  wire [1:0]\Q_reg[0]_0 ;
  wire [1:0]\Q_reg[1]_0 ;
  wire [7:0]\Q_reg[8]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\Q_reg[1]_0 [0]),
        .O(\Q_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \Q[1]_i_1__0 
       (.I0(Q[0]),
        .I1(\Q_reg[1]_0 [0]),
        .I2(\Q_reg[1]_0 [1]),
        .I3(Q[1]),
        .O(\Q_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[8]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[8]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[8]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[8]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[8]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[8]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[8]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[8]_0 [7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "Register_n" *) 
module Register_n__parameterized4
   (Q,
    D,
    CLK,
    AR);
  output [9:0]Q;
  input [9:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [9:0]D;
  wire [9:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

module Synched_adder
   (\Q_reg[7] ,
    D,
    CLK,
    AR,
    \Q_reg[7]_0 );
  output [8:0]\Q_reg[7] ;
  input [7:0]D;
  input CLK;
  input [0:0]AR;
  input [7:0]\Q_reg[7]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [8:0]\Q_reg[7] ;
  wire [7:0]\Q_reg[7]_0 ;
  wire [1:0]Ra;
  wire [7:0]Rb;

  Register_n_1 RegA
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .Q(Ra),
        .\Q_reg[7]_0 (\Q_reg[7] [8:2]),
        .\Q_reg[8] (Rb));
  Register_n_2 RegB
       (.AR(AR),
        .CLK(CLK),
        .Q(Rb),
        .\Q_reg[0]_0 (\Q_reg[7] [1:0]),
        .\Q_reg[1]_0 (Ra),
        .\Q_reg[7]_0 (\Q_reg[7]_0 ));
endmodule

(* ORIG_REF_NAME = "Synched_adder" *) 
module Synched_adder__parameterized1
   (\Q_reg[7] ,
    D,
    CLK,
    AR,
    \Q_reg[8] );
  output [9:0]\Q_reg[7] ;
  input [8:0]D;
  input CLK;
  input [0:0]AR;
  input [7:0]\Q_reg[8] ;

  wire [0:0]AR;
  wire CLK;
  wire [8:0]D;
  wire [9:0]\Q_reg[7] ;
  wire [7:0]\Q_reg[8] ;
  wire [1:0]Ra;
  wire [8:0]Rb;

  Register_n__parameterized2 RegA
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .Q(Ra),
        .\Q_reg[7]_0 (\Q_reg[7] [9:2]),
        .\Q_reg[9] ({Rb[8],Rb[6:0]}));
  Register_n__parameterized2_0 RegB
       (.AR(AR),
        .CLK(CLK),
        .Q({Rb[8],Rb[6:0]}),
        .\Q_reg[0]_0 (\Q_reg[7] [1:0]),
        .\Q_reg[1]_0 (Ra),
        .\Q_reg[8]_0 (\Q_reg[8] ));
endmodule

(* ECO_CHECKSUM = "bd623869" *) (* n = "8" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module Three_Adder
   (A,
    B,
    C,
    R,
    CLK,
    Clear);
  input [7:0]A;
  input [7:0]B;
  input [7:0]C;
  output [9:0]R;
  input CLK;
  input Clear;

  wire [7:0]A;
  wire [7:0]A_IBUF;
  wire [0:0]\Adder1/p ;
  wire [0:0]\Adder1/p_0 ;
  wire [7:0]B;
  wire [7:0]B_IBUF;
  wire [7:0]C;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [7:0]C_IBUF;
  wire Clear;
  wire Clear_IBUF;
  wire [7:0]Q;
  wire [9:0]R;
  wire [9:1]RSF;
  wire [9:0]R_OBUF;
  wire [8:1]Rs;

initial begin
 $sdf_annotate("Sim_Add_time_impl.sdf",,,,"tool_control");
end
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF \C_IBUF[0]_inst 
       (.I(C[0]),
        .O(C_IBUF[0]));
  IBUF \C_IBUF[1]_inst 
       (.I(C[1]),
        .O(C_IBUF[1]));
  IBUF \C_IBUF[2]_inst 
       (.I(C[2]),
        .O(C_IBUF[2]));
  IBUF \C_IBUF[3]_inst 
       (.I(C[3]),
        .O(C_IBUF[3]));
  IBUF \C_IBUF[4]_inst 
       (.I(C[4]),
        .O(C_IBUF[4]));
  IBUF \C_IBUF[5]_inst 
       (.I(C[5]),
        .O(C_IBUF[5]));
  IBUF \C_IBUF[6]_inst 
       (.I(C[6]),
        .O(C_IBUF[6]));
  IBUF \C_IBUF[7]_inst 
       (.I(C[7]),
        .O(C_IBUF[7]));
  IBUF Clear_IBUF_inst
       (.I(Clear),
        .O(Clear_IBUF));
  OBUF \R_OBUF[0]_inst 
       (.I(R_OBUF[0]),
        .O(R[0]));
  OBUF \R_OBUF[1]_inst 
       (.I(R_OBUF[1]),
        .O(R[1]));
  OBUF \R_OBUF[2]_inst 
       (.I(R_OBUF[2]),
        .O(R[2]));
  OBUF \R_OBUF[3]_inst 
       (.I(R_OBUF[3]),
        .O(R[3]));
  OBUF \R_OBUF[4]_inst 
       (.I(R_OBUF[4]),
        .O(R[4]));
  OBUF \R_OBUF[5]_inst 
       (.I(R_OBUF[5]),
        .O(R[5]));
  OBUF \R_OBUF[6]_inst 
       (.I(R_OBUF[6]),
        .O(R[6]));
  OBUF \R_OBUF[7]_inst 
       (.I(R_OBUF[7]),
        .O(R[7]));
  OBUF \R_OBUF[8]_inst 
       (.I(R_OBUF[8]),
        .O(R[8]));
  OBUF \R_OBUF[9]_inst 
       (.I(R_OBUF[9]),
        .O(R[9]));
  Register_n RegC
       (.AR(Clear_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(C_IBUF),
        .Q(Q));
  Register_n__parameterized4 RegSF
       (.AR(Clear_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D({RSF,\Adder1/p_0 }),
        .Q(R_OBUF));
  Synched_adder SA1
       (.AR(Clear_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(A_IBUF),
        .\Q_reg[7] ({Rs,\Adder1/p }),
        .\Q_reg[7]_0 (B_IBUF));
  Synched_adder__parameterized1 SA2
       (.AR(Clear_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D({Rs,\Adder1/p }),
        .\Q_reg[7] ({RSF,\Adder1/p_0 }),
        .\Q_reg[8] (Q));
endmodule
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
