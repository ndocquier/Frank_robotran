%
%-------------------------------------------------------------
%
%	ROBOTRAN - Version 6.6 (build : february 22, 2008)
%
%	Copyright 
%	Universite catholique de Louvain 
%	Departement de Mecanique 
%	Unite de Production Mecanique et Machines 
%	2, Place du Levant 
%	1348 Louvain-la-Neuve 
%	http://www.robotran.be// 
%
%	==> Generation Date : Sat Jul 15 16:15:34 2017
%
%	==> Project name : Frank_segway
%	==> using XML input file 
%
%	==> Number of joints : 17
%
%	==> Function : F 1 : Direct Dynamics (Semi-Explicit formulation) : RNEA
%	==> Flops complexity : 4287
%
%	==> Generation Time :  0.040 seconds
%	==> Post-Processing :  0.070 seconds
%
%-------------------------------------------------------------
%
function [M,c] = dirdyna(s,tsim,usrfun)

 M = zeros(17,17);
 c = zeros(17,1);

q = s.q; 
qd = s.qd; 
qdd = s.qdd; 
frc = s.frc; 
trq = s.trq; 

% === begin imp_aux === 

% === end imp_aux === 

% ===== BEGIN task 0 ===== 

% = = Block_0_0_0_0_0_1 = = 
 
% Trigonometric Variables  

  C4 = cos(q(4));
  S4 = sin(q(4));
  C5 = cos(q(5));
  S5 = sin(q(5));
  C6 = cos(q(6));
  S6 = sin(q(6));

% = = Block_0_0_0_0_0_2 = = 
 
% Augmented Joint Position Vectors   

  Dz73 = q(7)+s.dpt(3,2);

% = = Block_0_0_0_0_0_3 = = 
 
% Trigonometric Variables  

  C8 = cos(q(8));
  S8 = sin(q(8));
  C9 = cos(q(9));
  S9 = sin(q(9));
  C10 = cos(q(10));
  S10 = sin(q(10));

% = = Block_0_0_0_0_0_4 = = 
 
% Trigonometric Variables  

  C11 = cos(q(11));
  S11 = sin(q(11));
  C12 = cos(q(12));
  S12 = sin(q(12));
  C13 = cos(q(13));
  S13 = sin(q(13));

% = = Block_0_0_0_0_0_5 = = 
 
% Trigonometric Variables  

  C14 = cos(q(14));
  S14 = sin(q(14));
  C15 = cos(q(15));
  S15 = sin(q(15));

% = = Block_0_0_0_0_0_6 = = 
 
% Trigonometric Variables  

  C16 = cos(q(16));
  S16 = sin(q(16));

% = = Block_0_0_0_0_0_7 = = 
 
% Trigonometric Variables  

  C17 = cos(q(17));
  S17 = sin(q(17));

% = = Block_0_1_0_0_0_1 = = 
 
% Forward Kinematics 

  OM35 = qd(4)*C5;
  OpF15 = -qd(4)*qd(5)*C5;
  OpF35 = -qd(4)*qd(5)*S5;
  AlF15 = s.g(3)*S5;
  AlF35 = -s.g(3)*C5;
  AlM15_1 = C4*C5;
  AlM35_1 = C4*S5;
  AlM15_2 = S4*C5;
  AlM35_2 = S4*S5;
  OM16 = qd(6)-qd(4)*S5;
  OM26 = qd(5)*C6+OM35*S6;
  OM36 = -(qd(5)*S6-OM35*C6);
  OpF26 = qd(6)*OM35*C6+S6*(OpF35-qd(5)*qd(6));
  OpF36 = -(qd(6)*OM35*S6-C6*(OpF35-qd(5)*qd(6)));
  BS26 = OM16*OM26;
  BS36 = OM16*OM36;
  BS56 = -(OM16*OM16+OM36*OM36);
  BS66 = OM26*OM36;
  BeF26 = BS26-OpF36;
  BeF86 = BS66+OpF15;
  AlF26 = AlF35*S6;
  AlF36 = AlF35*C6;
  AlM26_1 = AlM35_1*S6-S4*C6;
  AlM36_1 = AlM35_1*C6+S4*S6;
  AlM26_2 = AlM35_2*S6+C4*C6;
  AlM36_2 = AlM35_2*C6-C4*S6;
  AlM26_3 = C5*S6;
  AlM36_3 = C5*C6;
  OpM26_4 = C5*S6;
  OpM36_4 = C5*C6;

% = = Block_0_1_0_1_0_2 = = 
 
% Forward Kinematics 

  BS57 = -(OM16*OM16+OM36*OM36);
  BS67 = OM26*OM36;
  BeF27 = OM16*OM26-OpF36;
  BeF37 = OpF26+OM16*OM36;
  BeF67 = BS67-OpF15;
  BeF87 = BS67+OpF15;
  AlF17 = AlF15+(2.0)*qd(7)*OM26+Dz73*(BS36+OpF26);
  AlF27 = AlF26-(2.0)*qd(7)*OM16+Dz73*(BS66-OpF15);
  AlF37 = AlF36-Dz73*(OM16*OM16+OM26*OM26);
  AlM17_4 = Dz73*OpM26_4;
  AlM27_4 = Dz73*S5;
  AlM17_5 = Dz73*C6;

% = = Block_0_1_0_1_0_6 = = 
 
% Forward Kinematics 

  OM116 = OM16*C16-OM36*S16;
  OM216 = qd(16)+OM26;
  OM316 = OM16*S16+OM36*C16;

% = = Block_0_1_0_1_0_7 = = 
 
% Forward Kinematics 

  OM117 = OM16*C17-OM36*S17;
  OM217 = qd(17)+OM26;
  OM317 = OM16*S17+OM36*C17;

% = = Block_0_1_0_2_0_3 = = 
 
% Forward Kinematics 

  OM18 = OM16*C8-OM36*S8;
  OM28 = qd(8)+OM26;
  OM38 = OM16*S8+OM36*C8;
  OpF18 = C8*(OpF15-qd(8)*OM36)-S8*(OpF36+qd(8)*OM16);
  OpF38 = C8*(OpF36+qd(8)*OM16)+S8*(OpF15-qd(8)*OM36);
  BS28 = OM18*OM28;
  AlF18 = C8*(AlF17+BeF27*s.dpt(2,6))-S8*(AlF37+BeF87*s.dpt(2,6));
  AlF28 = AlF27+BS57*s.dpt(2,6);
  AlF38 = C8*(AlF37+BeF87*s.dpt(2,6))+S8*(AlF17+BeF27*s.dpt(2,6));
  AlM18_1 = AlM15_1*C8-AlM36_1*S8;
  AlM38_1 = AlM15_1*S8+AlM36_1*C8;
  AlM18_2 = AlM15_2*C8-AlM36_2*S8;
  AlM38_2 = AlM15_2*S8+AlM36_2*C8;
  AlM18_3 = -(AlM36_3*S8+S5*C8);
  AlM38_3 = AlM36_3*C8-S5*S8;
  OpM18_4 = -(OpM36_4*S8+S5*C8);
  OpM38_4 = OpM36_4*C8-S5*S8;
  AlM18_4 = s.dpt(2,6)*S5*S8+C8*(AlM17_4-OpM36_4*s.dpt(2,6));
  AlM38_4 = -(s.dpt(2,6)*S5*C8-S8*(AlM17_4-OpM36_4*s.dpt(2,6)));
  OpM18_5 = S6*S8;
  OpM38_5 = -S6*C8;
  AlM18_5 = C8*(AlM17_5+s.dpt(2,6)*S6);
  AlM38_5 = S8*(AlM17_5+s.dpt(2,6)*S6);
  AlM18_6 = -s.dpt(2,6)*S8;
  AlM38_6 = s.dpt(2,6)*C8;
  OM19 = qd(9)+OM18;
  OM29 = OM28*C9+OM38*S9;
  OM39 = -(OM28*S9-OM38*C9);
  OpF29 = C9*(OpF26+qd(9)*OM38)+S9*(OpF38-qd(9)*OM28);
  OpF39 = C9*(OpF38-qd(9)*OM28)-S9*(OpF26+qd(9)*OM38);
  BS39 = OM19*OM39;
  BS99 = -(OM19*OM19+OM29*OM29);
  BeF39 = BS39+OpF29;
  BeF69 = OM29*OM39-OpF18;
  AlF29 = AlF28*C9+AlF38*S9;
  AlF39 = -(AlF28*S9-AlF38*C9);
  AlM29_1 = AlM26_1*C9+AlM38_1*S9;
  AlM39_1 = -(AlM26_1*S9-AlM38_1*C9);
  AlM29_2 = AlM26_2*C9+AlM38_2*S9;
  AlM39_2 = -(AlM26_2*S9-AlM38_2*C9);
  AlM29_3 = AlM26_3*C9+AlM38_3*S9;
  AlM39_3 = -(AlM26_3*S9-AlM38_3*C9);
  OpM29_4 = OpM26_4*C9+OpM38_4*S9;
  OpM39_4 = -(OpM26_4*S9-OpM38_4*C9);
  AlM29_4 = AlM27_4*C9+AlM38_4*S9;
  AlM39_4 = -(AlM27_4*S9-AlM38_4*C9);
  OpM29_5 = OpM38_5*S9+C6*C9;
  OpM39_5 = OpM38_5*C9-C6*S9;
  AlM29_5 = AlM38_5*S9;
  AlM39_5 = AlM38_5*C9;
  OpM29_6 = S8*S9;
  OpM39_6 = S8*C9;
  AlM29_6 = AlM38_6*S9-Dz73*C9;
  AlM39_6 = AlM38_6*C9+Dz73*S9;
  AlM29_7 = C8*S9;
  AlM39_7 = C8*C9;
  OM110 = OM19*C10+OM29*S10;
  OM210 = -(OM19*S10-OM29*C10);
  OM310 = qd(10)+OM39;
  OpF110 = C10*(OpF18+qd(10)*OM29)+S10*(OpF29-qd(10)*OM19);
  OpF210 = C10*(OpF29-qd(10)*OM19)-S10*(OpF18+qd(10)*OM29);
  BS610 = OM210*OM310;
  OpM110_4 = OpM18_4*C10+OpM29_4*S10;
  OpM210_4 = -(OpM18_4*S10-OpM29_4*C10);
  OpM110_5 = OpM18_5*C10+OpM29_5*S10;
  OpM210_5 = -(OpM18_5*S10-OpM29_5*C10);
  OpM110_6 = OpM29_6*S10+C10*C8;
  OpM210_6 = OpM29_6*C10-S10*C8;
  OpM110_8 = S10*C9;
  OpM210_8 = C10*C9;

% = = Block_0_1_0_2_0_4 = = 
 
% Forward Kinematics 

  OM111 = OM16*C11-OM36*S11;
  OM211 = qd(11)+OM26;
  OM311 = OM16*S11+OM36*C11;
  OpF111 = C11*(OpF15-qd(11)*OM36)-S11*(OpF36+qd(11)*OM16);
  OpF311 = C11*(OpF36+qd(11)*OM16)+S11*(OpF15-qd(11)*OM36);
  BS211 = OM111*OM211;
  AlF111 = C11*(AlF17+BeF27*s.dpt(2,7))-S11*(AlF37+BeF87*s.dpt(2,7));
  AlF211 = AlF27+BS57*s.dpt(2,7);
  AlF311 = C11*(AlF37+BeF87*s.dpt(2,7))+S11*(AlF17+BeF27*s.dpt(2,7));
  AlM111_1 = AlM15_1*C11-AlM36_1*S11;
  AlM311_1 = AlM15_1*S11+AlM36_1*C11;
  AlM111_2 = AlM15_2*C11-AlM36_2*S11;
  AlM311_2 = AlM15_2*S11+AlM36_2*C11;
  AlM111_3 = -(AlM36_3*S11+C11*S5);
  AlM311_3 = AlM36_3*C11-S11*S5;
  OpM111_4 = -(OpM36_4*S11+C11*S5);
  OpM311_4 = OpM36_4*C11-S11*S5;
  AlM111_4 = s.dpt(2,7)*S11*S5+C11*(AlM17_4-OpM36_4*s.dpt(2,7));
  AlM311_4 = -(s.dpt(2,7)*C11*S5-S11*(AlM17_4-OpM36_4*s.dpt(2,7)));
  OpM111_5 = S11*S6;
  OpM311_5 = -C11*S6;
  AlM111_5 = C11*(AlM17_5+s.dpt(2,7)*S6);
  AlM311_5 = S11*(AlM17_5+s.dpt(2,7)*S6);
  AlM111_6 = -s.dpt(2,7)*S11;
  AlM311_6 = s.dpt(2,7)*C11;
  OM112 = qd(12)+OM111;
  OM212 = OM211*C12+OM311*S12;
  OM312 = -(OM211*S12-OM311*C12);
  OpF212 = C12*(OpF26+qd(12)*OM311)+S12*(OpF311-qd(12)*OM211);
  OpF312 = C12*(OpF311-qd(12)*OM211)-S12*(OpF26+qd(12)*OM311);
  BS312 = OM112*OM312;
  BS912 = -(OM112*OM112+OM212*OM212);
  BeF312 = BS312+OpF212;
  BeF612 = OM212*OM312-OpF111;
  AlF212 = AlF211*C12+AlF311*S12;
  AlF312 = -(AlF211*S12-AlF311*C12);
  AlM212_1 = AlM26_1*C12+AlM311_1*S12;
  AlM312_1 = -(AlM26_1*S12-AlM311_1*C12);
  AlM212_2 = AlM26_2*C12+AlM311_2*S12;
  AlM312_2 = -(AlM26_2*S12-AlM311_2*C12);
  AlM212_3 = AlM26_3*C12+AlM311_3*S12;
  AlM312_3 = -(AlM26_3*S12-AlM311_3*C12);
  OpM212_4 = OpM26_4*C12+OpM311_4*S12;
  OpM312_4 = -(OpM26_4*S12-OpM311_4*C12);
  AlM212_4 = AlM27_4*C12+AlM311_4*S12;
  AlM312_4 = -(AlM27_4*S12-AlM311_4*C12);
  OpM212_5 = OpM311_5*S12+C12*C6;
  OpM312_5 = OpM311_5*C12-S12*C6;
  AlM212_5 = AlM311_5*S12;
  AlM312_5 = AlM311_5*C12;
  OpM212_6 = S11*S12;
  OpM312_6 = S11*C12;
  AlM212_6 = AlM311_6*S12-Dz73*C12;
  AlM312_6 = AlM311_6*C12+Dz73*S12;
  AlM212_7 = C11*S12;
  AlM312_7 = C11*C12;
  OM113 = OM112*C13+OM212*S13;
  OM213 = -(OM112*S13-OM212*C13);
  OM313 = qd(13)+OM312;
  OpF113 = C13*(OpF111+qd(13)*OM212)+S13*(OpF212-qd(13)*OM112);
  OpF213 = C13*(OpF212-qd(13)*OM112)-S13*(OpF111+qd(13)*OM212);
  BS613 = OM213*OM313;
  OpM113_4 = OpM111_4*C13+OpM212_4*S13;
  OpM213_4 = -(OpM111_4*S13-OpM212_4*C13);
  OpM113_5 = OpM111_5*C13+OpM212_5*S13;
  OpM213_5 = -(OpM111_5*S13-OpM212_5*C13);
  OpM113_6 = OpM212_6*S13+C11*C13;
  OpM213_6 = OpM212_6*C13-C11*S13;
  OpM113_11 = C12*S13;
  OpM213_11 = C12*C13;

% = = Block_0_1_0_2_0_5 = = 
 
% Forward Kinematics 

  OM114 = OM16*C14+OM26*S14;
  OM214 = -(OM16*S14-OM26*C14);
  OM314 = qd(14)+OM36;
  OpF114 = C14*(OpF15+qd(14)*OM26)+S14*(OpF26-qd(14)*OM16);
  OpF214 = C14*(OpF26-qd(14)*OM16)-S14*(OpF15+qd(14)*OM26);
  AlF114 = C14*(AlF17+BeF37*s.dpt(3,8))+S14*(AlF27+BeF67*s.dpt(3,8));
  AlF214 = C14*(AlF27+BeF67*s.dpt(3,8))-S14*(AlF17+BeF37*s.dpt(3,8));
  AlF314 = AlF37-s.dpt(3,8)*(OM16*OM16+OM26*OM26);
  AlM114_1 = AlM15_1*C14+AlM26_1*S14;
  AlM214_1 = -(AlM15_1*S14-AlM26_1*C14);
  AlM114_2 = AlM15_2*C14+AlM26_2*S14;
  AlM214_2 = -(AlM15_2*S14-AlM26_2*C14);
  AlM114_3 = AlM26_3*S14-C14*S5;
  AlM214_3 = AlM26_3*C14+S14*S5;
  OpM114_4 = OpM26_4*S14-C14*S5;
  OpM214_4 = OpM26_4*C14+S14*S5;
  AlM114_4 = (C14*C5*S6+S14*S5)*(q(7)+s.dpt(3,2)+s.dpt(3,8));
  AlM214_4 = (q(7)+s.dpt(3,2)+s.dpt(3,8))*(C14*S5-S14*C5*S6);
  OpM114_5 = S14*C6;
  OpM214_5 = C14*C6;
  AlM114_5 = C14*(AlM17_5+s.dpt(3,8)*C6);
  AlM214_5 = -S14*(AlM17_5+s.dpt(3,8)*C6);
  AlM114_6 = -S14*(Dz73+s.dpt(3,8));
  AlM214_6 = -C14*(Dz73+s.dpt(3,8));
  OM115 = OM114*C15-OM314*S15;
  OM215 = qd(15)+OM214;
  OM315 = OM114*S15+OM314*C15;

% = = Block_0_2_0_1_0_3 = = 
 
% Backward Dynamics 

  FA110 = -(s.frc(1,10)+s.m(10)*(s.l(2,10)*(OpF39-OM110*OM210)-s.l(3,10)*(OpF210+OM110*OM310)-C10*(AlF18+BeF39*s.dpt(3,11))-S10*(AlF29+BeF69*...
 s.dpt(3,11))));
  FA210 = -(s.frc(2,10)+s.m(10)*(s.l(2,10)*(OM110*OM110+OM310*OM310)-s.l(3,10)*(BS610-OpF110)-C10*(AlF29+BeF69*s.dpt(3,11))+S10*(AlF18+BeF39*...
 s.dpt(3,11))));
  FA310 = -(s.frc(3,10)-s.m(10)*(AlF39+BS99*s.dpt(3,11)+s.l(2,10)*(BS610+OpF110)-s.l(3,10)*(OM110*OM110+OM210*OM210)));
  CF110 = -(s.trq(1,10)-s.In(1,10)*OpF110+FA210*s.l(3,10)-FA310*s.l(2,10)+OM210*OM310*(s.In(5,10)-s.In(9,10)));
  CF210 = -(s.trq(2,10)-s.In(5,10)*OpF210-FA110*s.l(3,10)-OM110*OM310*(s.In(1,10)-s.In(9,10)));
  CF310 = -(s.trq(3,10)-s.In(9,10)*OpF39+FA110*s.l(2,10)+OM110*OM210*(s.In(1,10)-s.In(5,10)));
  FB110_1 = s.m(10)*(AlM18_1*C10+AlM29_1*S10);
  FB210_1 = -s.m(10)*(AlM18_1*S10-AlM29_1*C10);
  FB310_1 = s.m(10)*AlM39_1;
  CM110_1 = -(FB210_1*s.l(3,10)-FB310_1*s.l(2,10));
  CM210_1 = FB110_1*s.l(3,10);
  CM310_1 = -FB110_1*s.l(2,10);
  FB110_2 = s.m(10)*(AlM18_2*C10+AlM29_2*S10);
  FB210_2 = -s.m(10)*(AlM18_2*S10-AlM29_2*C10);
  FB310_2 = s.m(10)*AlM39_2;
  CM110_2 = -(FB210_2*s.l(3,10)-FB310_2*s.l(2,10));
  CM210_2 = FB110_2*s.l(3,10);
  CM310_2 = -FB110_2*s.l(2,10);
  FB110_3 = s.m(10)*(AlM18_3*C10+AlM29_3*S10);
  FB210_3 = -s.m(10)*(AlM18_3*S10-AlM29_3*C10);
  FB310_3 = s.m(10)*AlM39_3;
  CM110_3 = -(FB210_3*s.l(3,10)-FB310_3*s.l(2,10));
  CM210_3 = FB110_3*s.l(3,10);
  CM310_3 = -FB110_3*s.l(2,10);
  FB110_4 = s.m(10)*(OpM210_4*s.l(3,10)-OpM39_4*s.l(2,10)+C10*(AlM18_4+OpM29_4*s.dpt(3,11))+S10*(AlM29_4-OpM18_4*s.dpt(3,11)));
  FB210_4 = s.m(10)*(C10*(AlM29_4-OpM18_4*s.dpt(3,11))-S10*(AlM18_4+OpM29_4*s.dpt(3,11))-OpM110_4*s.l(3,10));
  FB310_4 = s.m(10)*(AlM39_4+OpM110_4*s.l(2,10));
  CM110_4 = s.In(1,10)*OpM110_4-FB210_4*s.l(3,10)+FB310_4*s.l(2,10);
  CM210_4 = s.In(5,10)*OpM210_4+FB110_4*s.l(3,10);
  CM310_4 = s.In(9,10)*OpM39_4-FB110_4*s.l(2,10);
  FB110_5 = s.m(10)*(OpM210_5*s.l(3,10)-OpM39_5*s.l(2,10)+C10*(AlM18_5+OpM29_5*s.dpt(3,11))+S10*(AlM29_5-OpM18_5*s.dpt(3,11)));
  FB210_5 = s.m(10)*(C10*(AlM29_5-OpM18_5*s.dpt(3,11))-S10*(AlM18_5+OpM29_5*s.dpt(3,11))-OpM110_5*s.l(3,10));
  FB310_5 = s.m(10)*(AlM39_5+OpM110_5*s.l(2,10));
  CM110_5 = s.In(1,10)*OpM110_5-FB210_5*s.l(3,10)+FB310_5*s.l(2,10);
  CM210_5 = s.In(5,10)*OpM210_5+FB110_5*s.l(3,10);
  CM310_5 = s.In(9,10)*OpM39_5-FB110_5*s.l(2,10);
  FB110_6 = s.m(10)*(OpM210_6*s.l(3,10)-OpM39_6*s.l(2,10)+C10*(AlM18_6+OpM29_6*s.dpt(3,11))+S10*(AlM29_6-s.dpt(3,11)*C8));
  FB210_6 = s.m(10)*(C10*(AlM29_6-s.dpt(3,11)*C8)-S10*(AlM18_6+OpM29_6*s.dpt(3,11))-OpM110_6*s.l(3,10));
  FB310_6 = s.m(10)*(AlM39_6+OpM110_6*s.l(2,10));
  CM110_6 = s.In(1,10)*OpM110_6-FB210_6*s.l(3,10)+FB310_6*s.l(2,10);
  CM210_6 = s.In(5,10)*OpM210_6+FB110_6*s.l(3,10);
  CM310_6 = s.In(9,10)*OpM39_6-FB110_6*s.l(2,10);
  FB110_7 = s.m(10)*(AlM29_7*S10-C10*S8);
  FB210_7 = s.m(10)*(AlM29_7*C10+S10*S8);
  FB310_7 = s.m(10)*AlM39_7;
  CM110_7 = -(FB210_7*s.l(3,10)-FB310_7*s.l(2,10));
  CM210_7 = FB110_7*s.l(3,10);
  CM310_7 = -FB110_7*s.l(2,10);
  FB110_8 = s.m(10)*(OpM210_8*s.l(3,10)+s.dpt(3,11)*C10*C9+s.l(2,10)*S9);
  FB210_8 = -s.m(10)*(OpM110_8*s.l(3,10)+s.dpt(3,11)*S10*C9);
  CM110_8 = -(FB210_8*s.l(3,10)-OpM110_8*(s.In(1,10)+s.m(10)*s.l(2,10)*s.l(2,10)));
  CM210_8 = s.In(5,10)*OpM210_8+FB110_8*s.l(3,10);
  CM310_8 = -(s.In(9,10)*S9+FB110_8*s.l(2,10));
  FB110_9 = -s.m(10)*S10*(s.dpt(3,11)+s.l(3,10));
  FB210_9 = -s.m(10)*C10*(s.dpt(3,11)+s.l(3,10));
  CM310_9 = -FB110_9*s.l(2,10);
  CM310_10 = s.In(9,10)+s.m(10)*s.l(2,10)*s.l(2,10);
  FA19 = -(s.frc(1,9)-s.m(9)*(AlF18+BeF39*s.l(3,9)-s.l(1,9)*(OM29*OM29+OM39*OM39)));
  FA29 = -(s.frc(2,9)-s.m(9)*(AlF29+BeF69*s.l(3,9)+s.l(1,9)*(OpF39+OM19*OM29)));
  FA39 = -(s.frc(3,9)-s.m(9)*(AlF39+BS99*s.l(3,9)+s.l(1,9)*(BS39-OpF29)));
  FF29 = FA29+FA110*S10+FA210*C10;
  FF39 = FA310+FA39;
  CF19 = -(s.trq(1,9)-s.In(1,9)*OpF18-CF110*C10+CF210*S10+FA29*s.l(3,9)+OM29*OM39*(s.In(5,9)-s.In(9,9))+s.dpt(3,11)*(FA110*S10+FA210*C10));
  CF29 = -(s.trq(2,9)-s.In(5,9)*OpF29-CF110*S10-CF210*C10-FA19*s.l(3,9)+FA39*s.l(1,9)-OM19*OM39*(s.In(1,9)-s.In(9,9))-s.dpt(3,11)*(FA110*C10-...
 FA210*S10));
  CF39 = -(s.trq(3,9)-CF310-s.In(9,9)*OpF39-FA29*s.l(1,9)+OM19*OM29*(s.In(1,9)-s.In(5,9)));
  FB19_1 = s.m(9)*AlM18_1;
  FB29_1 = s.m(9)*AlM29_1;
  FB39_1 = s.m(9)*AlM39_1;
  FM29_1 = FB29_1+FB110_1*S10+FB210_1*C10;
  FM39_1 = FB310_1+FB39_1;
  CM19_1 = CM110_1*C10-CM210_1*S10-FB29_1*s.l(3,9)-s.dpt(3,11)*(FB110_1*S10+FB210_1*C10);
  CM29_1 = CM110_1*S10+CM210_1*C10+FB19_1*s.l(3,9)-FB39_1*s.l(1,9)+s.dpt(3,11)*(FB110_1*C10-FB210_1*S10);
  CM39_1 = CM310_1+FB29_1*s.l(1,9);
  FB19_2 = s.m(9)*AlM18_2;
  FB29_2 = s.m(9)*AlM29_2;
  FB39_2 = s.m(9)*AlM39_2;
  FM29_2 = FB29_2+FB110_2*S10+FB210_2*C10;
  FM39_2 = FB310_2+FB39_2;
  CM19_2 = CM110_2*C10-CM210_2*S10-FB29_2*s.l(3,9)-s.dpt(3,11)*(FB110_2*S10+FB210_2*C10);
  CM29_2 = CM110_2*S10+CM210_2*C10+FB19_2*s.l(3,9)-FB39_2*s.l(1,9)+s.dpt(3,11)*(FB110_2*C10-FB210_2*S10);
  CM39_2 = CM310_2+FB29_2*s.l(1,9);
  FB19_3 = s.m(9)*AlM18_3;
  FB29_3 = s.m(9)*AlM29_3;
  FB39_3 = s.m(9)*AlM39_3;
  FM29_3 = FB29_3+FB110_3*S10+FB210_3*C10;
  FM39_3 = FB310_3+FB39_3;
  CM19_3 = CM110_3*C10-CM210_3*S10-FB29_3*s.l(3,9)-s.dpt(3,11)*(FB110_3*S10+FB210_3*C10);
  CM29_3 = CM110_3*S10+CM210_3*C10+FB19_3*s.l(3,9)-FB39_3*s.l(1,9)+s.dpt(3,11)*(FB110_3*C10-FB210_3*S10);
  CM39_3 = CM310_3+FB29_3*s.l(1,9);
  FB19_4 = s.m(9)*(AlM18_4+OpM29_4*s.l(3,9));
  FB29_4 = s.m(9)*(AlM29_4-OpM18_4*s.l(3,9)+OpM39_4*s.l(1,9));
  FB39_4 = s.m(9)*(AlM39_4-OpM29_4*s.l(1,9));
  FM29_4 = FB29_4+FB110_4*S10+FB210_4*C10;
  FM39_4 = FB310_4+FB39_4;
  CM19_4 = s.In(1,9)*OpM18_4+CM110_4*C10-CM210_4*S10-FB29_4*s.l(3,9)-s.dpt(3,11)*(FB110_4*S10+FB210_4*C10);
  CM29_4 = s.In(5,9)*OpM29_4+CM110_4*S10+CM210_4*C10+FB19_4*s.l(3,9)-FB39_4*s.l(1,9)+s.dpt(3,11)*(FB110_4*C10-FB210_4*S10);
  CM39_4 = CM310_4+s.In(9,9)*OpM39_4+FB29_4*s.l(1,9);
  FB19_5 = s.m(9)*(AlM18_5+OpM29_5*s.l(3,9));
  FB29_5 = s.m(9)*(AlM29_5-OpM18_5*s.l(3,9)+OpM39_5*s.l(1,9));
  FB39_5 = s.m(9)*(AlM39_5-OpM29_5*s.l(1,9));
  FM29_5 = FB29_5+FB110_5*S10+FB210_5*C10;
  FM39_5 = FB310_5+FB39_5;
  CM19_5 = s.In(1,9)*OpM18_5+CM110_5*C10-CM210_5*S10-FB29_5*s.l(3,9)-s.dpt(3,11)*(FB110_5*S10+FB210_5*C10);
  CM29_5 = s.In(5,9)*OpM29_5+CM110_5*S10+CM210_5*C10+FB19_5*s.l(3,9)-FB39_5*s.l(1,9)+s.dpt(3,11)*(FB110_5*C10-FB210_5*S10);
  CM39_5 = CM310_5+s.In(9,9)*OpM39_5+FB29_5*s.l(1,9);
  FB19_6 = s.m(9)*(AlM18_6+OpM29_6*s.l(3,9));
  FB29_6 = s.m(9)*(AlM29_6+OpM39_6*s.l(1,9)-s.l(3,9)*C8);
  FB39_6 = s.m(9)*(AlM39_6-OpM29_6*s.l(1,9));
  FM29_6 = FB29_6+FB110_6*S10+FB210_6*C10;
  FM39_6 = FB310_6+FB39_6;
  CM19_6 = s.In(1,9)*C8+CM110_6*C10-CM210_6*S10-FB29_6*s.l(3,9)-s.dpt(3,11)*(FB110_6*S10+FB210_6*C10);
  CM29_6 = s.In(5,9)*OpM29_6+CM110_6*S10+CM210_6*C10+FB19_6*s.l(3,9)-FB39_6*s.l(1,9)+s.dpt(3,11)*(FB110_6*C10-FB210_6*S10);
  CM39_6 = CM310_6+s.In(9,9)*OpM39_6+FB29_6*s.l(1,9);
  FB19_7 = -s.m(9)*S8;
  FB29_7 = s.m(9)*AlM29_7;
  FB39_7 = s.m(9)*AlM39_7;
  CM19_7 = CM110_7*C10-CM210_7*S10-FB29_7*s.l(3,9)-s.dpt(3,11)*(FB110_7*S10+FB210_7*C10);
  FB29_8 = -s.m(9)*s.l(1,9)*S9;
  CM19_8 = CM110_8*C10-CM210_8*S10-FB29_8*s.l(3,9)-s.dpt(3,11)*(FB110_8*S10+FB210_8*C10);
  CM19_9 = s.In(1,9)+s.m(9)*s.l(3,9)*s.l(3,9)-s.dpt(3,11)*(FB110_9*S10+FB210_9*C10)-C10*(FB210_9*s.l(3,10)-C10*(s.In(1,10)+s.m(10)*s.l(2,10)*...
 s.l(2,10)))+S10*(s.In(5,10)*S10-FB110_9*s.l(3,10));
  FA18 = -(s.frc(1,8)-s.m(8)*(AlF18-s.l(1,8)*(OM28*OM28+OM38*OM38)+s.l(2,8)*(BS28-OpF38)));
  FA28 = -(s.frc(2,8)-s.m(8)*(AlF28+s.l(1,8)*(BS28+OpF38)-s.l(2,8)*(OM18*OM18+OM38*OM38)));
  FA38 = -(s.frc(3,8)-s.m(8)*(AlF38-s.l(1,8)*(OpF26-OM18*OM38)+s.l(2,8)*(OpF18+OM28*OM38)));
  FF18 = FA18+FA19+FA110*C10-FA210*S10;
  FF38 = FA38+FF29*S9+FF39*C9;
  CF18 = -(s.trq(1,8)-CF19-s.In(1,8)*OpF18-FA38*s.l(2,8)+OM28*OM38*(s.In(5,8)-s.In(9,8)));
  CF28 = -(s.trq(2,8)-s.In(5,8)*OpF26-CF29*C9+CF39*S9+FA38*s.l(1,8)-OM18*OM38*(s.In(1,8)-s.In(9,8)));
  CF38 = -(s.trq(3,8)-s.In(9,8)*OpF38-CF29*S9-CF39*C9+FA18*s.l(2,8)-FA28*s.l(1,8)+OM18*OM28*(s.In(1,8)-s.In(5,8)));
  FB18_1 = s.m(8)*AlM18_1;
  FB28_1 = s.m(8)*AlM26_1;
  FB38_1 = s.m(8)*AlM38_1;
  FM18_1 = FB18_1+FB19_1+FB110_1*C10-FB210_1*S10;
  FM38_1 = FB38_1+FM29_1*S9+FM39_1*C9;
  CM18_1 = CM19_1+FB38_1*s.l(2,8);
  CM28_1 = CM29_1*C9-CM39_1*S9-FB38_1*s.l(1,8);
  CM38_1 = CM29_1*S9+CM39_1*C9-FB18_1*s.l(2,8)+FB28_1*s.l(1,8);
  FB18_2 = s.m(8)*AlM18_2;
  FB28_2 = s.m(8)*AlM26_2;
  FB38_2 = s.m(8)*AlM38_2;
  FM18_2 = FB18_2+FB19_2+FB110_2*C10-FB210_2*S10;
  FM38_2 = FB38_2+FM29_2*S9+FM39_2*C9;
  CM18_2 = CM19_2+FB38_2*s.l(2,8);
  CM28_2 = CM29_2*C9-CM39_2*S9-FB38_2*s.l(1,8);
  CM38_2 = CM29_2*S9+CM39_2*C9-FB18_2*s.l(2,8)+FB28_2*s.l(1,8);
  FB18_3 = s.m(8)*AlM18_3;
  FB28_3 = s.m(8)*AlM26_3;
  FB38_3 = s.m(8)*AlM38_3;
  FM18_3 = FB18_3+FB19_3+FB110_3*C10-FB210_3*S10;
  FM38_3 = FB38_3+FM29_3*S9+FM39_3*C9;
  CM18_3 = CM19_3+FB38_3*s.l(2,8);
  CM28_3 = CM29_3*C9-CM39_3*S9-FB38_3*s.l(1,8);
  CM38_3 = CM29_3*S9+CM39_3*C9-FB18_3*s.l(2,8)+FB28_3*s.l(1,8);
  FB18_4 = s.m(8)*(AlM18_4-OpM38_4*s.l(2,8));
  FB28_4 = s.m(8)*(AlM27_4+OpM38_4*s.l(1,8));
  FB38_4 = s.m(8)*(AlM38_4+OpM18_4*s.l(2,8)-OpM26_4*s.l(1,8));
  FM18_4 = FB18_4+FB19_4+FB110_4*C10-FB210_4*S10;
  FM38_4 = FB38_4+FM29_4*S9+FM39_4*C9;
  CM18_4 = CM19_4+s.In(1,8)*OpM18_4+FB38_4*s.l(2,8);
  CM28_4 = s.In(5,8)*OpM26_4+CM29_4*C9-CM39_4*S9-FB38_4*s.l(1,8);
  CM38_4 = s.In(9,8)*OpM38_4+CM29_4*S9+CM39_4*C9-FB18_4*s.l(2,8)+FB28_4*s.l(1,8);
  FB18_5 = s.m(8)*(AlM18_5-OpM38_5*s.l(2,8));
  FB28_5 = s.m(8)*OpM38_5*s.l(1,8);
  FB38_5 = s.m(8)*(AlM38_5+OpM18_5*s.l(2,8)-s.l(1,8)*C6);
  FM18_5 = FB18_5+FB19_5+FB110_5*C10-FB210_5*S10;
  FM38_5 = FB38_5+FM29_5*S9+FM39_5*C9;
  CM18_5 = CM19_5+s.In(1,8)*OpM18_5+FB38_5*s.l(2,8);
  CM28_5 = s.In(5,8)*C6+CM29_5*C9-CM39_5*S9-FB38_5*s.l(1,8);
  CM38_5 = s.In(9,8)*OpM38_5+CM29_5*S9+CM39_5*C9-FB18_5*s.l(2,8)+FB28_5*s.l(1,8);
  FB18_6 = s.m(8)*(AlM18_6-s.l(2,8)*S8);
  FB28_6 = -s.m(8)*(Dz73-s.l(1,8)*S8);
  FB38_6 = s.m(8)*C8*(s.dpt(2,6)+s.l(2,8));
  FM18_6 = FB18_6+FB19_6+FB110_6*C10-FB210_6*S10;
  FM38_6 = FB38_6+FM29_6*S9+FM39_6*C9;
  CM28_6 = CM29_6*C9-CM39_6*S9-FB38_6*s.l(1,8);
  FB38_7 = s.m(8)*C8;
  CM28_7 = C9*(CM110_7*S10+CM210_7*C10+FB19_7*s.l(3,9)-FB39_7*s.l(1,9)+s.dpt(3,11)*(FB110_7*C10-FB210_7*S10))-S9*(CM310_7+FB29_7*s.l(1,9))-FB38_7...
 *s.l(1,8);
  CM28_8 = s.In(5,8)+s.m(8)*s.l(1,8)*s.l(1,8)+C9*(s.m(9)*s.l(3,9)*s.l(3,9)*C9+CM110_8*S10+CM210_8*C10+s.dpt(3,11)*(FB110_8*C10-FB210_8*S10)+C9*(...
 s.In(5,9)+s.m(9)*s.l(1,9)*s.l(1,9)))-S9*(CM310_8-s.In(9,9)*S9+FB29_8*s.l(1,9));

% = = Block_0_2_0_1_0_4 = = 
 
% Backward Dynamics 

  FA113 = -(s.frc(1,13)+s.m(13)*(s.l(2,13)*(OpF312-OM113*OM213)-s.l(3,13)*(OpF213+OM113*OM313)-C13*(AlF111+BeF312*s.dpt(3,15))-S13*(AlF212+BeF612...
 *s.dpt(3,15))));
  FA213 = -(s.frc(2,13)+s.m(13)*(s.l(2,13)*(OM113*OM113+OM313*OM313)-s.l(3,13)*(BS613-OpF113)-C13*(AlF212+BeF612*s.dpt(3,15))+S13*(AlF111+BeF312*...
 s.dpt(3,15))));
  FA313 = -(s.frc(3,13)-s.m(13)*(AlF312+BS912*s.dpt(3,15)+s.l(2,13)*(BS613+OpF113)-s.l(3,13)*(OM113*OM113+OM213*OM213)));
  CF113 = -(s.trq(1,13)-s.In(1,13)*OpF113+FA213*s.l(3,13)-FA313*s.l(2,13)+OM213*OM313*(s.In(5,13)-s.In(9,13)));
  CF213 = -(s.trq(2,13)-s.In(5,13)*OpF213-FA113*s.l(3,13)-OM113*OM313*(s.In(1,13)-s.In(9,13)));
  CF313 = -(s.trq(3,13)-s.In(9,13)*OpF312+FA113*s.l(2,13)+OM113*OM213*(s.In(1,13)-s.In(5,13)));
  FB113_1 = s.m(13)*(AlM111_1*C13+AlM212_1*S13);
  FB213_1 = -s.m(13)*(AlM111_1*S13-AlM212_1*C13);
  FB313_1 = s.m(13)*AlM312_1;
  CM113_1 = -(FB213_1*s.l(3,13)-FB313_1*s.l(2,13));
  CM213_1 = FB113_1*s.l(3,13);
  CM313_1 = -FB113_1*s.l(2,13);
  FB113_2 = s.m(13)*(AlM111_2*C13+AlM212_2*S13);
  FB213_2 = -s.m(13)*(AlM111_2*S13-AlM212_2*C13);
  FB313_2 = s.m(13)*AlM312_2;
  CM113_2 = -(FB213_2*s.l(3,13)-FB313_2*s.l(2,13));
  CM213_2 = FB113_2*s.l(3,13);
  CM313_2 = -FB113_2*s.l(2,13);
  FB113_3 = s.m(13)*(AlM111_3*C13+AlM212_3*S13);
  FB213_3 = -s.m(13)*(AlM111_3*S13-AlM212_3*C13);
  FB313_3 = s.m(13)*AlM312_3;
  CM113_3 = -(FB213_3*s.l(3,13)-FB313_3*s.l(2,13));
  CM213_3 = FB113_3*s.l(3,13);
  CM313_3 = -FB113_3*s.l(2,13);
  FB113_4 = s.m(13)*(OpM213_4*s.l(3,13)-OpM312_4*s.l(2,13)+C13*(AlM111_4+OpM212_4*s.dpt(3,15))+S13*(AlM212_4-OpM111_4*s.dpt(3,15)));
  FB213_4 = s.m(13)*(C13*(AlM212_4-OpM111_4*s.dpt(3,15))-S13*(AlM111_4+OpM212_4*s.dpt(3,15))-OpM113_4*s.l(3,13));
  FB313_4 = s.m(13)*(AlM312_4+OpM113_4*s.l(2,13));
  CM113_4 = s.In(1,13)*OpM113_4-FB213_4*s.l(3,13)+FB313_4*s.l(2,13);
  CM213_4 = s.In(5,13)*OpM213_4+FB113_4*s.l(3,13);
  CM313_4 = s.In(9,13)*OpM312_4-FB113_4*s.l(2,13);
  FB113_5 = s.m(13)*(OpM213_5*s.l(3,13)-OpM312_5*s.l(2,13)+C13*(AlM111_5+OpM212_5*s.dpt(3,15))+S13*(AlM212_5-OpM111_5*s.dpt(3,15)));
  FB213_5 = s.m(13)*(C13*(AlM212_5-OpM111_5*s.dpt(3,15))-S13*(AlM111_5+OpM212_5*s.dpt(3,15))-OpM113_5*s.l(3,13));
  FB313_5 = s.m(13)*(AlM312_5+OpM113_5*s.l(2,13));
  CM113_5 = s.In(1,13)*OpM113_5-FB213_5*s.l(3,13)+FB313_5*s.l(2,13);
  CM213_5 = s.In(5,13)*OpM213_5+FB113_5*s.l(3,13);
  CM313_5 = s.In(9,13)*OpM312_5-FB113_5*s.l(2,13);
  FB113_6 = s.m(13)*(OpM213_6*s.l(3,13)-OpM312_6*s.l(2,13)+C13*(AlM111_6+OpM212_6*s.dpt(3,15))+S13*(AlM212_6-s.dpt(3,15)*C11));
  FB213_6 = s.m(13)*(C13*(AlM212_6-s.dpt(3,15)*C11)-S13*(AlM111_6+OpM212_6*s.dpt(3,15))-OpM113_6*s.l(3,13));
  FB313_6 = s.m(13)*(AlM312_6+OpM113_6*s.l(2,13));
  CM113_6 = s.In(1,13)*OpM113_6-FB213_6*s.l(3,13)+FB313_6*s.l(2,13);
  CM213_6 = s.In(5,13)*OpM213_6+FB113_6*s.l(3,13);
  CM313_6 = s.In(9,13)*OpM312_6-FB113_6*s.l(2,13);
  FB113_7 = s.m(13)*(AlM212_7*S13-S11*C13);
  FB213_7 = s.m(13)*(AlM212_7*C13+S11*S13);
  FB313_7 = s.m(13)*AlM312_7;
  CM113_7 = -(FB213_7*s.l(3,13)-FB313_7*s.l(2,13));
  CM213_7 = FB113_7*s.l(3,13);
  CM313_7 = -FB113_7*s.l(2,13);
  FB113_11 = s.m(13)*(OpM213_11*s.l(3,13)+s.dpt(3,15)*C12*C13+s.l(2,13)*S12);
  FB213_11 = -s.m(13)*(OpM113_11*s.l(3,13)+s.dpt(3,15)*C12*S13);
  CM113_11 = -(FB213_11*s.l(3,13)-OpM113_11*(s.In(1,13)+s.m(13)*s.l(2,13)*s.l(2,13)));
  CM213_11 = s.In(5,13)*OpM213_11+FB113_11*s.l(3,13);
  CM313_11 = -(s.In(9,13)*S12+FB113_11*s.l(2,13));
  FB113_12 = -s.m(13)*S13*(s.dpt(3,15)+s.l(3,13));
  FB213_12 = -s.m(13)*C13*(s.dpt(3,15)+s.l(3,13));
  CM313_12 = -FB113_12*s.l(2,13);
  CM313_13 = s.In(9,13)+s.m(13)*s.l(2,13)*s.l(2,13);
  FA112 = -(s.frc(1,12)-s.m(12)*(AlF111+BeF312*s.l(3,12)-s.l(1,12)*(OM212*OM212+OM312*OM312)));
  FA212 = -(s.frc(2,12)-s.m(12)*(AlF212+BeF612*s.l(3,12)+s.l(1,12)*(OpF312+OM112*OM212)));
  FA312 = -(s.frc(3,12)-s.m(12)*(AlF312+BS912*s.l(3,12)+s.l(1,12)*(BS312-OpF212)));
  FF212 = FA212+FA113*S13+FA213*C13;
  FF312 = FA312+FA313;
  CF112 = -(s.trq(1,12)-s.In(1,12)*OpF111-CF113*C13+CF213*S13+FA212*s.l(3,12)+OM212*OM312*(s.In(5,12)-s.In(9,12))+s.dpt(3,15)*(FA113*S13+FA213*...
 C13));
  CF212 = -(s.trq(2,12)-s.In(5,12)*OpF212-CF113*S13-CF213*C13-FA112*s.l(3,12)+FA312*s.l(1,12)-OM112*OM312*(s.In(1,12)-s.In(9,12))-s.dpt(3,15)*(...
 FA113*C13-FA213*S13));
  CF312 = -(s.trq(3,12)-CF313-s.In(9,12)*OpF312-FA212*s.l(1,12)+OM112*OM212*(s.In(1,12)-s.In(5,12)));
  FB112_1 = s.m(12)*AlM111_1;
  FB212_1 = s.m(12)*AlM212_1;
  FB312_1 = s.m(12)*AlM312_1;
  FM212_1 = FB212_1+FB113_1*S13+FB213_1*C13;
  FM312_1 = FB312_1+FB313_1;
  CM112_1 = CM113_1*C13-CM213_1*S13-FB212_1*s.l(3,12)-s.dpt(3,15)*(FB113_1*S13+FB213_1*C13);
  CM212_1 = CM113_1*S13+CM213_1*C13+FB112_1*s.l(3,12)-FB312_1*s.l(1,12)+s.dpt(3,15)*(FB113_1*C13-FB213_1*S13);
  CM312_1 = CM313_1+FB212_1*s.l(1,12);
  FB112_2 = s.m(12)*AlM111_2;
  FB212_2 = s.m(12)*AlM212_2;
  FB312_2 = s.m(12)*AlM312_2;
  FM212_2 = FB212_2+FB113_2*S13+FB213_2*C13;
  FM312_2 = FB312_2+FB313_2;
  CM112_2 = CM113_2*C13-CM213_2*S13-FB212_2*s.l(3,12)-s.dpt(3,15)*(FB113_2*S13+FB213_2*C13);
  CM212_2 = CM113_2*S13+CM213_2*C13+FB112_2*s.l(3,12)-FB312_2*s.l(1,12)+s.dpt(3,15)*(FB113_2*C13-FB213_2*S13);
  CM312_2 = CM313_2+FB212_2*s.l(1,12);
  FB112_3 = s.m(12)*AlM111_3;
  FB212_3 = s.m(12)*AlM212_3;
  FB312_3 = s.m(12)*AlM312_3;
  FM212_3 = FB212_3+FB113_3*S13+FB213_3*C13;
  FM312_3 = FB312_3+FB313_3;
  CM112_3 = CM113_3*C13-CM213_3*S13-FB212_3*s.l(3,12)-s.dpt(3,15)*(FB113_3*S13+FB213_3*C13);
  CM212_3 = CM113_3*S13+CM213_3*C13+FB112_3*s.l(3,12)-FB312_3*s.l(1,12)+s.dpt(3,15)*(FB113_3*C13-FB213_3*S13);
  CM312_3 = CM313_3+FB212_3*s.l(1,12);
  FB112_4 = s.m(12)*(AlM111_4+OpM212_4*s.l(3,12));
  FB212_4 = s.m(12)*(AlM212_4-OpM111_4*s.l(3,12)+OpM312_4*s.l(1,12));
  FB312_4 = s.m(12)*(AlM312_4-OpM212_4*s.l(1,12));
  FM212_4 = FB212_4+FB113_4*S13+FB213_4*C13;
  FM312_4 = FB312_4+FB313_4;
  CM112_4 = s.In(1,12)*OpM111_4+CM113_4*C13-CM213_4*S13-FB212_4*s.l(3,12)-s.dpt(3,15)*(FB113_4*S13+FB213_4*C13);
  CM212_4 = s.In(5,12)*OpM212_4+CM113_4*S13+CM213_4*C13+FB112_4*s.l(3,12)-FB312_4*s.l(1,12)+s.dpt(3,15)*(FB113_4*C13-FB213_4*S13);
  CM312_4 = CM313_4+s.In(9,12)*OpM312_4+FB212_4*s.l(1,12);
  FB112_5 = s.m(12)*(AlM111_5+OpM212_5*s.l(3,12));
  FB212_5 = s.m(12)*(AlM212_5-OpM111_5*s.l(3,12)+OpM312_5*s.l(1,12));
  FB312_5 = s.m(12)*(AlM312_5-OpM212_5*s.l(1,12));
  FM212_5 = FB212_5+FB113_5*S13+FB213_5*C13;
  FM312_5 = FB312_5+FB313_5;
  CM112_5 = s.In(1,12)*OpM111_5+CM113_5*C13-CM213_5*S13-FB212_5*s.l(3,12)-s.dpt(3,15)*(FB113_5*S13+FB213_5*C13);
  CM212_5 = s.In(5,12)*OpM212_5+CM113_5*S13+CM213_5*C13+FB112_5*s.l(3,12)-FB312_5*s.l(1,12)+s.dpt(3,15)*(FB113_5*C13-FB213_5*S13);
  CM312_5 = CM313_5+s.In(9,12)*OpM312_5+FB212_5*s.l(1,12);
  FB112_6 = s.m(12)*(AlM111_6+OpM212_6*s.l(3,12));
  FB212_6 = s.m(12)*(AlM212_6+OpM312_6*s.l(1,12)-s.l(3,12)*C11);
  FB312_6 = s.m(12)*(AlM312_6-OpM212_6*s.l(1,12));
  FM212_6 = FB212_6+FB113_6*S13+FB213_6*C13;
  FM312_6 = FB312_6+FB313_6;
  CM112_6 = s.In(1,12)*C11+CM113_6*C13-CM213_6*S13-FB212_6*s.l(3,12)-s.dpt(3,15)*(FB113_6*S13+FB213_6*C13);
  CM212_6 = s.In(5,12)*OpM212_6+CM113_6*S13+CM213_6*C13+FB112_6*s.l(3,12)-FB312_6*s.l(1,12)+s.dpt(3,15)*(FB113_6*C13-FB213_6*S13);
  CM312_6 = CM313_6+s.In(9,12)*OpM312_6+FB212_6*s.l(1,12);
  FB112_7 = -s.m(12)*S11;
  FB212_7 = s.m(12)*AlM212_7;
  FB312_7 = s.m(12)*AlM312_7;
  CM112_7 = CM113_7*C13-CM213_7*S13-FB212_7*s.l(3,12)-s.dpt(3,15)*(FB113_7*S13+FB213_7*C13);
  FB212_11 = -s.m(12)*s.l(1,12)*S12;
  CM112_11 = CM113_11*C13-CM213_11*S13-FB212_11*s.l(3,12)-s.dpt(3,15)*(FB113_11*S13+FB213_11*C13);
  CM112_12 = s.In(1,12)+s.m(12)*s.l(3,12)*s.l(3,12)-s.dpt(3,15)*(FB113_12*S13+FB213_12*C13)-C13*(FB213_12*s.l(3,13)-C13*(s.In(1,13)+s.m(13)*...
 s.l(2,13)*s.l(2,13)))+S13*(s.In(5,13)*S13-FB113_12*s.l(3,13));
  FA111 = -(s.frc(1,11)-s.m(11)*(AlF111-s.l(1,11)*(OM211*OM211+OM311*OM311)+s.l(2,11)*(BS211-OpF311)));
  FA211 = -(s.frc(2,11)-s.m(11)*(AlF211+s.l(1,11)*(BS211+OpF311)-s.l(2,11)*(OM111*OM111+OM311*OM311)));
  FA311 = -(s.frc(3,11)-s.m(11)*(AlF311-s.l(1,11)*(OpF26-OM111*OM311)+s.l(2,11)*(OpF111+OM211*OM311)));
  FF111 = FA111+FA112+FA113*C13-FA213*S13;
  FF311 = FA311+FF212*S12+FF312*C12;
  CF111 = -(s.trq(1,11)-CF112-s.In(1,11)*OpF111-FA311*s.l(2,11)+OM211*OM311*(s.In(5,11)-s.In(9,11)));
  CF211 = -(s.trq(2,11)-s.In(5,11)*OpF26-CF212*C12+CF312*S12+FA311*s.l(1,11)-OM111*OM311*(s.In(1,11)-s.In(9,11)));
  CF311 = -(s.trq(3,11)-s.In(9,11)*OpF311-CF212*S12-CF312*C12+FA111*s.l(2,11)-FA211*s.l(1,11)+OM111*OM211*(s.In(1,11)-s.In(5,11)));
  FB111_1 = s.m(11)*AlM111_1;
  FB211_1 = s.m(11)*AlM26_1;
  FB311_1 = s.m(11)*AlM311_1;
  FM111_1 = FB111_1+FB112_1+FB113_1*C13-FB213_1*S13;
  FM311_1 = FB311_1+FM212_1*S12+FM312_1*C12;
  CM111_1 = CM112_1+FB311_1*s.l(2,11);
  CM211_1 = CM212_1*C12-CM312_1*S12-FB311_1*s.l(1,11);
  CM311_1 = CM212_1*S12+CM312_1*C12-FB111_1*s.l(2,11)+FB211_1*s.l(1,11);
  FB111_2 = s.m(11)*AlM111_2;
  FB211_2 = s.m(11)*AlM26_2;
  FB311_2 = s.m(11)*AlM311_2;
  FM111_2 = FB111_2+FB112_2+FB113_2*C13-FB213_2*S13;
  FM311_2 = FB311_2+FM212_2*S12+FM312_2*C12;
  CM111_2 = CM112_2+FB311_2*s.l(2,11);
  CM211_2 = CM212_2*C12-CM312_2*S12-FB311_2*s.l(1,11);
  CM311_2 = CM212_2*S12+CM312_2*C12-FB111_2*s.l(2,11)+FB211_2*s.l(1,11);
  FB111_3 = s.m(11)*AlM111_3;
  FB211_3 = s.m(11)*AlM26_3;
  FB311_3 = s.m(11)*AlM311_3;
  FM111_3 = FB111_3+FB112_3+FB113_3*C13-FB213_3*S13;
  FM311_3 = FB311_3+FM212_3*S12+FM312_3*C12;
  CM111_3 = CM112_3+FB311_3*s.l(2,11);
  CM211_3 = CM212_3*C12-CM312_3*S12-FB311_3*s.l(1,11);
  CM311_3 = CM212_3*S12+CM312_3*C12-FB111_3*s.l(2,11)+FB211_3*s.l(1,11);
  FB111_4 = s.m(11)*(AlM111_4-OpM311_4*s.l(2,11));
  FB211_4 = s.m(11)*(AlM27_4+OpM311_4*s.l(1,11));
  FB311_4 = s.m(11)*(AlM311_4+OpM111_4*s.l(2,11)-OpM26_4*s.l(1,11));
  FM111_4 = FB111_4+FB112_4+FB113_4*C13-FB213_4*S13;
  FM311_4 = FB311_4+FM212_4*S12+FM312_4*C12;
  CM111_4 = CM112_4+s.In(1,11)*OpM111_4+FB311_4*s.l(2,11);
  CM211_4 = s.In(5,11)*OpM26_4+CM212_4*C12-CM312_4*S12-FB311_4*s.l(1,11);
  CM311_4 = s.In(9,11)*OpM311_4+CM212_4*S12+CM312_4*C12-FB111_4*s.l(2,11)+FB211_4*s.l(1,11);
  FB111_5 = s.m(11)*(AlM111_5-OpM311_5*s.l(2,11));
  FB211_5 = s.m(11)*OpM311_5*s.l(1,11);
  FB311_5 = s.m(11)*(AlM311_5+OpM111_5*s.l(2,11)-s.l(1,11)*C6);
  FM111_5 = FB111_5+FB112_5+FB113_5*C13-FB213_5*S13;
  FM311_5 = FB311_5+FM212_5*S12+FM312_5*C12;
  CM111_5 = CM112_5+s.In(1,11)*OpM111_5+FB311_5*s.l(2,11);
  CM211_5 = s.In(5,11)*C6+CM212_5*C12-CM312_5*S12-FB311_5*s.l(1,11);
  CM311_5 = s.In(9,11)*OpM311_5+CM212_5*S12+CM312_5*C12-FB111_5*s.l(2,11)+FB211_5*s.l(1,11);
  FB111_6 = s.m(11)*(AlM111_6-s.l(2,11)*S11);
  FB211_6 = -s.m(11)*(Dz73-s.l(1,11)*S11);
  FB311_6 = s.m(11)*C11*(s.dpt(2,7)+s.l(2,11));
  FM111_6 = FB111_6+FB112_6+FB113_6*C13-FB213_6*S13;
  FM311_6 = FB311_6+FM212_6*S12+FM312_6*C12;
  CM211_6 = CM212_6*C12-CM312_6*S12-FB311_6*s.l(1,11);
  FB311_7 = s.m(11)*C11;
  CM211_7 = C12*(CM113_7*S13+CM213_7*C13+FB112_7*s.l(3,12)-FB312_7*s.l(1,12)+s.dpt(3,15)*(FB113_7*C13-FB213_7*S13))-S12*(CM313_7+FB212_7*...
 s.l(1,12))-FB311_7*s.l(1,11);
  CM211_11 = s.In(5,11)+s.m(11)*s.l(1,11)*s.l(1,11)+C12*(s.m(12)*s.l(3,12)*s.l(3,12)*C12+CM113_11*S13+CM213_11*C13+s.dpt(3,15)*(FB113_11*C13-...
 FB213_11*S13)+C12*(s.In(5,12)+s.m(12)*s.l(1,12)*s.l(1,12)))-S12*(CM313_11-s.In(9,12)*S12+FB212_11*s.l(1,12));

% = = Block_0_2_0_1_0_5 = = 
 
% Backward Dynamics 

  FA115 = -(s.frc(1,15)-s.m(15)*(AlF114*C15-AlF314*S15));
  FA315 = -(s.frc(3,15)-s.m(15)*(AlF114*S15+AlF314*C15));
  CF115 = -(s.trq(1,15)-s.In(1,15)*(C15*(OpF114-qd(15)*OM314)-S15*(OpF36+qd(15)*OM114))+OM215*OM315*(s.In(5,15)-s.In(9,15)));
  CF215 = -(s.trq(2,15)-s.In(5,15)*OpF214-OM115*OM315*(s.In(1,15)-s.In(9,15)));
  CF315 = -(s.trq(3,15)-s.In(9,15)*(C15*(OpF36+qd(15)*OM114)+S15*(OpF114-qd(15)*OM314))+OM115*OM215*(s.In(1,15)-s.In(5,15)));
  FB115_1 = s.m(15)*(AlM114_1*C15-AlM36_1*S15);
  FB315_1 = s.m(15)*(AlM114_1*S15+AlM36_1*C15);
  FB115_2 = s.m(15)*(AlM114_2*C15-AlM36_2*S15);
  FB315_2 = s.m(15)*(AlM114_2*S15+AlM36_2*C15);
  FB115_3 = s.m(15)*(AlM114_3*C15-AlM36_3*S15);
  FB315_3 = s.m(15)*(AlM114_3*S15+AlM36_3*C15);
  CM115_4 = s.In(1,15)*(OpM114_4*C15-OpM36_4*S15);
  CM215_4 = s.In(5,15)*OpM214_4;
  CM315_4 = s.In(9,15)*(OpM114_4*S15+OpM36_4*C15);
  CM115_5 = s.In(1,15)*(OpM114_5*C15+S15*S6);
  CM215_5 = s.In(5,15)*OpM214_5;
  CM315_5 = s.In(9,15)*(OpM114_5*S15-C15*S6);
  CM115_6 = s.In(1,15)*C14*C15;
  CM215_6 = -s.In(5,15)*S14;
  CM315_6 = s.In(9,15)*C14*S15;
  FF114 = -(s.frc(1,14)-s.m(14)*AlF114-FA115*C15-FA315*S15);
  FF214 = -(s.frc(2,14)+s.frc(2,15)-s.m(14)*AlF214-s.m(15)*AlF214);
  CF114 = -(s.trq(1,14)-s.In(1,14)*OpF114-CF115*C15-CF315*S15+OM214*OM314*(s.In(5,14)-s.In(9,14)));
  CF214 = -(s.trq(2,14)-CF215-s.In(5,14)*OpF214-OM114*OM314*(s.In(1,14)-s.In(9,14)));
  CF314 = -(s.trq(3,14)-s.In(9,14)*OpF36+CF115*S15-CF315*C15+OM114*OM214*(s.In(1,14)-s.In(5,14)));
  FM114_1 = s.m(14)*AlM114_1+FB115_1*C15+FB315_1*S15;
  FM214_1 = AlM214_1*(s.m(14)+s.m(15));
  FM114_2 = s.m(14)*AlM114_2+FB115_2*C15+FB315_2*S15;
  FM214_2 = AlM214_2*(s.m(14)+s.m(15));
  FM114_3 = s.m(14)*AlM114_3+FB115_3*C15+FB315_3*S15;
  FM214_3 = AlM214_3*(s.m(14)+s.m(15));
  FM114_4 = AlM114_4*(s.m(14)+s.m(15));
  FM214_4 = AlM214_4*(s.m(14)+s.m(15));
  CM114_4 = s.In(1,14)*OpM114_4+CM115_4*C15+CM315_4*S15;
  CM214_4 = CM215_4+s.In(5,14)*OpM214_4;
  CM314_4 = s.In(9,14)*OpM36_4-CM115_4*S15+CM315_4*C15;
  FM114_5 = AlM114_5*(s.m(14)+s.m(15));
  FM214_5 = AlM214_5*(s.m(14)+s.m(15));
  CM114_5 = s.In(1,14)*OpM114_5+CM115_5*C15+CM315_5*S15;
  CM214_5 = CM215_5+s.In(5,14)*OpM214_5;
  CM314_5 = -(s.In(9,14)*S6+CM115_5*S15-CM315_5*C15);
  FM114_6 = AlM114_6*(s.m(14)+s.m(15));
  FM214_6 = AlM214_6*(s.m(14)+s.m(15));
  CM146_315 = -(CM115_6*S15-CM315_6*C15);
  CM314_14 = s.In(9,14)+s.In(1,15)*S15*S15+s.In(9,15)*C15*C15;

% = = Block_0_2_0_2_0_2 = = 
 
% Backward Dynamics 

  FF17 = -(s.frc(1,7)-s.m(7)*AlF17-FF111*C11-FF114*C14-FF18*C8+FF214*S14-FF311*S11-FF38*S8);
  FF27 = -(s.frc(2,7)-FA211-FA28-s.m(7)*AlF27-FF114*S14-FF212*C12-FF214*C14-FF29*C9+FF312*S12+FF39*S9);
  FF37 = -(s.frc(3,14)+s.frc(3,7)-s.m(14)*AlF314-s.m(7)*AlF37+FA115*S15-FA315*C15+FF111*S11+FF18*S8-FF311*C11-FF38*C8);
  FM17_1 = s.m(7)*AlM15_1+FM111_1*C11+FM114_1*C14+FM18_1*C8-FM214_1*S14+FM311_1*S11+FM38_1*S8;
  FM27_1 = FB211_1+FB28_1+s.m(7)*AlM26_1+FM114_1*S14+FM212_1*C12+FM214_1*C14+FM29_1*C9-FM312_1*S12-FM39_1*S9;
  FM37_1 = AlM36_1*(s.m(14)+s.m(7))-FB115_1*S15+FB315_1*C15-FM111_1*S11-FM18_1*S8+FM311_1*C11+FM38_1*C8;
  FM17_2 = s.m(7)*AlM15_2+FM111_2*C11+FM114_2*C14+FM18_2*C8-FM214_2*S14+FM311_2*S11+FM38_2*S8;
  FM27_2 = FB211_2+FB28_2+s.m(7)*AlM26_2+FM114_2*S14+FM212_2*C12+FM214_2*C14+FM29_2*C9-FM312_2*S12-FM39_2*S9;
  FM37_2 = AlM36_2*(s.m(14)+s.m(7))-FB115_2*S15+FB315_2*C15-FM111_2*S11-FM18_2*S8+FM311_2*C11+FM38_2*C8;
  FM17_3 = FM114_3*C14-FM214_3*S14-s.m(7)*S5+FM111_3*C11+FM18_3*C8+FM311_3*S11+FM38_3*S8;
  FM27_3 = FB211_3+FB28_3+s.m(7)*AlM26_3+FM114_3*S14+FM212_3*C12+FM214_3*C14+FM29_3*C9-FM312_3*S12-FM39_3*S9;
  FM37_3 = AlM36_3*(s.m(14)+s.m(7))-FB115_3*S15+FB315_3*C15-FM111_3*S11-FM18_3*S8+FM311_3*C11+FM38_3*C8;
  FM37_4 = -(FM111_4*S11+FM18_4*S8-FM311_4*C11-FM38_4*C8);
  FM37_5 = -(FM111_5*S11+FM18_5*S8-FM311_5*C11-FM38_5*C8);
  FM37_6 = -(FM111_6*S11+FM18_6*S8-FM311_6*C11-FM38_6*C8);
  FM37_7 = s.m(14)+s.m(15)+s.m(7)+C11*(FB311_7+C12*(FB312_7+FB313_7)+S12*(FB212_7+FB113_7*S13+FB213_7*C13))-S11*(FB112_7-s.m(11)*S11+FB113_7*C13-...
 FB213_7*S13)+C8*(FB38_7+C9*(FB310_7+FB39_7)+S9*(FB29_7+FB110_7*S10+FB210_7*C10))-S8*(FB19_7-s.m(8)*S8+FB110_7*C10-FB210_7*S10);

% = = Block_0_2_0_2_0_6 = = 
 
% Backward Dynamics 

  FA116 = -(s.frc(1,16)-s.m(16)*(C16*(AlF15+BeF26*s.dpt(2,3))-S16*(AlF36+BeF86*s.dpt(2,3))));
  FA316 = -(s.frc(3,16)-s.m(16)*(C16*(AlF36+BeF86*s.dpt(2,3))+S16*(AlF15+BeF26*s.dpt(2,3))));
  CF116 = -(s.trq(1,16)-s.In(1,16)*(C16*(OpF15-qd(16)*OM36)-S16*(OpF36+qd(16)*OM16))+OM216*OM316*(s.In(5,16)-s.In(9,16)));
  CF216 = -(s.trq(2,16)-s.In(5,16)*OpF26-OM116*OM316*(s.In(1,16)-s.In(9,16)));
  CF316 = -(s.trq(3,16)-s.In(9,16)*(C16*(OpF36+qd(16)*OM16)+S16*(OpF15-qd(16)*OM36))+OM116*OM216*(s.In(1,16)-s.In(5,16)));
  FB116_1 = s.m(16)*(AlM15_1*C16-AlM36_1*S16);
  FB316_1 = s.m(16)*(AlM15_1*S16+AlM36_1*C16);
  FB116_2 = s.m(16)*(AlM15_2*C16-AlM36_2*S16);
  FB316_2 = s.m(16)*(AlM15_2*S16+AlM36_2*C16);
  FB116_3 = -s.m(16)*(AlM36_3*S16+C16*S5);
  FB316_3 = s.m(16)*(AlM36_3*C16-S16*S5);
  FB116_4 = -s.m(16)*s.dpt(2,3)*(OpM36_4*C16-S16*S5);
  FB316_4 = -s.m(16)*s.dpt(2,3)*(OpM36_4*S16+C16*S5);
  CM116_4 = -s.In(1,16)*(OpM36_4*S16+C16*S5);
  CM216_4 = s.In(5,16)*OpM26_4;
  CM316_4 = s.In(9,16)*(OpM36_4*C16-S16*S5);
  CM216_5 = s.In(5,16)*C6;

% = = Block_0_2_0_2_0_7 = = 
 
% Backward Dynamics 

  FA117 = -(s.frc(1,17)-s.m(17)*(C17*(AlF15+BeF26*s.dpt(2,4))-S17*(AlF36+BeF86*s.dpt(2,4))));
  FA317 = -(s.frc(3,17)-s.m(17)*(C17*(AlF36+BeF86*s.dpt(2,4))+S17*(AlF15+BeF26*s.dpt(2,4))));
  CF117 = -(s.trq(1,17)-s.In(1,17)*(C17*(OpF15-qd(17)*OM36)-S17*(OpF36+qd(17)*OM16))+OM217*OM317*(s.In(5,17)-s.In(9,17)));
  CF217 = -(s.trq(2,17)-s.In(5,17)*OpF26-OM117*OM317*(s.In(1,17)-s.In(9,17)));
  CF317 = -(s.trq(3,17)-s.In(9,17)*(C17*(OpF36+qd(17)*OM16)+S17*(OpF15-qd(17)*OM36))+OM117*OM217*(s.In(1,17)-s.In(5,17)));
  FB117_1 = s.m(17)*(AlM15_1*C17-AlM36_1*S17);
  FB317_1 = s.m(17)*(AlM15_1*S17+AlM36_1*C17);
  FB117_2 = s.m(17)*(AlM15_2*C17-AlM36_2*S17);
  FB317_2 = s.m(17)*(AlM15_2*S17+AlM36_2*C17);
  FB117_3 = -s.m(17)*(AlM36_3*S17+C17*S5);
  FB317_3 = s.m(17)*(AlM36_3*C17-S17*S5);
  FB117_4 = -s.m(17)*s.dpt(2,4)*(OpM36_4*C17-S17*S5);
  FB317_4 = -s.m(17)*s.dpt(2,4)*(OpM36_4*S17+C17*S5);
  CM117_4 = -s.In(1,17)*(OpM36_4*S17+C17*S5);
  CM217_4 = s.In(5,17)*OpM26_4;
  CM317_4 = s.In(9,17)*(OpM36_4*C17-S17*S5);
  CM217_5 = s.In(5,17)*C6;

% = = Block_0_2_0_3_0_1 = = 
 
% Backward Dynamics 

  FA16 = -(s.frc(1,6)-s.m(6)*(AlF15+BeF26*s.l(2,6)-s.l(1,6)*(OM26*OM26+OM36*OM36)));
  FA26 = -(s.frc(2,6)-s.m(6)*(AlF26+BS56*s.l(2,6)+s.l(1,6)*(BS26+OpF36)));
  FA36 = -(s.frc(3,6)-s.m(6)*(AlF36+BeF86*s.l(2,6)+s.l(1,6)*(BS36-OpF26)));
  FF16 = FA16+FF17+FA116*C16+FA117*C17+FA316*S16+FA317*S17;
  FF26 = -(s.frc(2,16)+s.frc(2,17)-FA26-FF27-s.m(16)*(AlF26+BS56*s.dpt(2,3))-s.m(17)*(AlF26+BS56*s.dpt(2,4)));
  FF36 = FA36+FF37-FA116*S16-FA117*S17+FA316*C16+FA317*C17;
  CF16 = -(s.trq(1,6)+s.trq(1,7)-s.In(1,6)*OpF15-s.In(1,7)*OpF15-CF111*C11-CF114*C14-CF116*C16-CF117*C17-CF18*C8+CF214*S14-CF311*S11-CF316*S16-...
 CF317*S17-CF38*S8+Dz73*FF27-FA36*s.l(2,6)+OM26*OM36*(s.In(5,6)-s.In(9,6))+OM26*OM36*(s.In(5,7)-s.In(9,7))+s.dpt(2,3)*(FA116*S16-FA316*C16)+s.dpt(2,4)...
 *(FA117*S17-FA317*C17)+s.dpt(2,6)*(FF18*S8-FF38*C8)+s.dpt(2,7)*(FF111*S11-FF311*C11)+s.dpt(3,8)*(FF114*S14+FF214*C14));
  CF26 = -(s.trq(2,6)+s.trq(2,7)-CF211-CF216-CF217-CF28-s.In(5,6)*OpF26-s.In(5,7)*OpF26-CF114*S14-CF214*C14-Dz73*FF17+FA36*s.l(1,6)-OM16*OM36*(...
 s.In(1,6)-s.In(9,6))-OM16*OM36*(s.In(1,7)-s.In(9,7))-s.dpt(3,8)*(FF114*C14-FF214*S14));
  CF36 = -(s.trq(3,6)+s.trq(3,7)-CF314-s.In(9,6)*OpF36-s.In(9,7)*OpF36+CF111*S11+CF116*S16+CF117*S17+CF18*S8-CF311*C11-CF316*C16-CF317*C17-CF38*...
 C8+FA16*s.l(2,6)-FA26*s.l(1,6)+OM16*OM26*(s.In(1,6)-s.In(5,6))+OM16*OM26*(s.In(1,7)-s.In(5,7))+s.dpt(2,3)*(FA116*C16+FA316*S16)+s.dpt(2,4)*(FA117*C17...
 +FA317*S17)+s.dpt(2,6)*(FF18*C8+FF38*S8)+s.dpt(2,7)*(FF111*C11+FF311*S11));
  FB16_1 = s.m(6)*AlM15_1;
  FB26_1 = s.m(6)*AlM26_1;
  FB36_1 = s.m(6)*AlM36_1;
  FM16_1 = FB16_1+FM17_1+FB116_1*C16+FB117_1*C17+FB316_1*S16+FB317_1*S17;
  FM26_1 = FB26_1+FM27_1+s.m(16)*AlM26_1+s.m(17)*AlM26_1;
  FM36_1 = FB36_1+FM37_1-FB116_1*S16-FB117_1*S17+FB316_1*C16+FB317_1*C17;
  CM16_1 = CM111_1*C11+CM18_1*C8+CM311_1*S11+CM38_1*S8-Dz73*FM27_1+FB36_1*s.l(2,6)-s.dpt(2,3)*(FB116_1*S16-FB316_1*C16)-s.dpt(2,4)*(FB117_1*S17-...
 FB317_1*C17)-s.dpt(2,6)*(FM18_1*S8-FM38_1*C8)-s.dpt(2,7)*(FM111_1*S11-FM311_1*C11)-s.dpt(3,8)*(FM114_1*S14+FM214_1*C14);
  CM26_1 = CM211_1+CM28_1+Dz73*FM17_1-FB36_1*s.l(1,6)+s.dpt(3,8)*(FM114_1*C14-FM214_1*S14);
  CM36_1 = -(CM111_1*S11+CM18_1*S8-CM311_1*C11-CM38_1*C8+FB16_1*s.l(2,6)-FB26_1*s.l(1,6)+s.dpt(2,3)*(FB116_1*C16+FB316_1*S16)+s.dpt(2,4)*(FB117_1...
 *C17+FB317_1*S17)+s.dpt(2,6)*(FM18_1*C8+FM38_1*S8)+s.dpt(2,7)*(FM111_1*C11+FM311_1*S11));
  FB16_2 = s.m(6)*AlM15_2;
  FB26_2 = s.m(6)*AlM26_2;
  FB36_2 = s.m(6)*AlM36_2;
  FM16_2 = FB16_2+FM17_2+FB116_2*C16+FB117_2*C17+FB316_2*S16+FB317_2*S17;
  FM26_2 = FB26_2+FM27_2+s.m(16)*AlM26_2+s.m(17)*AlM26_2;
  FM36_2 = FB36_2+FM37_2-FB116_2*S16-FB117_2*S17+FB316_2*C16+FB317_2*C17;
  CM16_2 = CM111_2*C11+CM18_2*C8+CM311_2*S11+CM38_2*S8-Dz73*FM27_2+FB36_2*s.l(2,6)-s.dpt(2,3)*(FB116_2*S16-FB316_2*C16)-s.dpt(2,4)*(FB117_2*S17-...
 FB317_2*C17)-s.dpt(2,6)*(FM18_2*S8-FM38_2*C8)-s.dpt(2,7)*(FM111_2*S11-FM311_2*C11)-s.dpt(3,8)*(FM114_2*S14+FM214_2*C14);
  CM26_2 = CM211_2+CM28_2+Dz73*FM17_2-FB36_2*s.l(1,6)+s.dpt(3,8)*(FM114_2*C14-FM214_2*S14);
  CM36_2 = -(CM111_2*S11+CM18_2*S8-CM311_2*C11-CM38_2*C8+FB16_2*s.l(2,6)-FB26_2*s.l(1,6)+s.dpt(2,3)*(FB116_2*C16+FB316_2*S16)+s.dpt(2,4)*(FB117_2...
 *C17+FB317_2*S17)+s.dpt(2,6)*(FM18_2*C8+FM38_2*S8)+s.dpt(2,7)*(FM111_2*C11+FM311_2*S11));
  FB16_3 = -s.m(6)*S5;
  FB26_3 = s.m(6)*AlM26_3;
  FB36_3 = s.m(6)*AlM36_3;
  CM16_3 = CM111_3*C11+CM18_3*C8+CM311_3*S11+CM38_3*S8-Dz73*FM27_3+FB36_3*s.l(2,6)-s.dpt(2,3)*(FB116_3*S16-FB316_3*C16)-s.dpt(2,4)*(FB117_3*S17-...
 FB317_3*C17)-s.dpt(2,6)*(FM18_3*S8-FM38_3*C8)-s.dpt(2,7)*(FM111_3*S11-FM311_3*C11)-s.dpt(3,8)*(FM114_3*S14+FM214_3*C14);
  CM26_3 = CM211_3+CM28_3+Dz73*FM17_3-FB36_3*s.l(1,6)+s.dpt(3,8)*(FM114_3*C14-FM214_3*S14);
  CM36_3 = -(CM111_3*S11+CM18_3*S8-CM311_3*C11-CM38_3*C8+FB16_3*s.l(2,6)-FB26_3*s.l(1,6)+s.dpt(2,3)*(FB116_3*C16+FB316_3*S16)+s.dpt(2,4)*(FB117_3...
 *C17+FB317_3*S17)+s.dpt(2,6)*(FM18_3*C8+FM38_3*S8)+s.dpt(2,7)*(FM111_3*C11+FM311_3*S11));
  FB36_4 = -s.m(6)*(OpM26_4*s.l(1,6)+s.l(2,6)*S5);
  CM16_4 = CM111_4*C11+CM114_4*C14+CM116_4*C16+CM117_4*C17+CM18_4*C8-CM214_4*S14+CM311_4*S11+CM316_4*S16+CM317_4*S17+CM38_4*S8-Dz73*(FB211_4+...
 FB28_4+s.m(7)*AlM27_4+FM114_4*S14+FM212_4*C12+FM214_4*C14+FM29_4*C9-FM312_4*S12-FM39_4*S9)+FB36_4*s.l(2,6)-s.dpt(2,3)*(FB116_4*S16-FB316_4*C16)-...
 s.dpt(2,4)*(FB117_4*S17-FB317_4*C17)-s.dpt(2,6)*(FM18_4*S8-FM38_4*C8)-s.dpt(2,7)*(FM111_4*S11-FM311_4*C11)-s.dpt(3,8)*(FM114_4*S14+FM214_4*C14)-S5*(...
 s.In(1,6)+s.In(1,7));
  CM26_4 = CM211_4+CM216_4+CM217_4+CM28_4+s.In(5,6)*OpM26_4+s.In(5,7)*OpM26_4+CM114_4*S14+CM214_4*C14+Dz73*(s.m(7)*AlM17_4+FM111_4*C11+FM114_4*...
 C14+FM18_4*C8-FM214_4*S14+FM311_4*S11+FM38_4*S8)-FB36_4*s.l(1,6)+s.dpt(3,8)*(FM114_4*C14-FM214_4*S14);
  CM36_4 = CM314_4+s.In(9,6)*OpM36_4+s.In(9,7)*OpM36_4+s.m(6)*OpM36_4*s.l(1,6)*s.l(1,6)+s.m(6)*OpM36_4*s.l(2,6)*s.l(2,6)-CM111_4*S11-CM116_4*S16-...
 CM117_4*S17-CM18_4*S8+CM311_4*C11+CM316_4*C16+CM317_4*C17+CM38_4*C8-s.dpt(2,3)*(FB116_4*C16+FB316_4*S16)-s.dpt(2,4)*(FB117_4*C17+FB317_4*S17)-...
 s.dpt(2,6)*(FM18_4*C8+FM38_4*S8)-s.dpt(2,7)*(FM111_4*C11+FM311_4*S11);
  FB36_5 = -s.m(6)*s.l(1,6)*C6;
  CM16_5 = CM111_5*C11+CM114_5*C14+CM18_5*C8-CM214_5*S14+CM311_5*S11+CM38_5*S8-Dz73*(FB211_5+FB28_5+FM114_5*S14+FM212_5*C12+FM214_5*C14+FM29_5*C9...
 -FM312_5*S12-FM39_5*S9)+FB36_5*s.l(2,6)-s.dpt(2,6)*(FM18_5*S8-FM38_5*C8)-s.dpt(2,7)*(FM111_5*S11-FM311_5*C11)-s.dpt(3,8)*(FM114_5*S14+FM214_5*C14)+...
 C16*S16*S6*(s.In(1,16)-s.In(9,16))+C17*S17*S6*(s.In(1,17)-s.In(9,17));
  CM16_6 = s.In(1,6)+s.In(1,7)+s.In(1,16)*C16*C16+s.In(1,17)*C17*C17+s.In(9,16)*S16*S16+s.In(9,17)*S17*S17+s.m(16)*s.dpt(2,3)*s.dpt(2,3)+s.m(17)*...
 s.dpt(2,4)*s.dpt(2,4)+s.m(6)*s.l(2,6)*s.l(2,6)-Dz73*(FB211_6+FB28_6-s.m(7)*Dz73+FM114_6*S14+FM212_6*C12+FM214_6*C14+FM29_6*C9-FM312_6*S12-FM39_6*S9)-...
 s.dpt(2,6)*(FM18_6*S8-FM38_6*C8)-s.dpt(2,7)*(FM111_6*S11-FM311_6*C11)-s.dpt(3,8)*(FM114_6*S14+FM214_6*C14)+C11*(CM112_6+s.In(1,11)*C11+FB311_6*...
 s.l(2,11))+S11*(s.In(9,11)*S11+CM212_6*S12+CM312_6*C12-FB111_6*s.l(2,11)+FB211_6*s.l(1,11))+C14*(s.In(1,14)*C14+CM115_6*C15+CM315_6*S15)-S14*(CM215_6...
 -s.In(5,14)*S14)+C8*(CM19_6+s.In(1,8)*C8+FB38_6*s.l(2,8))+S8*(s.In(9,8)*S8+CM29_6*S9+CM39_6*C9-FB18_6*s.l(2,8)+FB28_6*s.l(1,8));
  FF5_26 = FF26*C6-FF36*S6;
  FF5_36 = FF26*S6+FF36*C6;
  CF5_26 = CF26*C6-CF36*S6;
  FM51_26 = FM26_1*C6-FM36_1*S6;
  FM51_36 = FM26_1*S6+FM36_1*C6;
  CM51_26 = CM26_1*C6-CM36_1*S6;
  FM52_36 = FM26_2*S6+FM36_2*C6;
  CM52_26 = CM26_2*C6-CM36_2*S6;
  CM53_26 = CM26_3*C6-CM36_3*S6;
  CM54_26 = CM26_4*C6-CM36_4*S6;
  CM55_26 = C6*(CM211_5+CM216_5+CM217_5+CM28_5+s.In(5,6)*C6+s.In(5,7)*C6+CM114_5*S14+CM214_5*C14+Dz73*(s.m(7)*AlM17_5+FM111_5*C11+FM114_5*C14+...
 FM18_5*C8-FM214_5*S14+FM311_5*S11+FM38_5*S8)-FB36_5*s.l(1,6)+s.dpt(3,8)*(FM114_5*C14-FM214_5*S14))-S6*(CM314_5-s.In(9,6)*S6-s.In(9,7)*S6-s.m(6)*...
 s.l(1,6)*s.l(1,6)*S6-s.m(6)*s.l(2,6)*s.l(2,6)*S6-CM111_5*S11-CM18_5*S8+CM311_5*C11+CM38_5*C8-s.dpt(2,6)*(FM18_5*C8+FM38_5*S8)-s.dpt(2,7)*(FM111_5*C11...
 +FM311_5*S11)-S6*(s.In(1,16)*S16*S16+s.In(9,16)*C16*C16+s.m(16)*s.dpt(2,3)*s.dpt(2,3))-S6*(s.In(1,17)*S17*S17+s.In(9,17)*C17*C17+s.m(17)*s.dpt(2,4)*...
 s.dpt(2,4)));
  FF4_15 = FF16*C5+FF5_36*S5;
  FF4_35 = -(FF16*S5-FF5_36*C5);
  CF4_35 = -(CF16*S5-C5*(CF26*S6+CF36*C6));
  FM41_15 = FM16_1*C5+FM51_36*S5;
  FM41_35 = -(FM16_1*S5-FM51_36*C5);
  CM41_35 = -(CM16_1*S5-C5*(CM26_1*S6+CM36_1*C6));
  FM42_35 = -(FM16_2*S5-FM52_36*C5);
  CM42_35 = -(CM16_2*S5-C5*(CM26_2*S6+CM36_2*C6));
  FM43_35 = C5*(C6*(FB36_3+FM37_3-FB116_3*S16-FB117_3*S17+FB316_3*C16+FB317_3*C17)+S6*(FB26_3+FM27_3+s.m(16)*AlM26_3+s.m(17)*AlM26_3))-S5*(FB16_3...
 +FM17_3+FB116_3*C16+FB117_3*C17+FB316_3*S16+FB317_3*S17);
  CM43_35 = -(CM16_3*S5-C5*(CM26_3*S6+CM36_3*C6));
  CM44_35 = -(CM16_4*S5-C5*(CM26_4*S6+CM36_4*C6));
  FF3_14 = FF4_15*C4-FF5_26*S4;
  FF3_24 = FF4_15*S4+FF5_26*C4;
  FM31_14 = FM41_15*C4-FM51_26*S4;
  FM31_24 = FM41_15*S4+FM51_26*C4;
  FM32_24 = C4*(FM26_2*C6-FM36_2*S6)+S4*(FM16_2*C5+FM52_36*S5);

% = = Block_0_3_0_0_0_0 = = 
 
% Symbolic Outputs  

  M(1,1) = FM31_14;
  M(1,2) = FM31_24;
  M(1,3) = FM41_35;
  M(1,4) = CM41_35;
  M(1,5) = CM51_26;
  M(1,6) = CM16_1;
  M(1,7) = FM37_1;
  M(1,8) = CM28_1;
  M(1,9) = CM19_1;
  M(1,10) = CM310_1;
  M(1,11) = CM211_1;
  M(1,12) = CM112_1;
  M(1,13) = CM313_1;
  M(2,1) = FM31_24;
  M(2,2) = FM32_24;
  M(2,3) = FM42_35;
  M(2,4) = CM42_35;
  M(2,5) = CM52_26;
  M(2,6) = CM16_2;
  M(2,7) = FM37_2;
  M(2,8) = CM28_2;
  M(2,9) = CM19_2;
  M(2,10) = CM310_2;
  M(2,11) = CM211_2;
  M(2,12) = CM112_2;
  M(2,13) = CM313_2;
  M(3,1) = FM41_35;
  M(3,2) = FM42_35;
  M(3,3) = FM43_35;
  M(3,4) = CM43_35;
  M(3,5) = CM53_26;
  M(3,6) = CM16_3;
  M(3,7) = FM37_3;
  M(3,8) = CM28_3;
  M(3,9) = CM19_3;
  M(3,10) = CM310_3;
  M(3,11) = CM211_3;
  M(3,12) = CM112_3;
  M(3,13) = CM313_3;
  M(4,1) = CM41_35;
  M(4,2) = CM42_35;
  M(4,3) = CM43_35;
  M(4,4) = CM44_35;
  M(4,5) = CM54_26;
  M(4,6) = CM16_4;
  M(4,7) = FM37_4;
  M(4,8) = CM28_4;
  M(4,9) = CM19_4;
  M(4,10) = CM310_4;
  M(4,11) = CM211_4;
  M(4,12) = CM112_4;
  M(4,13) = CM313_4;
  M(4,14) = CM314_4;
  M(4,15) = CM215_4;
  M(4,16) = CM216_4;
  M(4,17) = CM217_4;
  M(5,1) = CM51_26;
  M(5,2) = CM52_26;
  M(5,3) = CM53_26;
  M(5,4) = CM54_26;
  M(5,5) = CM55_26;
  M(5,6) = CM16_5;
  M(5,7) = FM37_5;
  M(5,8) = CM28_5;
  M(5,9) = CM19_5;
  M(5,10) = CM310_5;
  M(5,11) = CM211_5;
  M(5,12) = CM112_5;
  M(5,13) = CM313_5;
  M(5,14) = CM314_5;
  M(5,15) = CM215_5;
  M(5,16) = CM216_5;
  M(5,17) = CM217_5;
  M(6,1) = CM16_1;
  M(6,2) = CM16_2;
  M(6,3) = CM16_3;
  M(6,4) = CM16_4;
  M(6,5) = CM16_5;
  M(6,6) = CM16_6;
  M(6,7) = FM37_6;
  M(6,8) = CM28_6;
  M(6,9) = CM19_6;
  M(6,10) = CM310_6;
  M(6,11) = CM211_6;
  M(6,12) = CM112_6;
  M(6,13) = CM313_6;
  M(6,14) = CM146_315;
  M(6,15) = CM215_6;
  M(7,1) = FM37_1;
  M(7,2) = FM37_2;
  M(7,3) = FM37_3;
  M(7,4) = FM37_4;
  M(7,5) = FM37_5;
  M(7,6) = FM37_6;
  M(7,7) = FM37_7;
  M(7,8) = CM28_7;
  M(7,9) = CM19_7;
  M(7,10) = CM310_7;
  M(7,11) = CM211_7;
  M(7,12) = CM112_7;
  M(7,13) = CM313_7;
  M(8,1) = CM28_1;
  M(8,2) = CM28_2;
  M(8,3) = CM28_3;
  M(8,4) = CM28_4;
  M(8,5) = CM28_5;
  M(8,6) = CM28_6;
  M(8,7) = CM28_7;
  M(8,8) = CM28_8;
  M(8,9) = CM19_8;
  M(8,10) = CM310_8;
  M(9,1) = CM19_1;
  M(9,2) = CM19_2;
  M(9,3) = CM19_3;
  M(9,4) = CM19_4;
  M(9,5) = CM19_5;
  M(9,6) = CM19_6;
  M(9,7) = CM19_7;
  M(9,8) = CM19_8;
  M(9,9) = CM19_9;
  M(9,10) = CM310_9;
  M(10,1) = CM310_1;
  M(10,2) = CM310_2;
  M(10,3) = CM310_3;
  M(10,4) = CM310_4;
  M(10,5) = CM310_5;
  M(10,6) = CM310_6;
  M(10,7) = CM310_7;
  M(10,8) = CM310_8;
  M(10,9) = CM310_9;
  M(10,10) = CM310_10;
  M(11,1) = CM211_1;
  M(11,2) = CM211_2;
  M(11,3) = CM211_3;
  M(11,4) = CM211_4;
  M(11,5) = CM211_5;
  M(11,6) = CM211_6;
  M(11,7) = CM211_7;
  M(11,11) = CM211_11;
  M(11,12) = CM112_11;
  M(11,13) = CM313_11;
  M(12,1) = CM112_1;
  M(12,2) = CM112_2;
  M(12,3) = CM112_3;
  M(12,4) = CM112_4;
  M(12,5) = CM112_5;
  M(12,6) = CM112_6;
  M(12,7) = CM112_7;
  M(12,11) = CM112_11;
  M(12,12) = CM112_12;
  M(12,13) = CM313_12;
  M(13,1) = CM313_1;
  M(13,2) = CM313_2;
  M(13,3) = CM313_3;
  M(13,4) = CM313_4;
  M(13,5) = CM313_5;
  M(13,6) = CM313_6;
  M(13,7) = CM313_7;
  M(13,11) = CM313_11;
  M(13,12) = CM313_12;
  M(13,13) = CM313_13;
  M(14,4) = CM314_4;
  M(14,5) = CM314_5;
  M(14,6) = CM146_315;
  M(14,14) = CM314_14;
  M(15,4) = CM215_4;
  M(15,5) = CM215_5;
  M(15,6) = CM215_6;
  M(15,15) = s.In(5,15);
  M(16,4) = CM216_4;
  M(16,5) = CM216_5;
  M(16,16) = s.In(5,16);
  M(17,4) = CM217_4;
  M(17,5) = CM217_5;
  M(17,17) = s.In(5,17);
  c(1) = FF3_14;
  c(2) = FF3_24;
  c(3) = FF4_35;
  c(4) = CF4_35;
  c(5) = CF5_26;
  c(6) = CF16;
  c(7) = FF37;
  c(8) = CF28;
  c(9) = CF19;
  c(10) = CF310;
  c(11) = CF211;
  c(12) = CF112;
  c(13) = CF313;
  c(14) = CF314;
  c(15) = CF215;
  c(16) = CF216;
  c(17) = CF217;

% ====== END Task 0 ====== 

  

