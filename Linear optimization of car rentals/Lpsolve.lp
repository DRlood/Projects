/* _Car_rental
Net profit total is the profit generated from all leased vehicles
(there's a discount for renting on Saturdays)(tr_it)
minus the maintenance costs incurred on different days of rental,
plus the average compensation for vehicle damage,
then subtracting the overall costs of vehicle transfer(tu_ijt&td_ijt)
and miscellaneous expenses incurred during vehicle ownership,
then minus the cost of increasing the repair capability(ERB,ERM,FERB,FERM,CP)
in Car_rental2*/
//This objective function is consistent with the reference model and submitted Excel file
//I think in the reference model starting at line 4 from 'Profit=' in 13.25.5, RCD-CS should be RCD-CS_1
Maximize: - 19000 CP - 18000 ERB - 20000 ERM - 8000 FERB - 5000 FERM
 - 15 n - 20 td010 - 20 td011 - 20 td012 - 20 td013 - 20 td014 - 20 td015
 - 30 td020 - 30 td021 - 30 td022 - 30 td023 - 30 td024 - 30 td025 - 50 td030
 - 50 td031 - 50 td032 - 50 td033 - 50 td034 - 50 td035 - 20 td100 - 20 td101
 - 20 td102 - 20 td103 - 20 td104 - 20 td105 - 15 td120 - 15 td121 - 15 td122
 - 15 td123 - 15 td124 - 15 td125 - 35 td130 - 35 td131 - 35 td132 - 35 td133
 - 35 td134 - 35 td135 - 30 td200 - 30 td201 - 30 td202 - 30 td203 - 30 td204
 - 30 td205 - 15 td210 - 15 td211 - 15 td212 - 15 td213 - 15 td214 - 15 td215
 - 25 td230 - 25 td231 - 25 td232 - 25 td233 - 25 td234 - 25 td235 - 50 td300
 - 50 td301 - 50 td302 - 50 td303 - 50 td304 - 50 td305 - 35 td310 - 35 td311
 - 35 td312 - 35 td313 - 35 td314 - 35 td315 - 25 td320 - 25 td321 - 25 td322
 - 25 td323 - 25 td324 - 25 td325 + 67.8 tr00 + 67.8 tr01 + 67.8 tr02
 + 67.8 tr03 + 67.8 tr04 + 56.8 tr05 + 69.025 tr10 + 69.025 tr11 + 69.025 tr12
 + 69.025 tr13 + 69.025 tr14 + 58.025 tr15 + 69.27 tr20 + 69.27 tr21
 + 69.27 tr22 + 69.27 tr23 + 69.27 tr24 + 58.27 tr25 + 69.515 tr30
 + 69.515 tr31 + 69.515 tr32 + 69.515 tr33 + 69.515 tr34 + 58.515 tr35
 - 20 tu010 - 20 tu011 - 20 tu012 - 20 tu013 - 20 tu014 - 20 tu015 - 30 tu020
 - 30 tu021 - 30 tu022 - 30 tu023 - 30 tu024 - 30 tu025 - 50 tu030 - 50 tu031
 - 50 tu032 - 50 tu033 - 50 tu034 - 50 tu035 - 20 tu100 - 20 tu101 - 20 tu102
 - 20 tu103 - 20 tu104 - 20 tu105 - 15 tu120 - 15 tu121 - 15 tu122 - 15 tu123
 - 15 tu124 - 15 tu125 - 35 tu130 - 35 tu131 - 35 tu132 - 35 tu133 - 35 tu134
 - 35 tu135 - 30 tu200 - 30 tu201 - 30 tu202 - 30 tu203 - 30 tu204 - 30 tu205
 - 15 tu210 - 15 tu211 - 15 tu212 - 15 tu213 - 15 tu214 - 15 tu215 - 25 tu230
 - 25 tu231 - 25 tu232 - 25 tu233 - 25 tu234 - 25 tu235 - 50 tu300 - 50 tu301
 - 50 tu302 - 50 tu303 - 50 tu304 - 50 tu305 - 35 tu310 - 35 tu311 - 35 tu312
 - 35 tu313 - 35 tu314 - 35 tu315 - 25 tu320 - 25 tu321 - 25 tu322 - 25 tu323
 - 25 tu324 - 25 tu325;
 //Make sure the planned rental cars is less than the actual demand
 //tr_it means rent_out_at_depoti_in_day_t
 //This constraint is consistent with the reference model and the 6th constraint of the uploaded excel file.
Demand_at_depot0_day_0: tr00 <= 100;
Demand_at_depot0_day_1: tr01 <= 150;
Demand_at_depot0_day_2: tr02 <= 135;
Demand_at_depot0_day_3: tr03 <= 83;
Demand_at_depot0_day_4: tr04 <= 120;
Demand_at_depot0_day_5: tr05 <= 230;
Demand_at_depot1_day_0: tr10 <= 250;
Demand_at_depot1_day_1: tr11 <= 143;
Demand_at_depot1_day_2: tr12 <= 80;
Demand_at_depot1_day_3: tr13 <= 225;
Demand_at_depot1_day_4: tr14 <= 210;
Demand_at_depot1_day_5: tr15 <= 98;
Demand_at_depot2_day_0: tr20 <= 95;
Demand_at_depot2_day_1: tr21 <= 195;
Demand_at_depot2_day_2: tr22 <= 242;
Demand_at_depot2_day_3: tr23 <= 111;
Demand_at_depot2_day_4: tr24 <= 70;
Demand_at_depot2_day_5: tr25 <= 124;
Demand_at_depot3_day_0: tr30 <= 160;
Demand_at_depot3_day_1: tr31 <= 99;
Demand_at_depot3_day_2: tr32 <= 55;
Demand_at_depot3_day_3: tr33 <= 96;
Demand_at_depot3_day_4: tr34 <= 115;
Demand_at_depot3_day_5: tr35 <= 80;

//Total number of damaged cars into depot i on day t
//Because -k days will be called, k uses a loop with index +1.
//SUM[j=0 to 3, k=1 to 4](0.1 * P_ji * Q_k-1 * tr_jt-k) + SUM[j=0 to 3]td_jit-1 + ed_it-1 = n_it for i=0 to 3, for t=0 to 5.
/*(0.1) The probability of returning a damaged vehicle multiplied by
(P_ji) The probability of renting a car from j and returning it to i multiplied by
(tr_jt-k) the number of cars rented from j K days ago, and then multiplied by
(Q_k-1) rented for k days Probability. For all j and k.
Add (td_ijt-1) damaged cars at depot i at the beginning of day t-1.
Add (edit_1) damaged cars left at depot i at the beginning of day t.
Equal to (nd_it) number of damaged cars at depot i at the beginning of day t.
For all i, t .*/
//This is consistent with the second constraint in the reference book and submitted Excel file.
Total_damaged_cars_into_depot_0_day_0: ed05 - nd00 + td005 + td105 + td205
 + td305 + 0.015 tr03 + 0.012 tr04 + 0.033 tr05 + 0.00375 tr13 + 0.003 tr14
 + 0.00825 tr15 + 0.00375 tr23 + 0.003 tr24 + 0.00825 tr25 + 0.002 tr33
 + 0.0016 tr34 + 0.0044 tr35 = 0;
Total_damaged_cars_into_depot_0_day_1: ed00 - nd01 + td000 + td100 + td200
 + td300 + 0.033 tr00 + 0.015 tr04 + 0.012 tr05 + 0.00825 tr10 + 0.00375 tr14
 + 0.003 tr15 + 0.00825 tr20 + 0.00375 tr24 + 0.003 tr25 + 0.0044 tr30
 + 0.002 tr34 + 0.0016 tr35 = 0;
Total_damaged_cars_into_depot_0_day_2: ed01 - nd02 + td001 + td101 + td201
 + td301 + 0.012 tr00 + 0.033 tr01 + 0.015 tr05 + 0.003 tr10 + 0.00825 tr11
 + 0.00375 tr15 + 0.003 tr20 + 0.00825 tr21 + 0.00375 tr25 + 0.0016 tr30
 + 0.0044 tr31 + 0.002 tr35 = 0;
Total_damaged_cars_into_depot_0_day_3: ed02 - nd03 + td002 + td102 + td202
 + td302 + 0.015 tr00 + 0.012 tr01 + 0.033 tr02 + 0.00375 tr10 + 0.003 tr11
 + 0.00825 tr12 + 0.00375 tr20 + 0.003 tr21 + 0.00825 tr22 + 0.002 tr30
 + 0.0016 tr31 + 0.0044 tr32 = 0;
Total_damaged_cars_into_depot_0_day_4: ed03 - nd04 + td003 + td103 + td203
 + td303 + 0.015 tr01 + 0.012 tr02 + 0.033 tr03 + 0.00375 tr11 + 0.003 tr12
 + 0.00825 tr13 + 0.00375 tr21 + 0.003 tr22 + 0.00825 tr23 + 0.002 tr31
 + 0.0016 tr32 + 0.0044 tr33 = 0;
Total_damaged_cars_into_depot_0_day_5: ed04 - nd05 + td004 + td104 + td204
 + td304 + 0.015 tr02 + 0.012 tr03 + 0.033 tr04 + 0.00375 tr12 + 0.003 tr13
 + 0.00825 tr14 + 0.00375 tr22 + 0.003 tr23 + 0.00825 tr24 + 0.002 tr32
 + 0.0016 tr33 + 0.0044 tr34 = 0;
Total_damaged_cars_into_depot_1_day_0: ed15 - nd10 + td015 + td115 + td215
 + td315 + 0.005 tr03 + 0.004 tr04 + 0.011 tr05 + 0.01375 tr13 + 0.011 tr14
 + 0.03025 tr15 + 0.005 tr23 + 0.004 tr24 + 0.011 tr25 + 0.003 tr33
 + 0.0024 tr34 + 0.0066 tr35 = 0;
Total_damaged_cars_into_depot_1_day_1: ed10 - nd11 + td010 + td110 + td210
 + td310 + 0.011 tr00 + 0.005 tr04 + 0.004 tr05 + 0.03025 tr10 + 0.01375 tr14
 + 0.011 tr15 + 0.011 tr20 + 0.005 tr24 + 0.004 tr25 + 0.0066 tr30
 + 0.003 tr34 + 0.0024 tr35 = 0;
Total_damaged_cars_into_depot_1_day_2: ed11 - nd12 + td011 + td111 + td211
 + td311 + 0.004 tr00 + 0.011 tr01 + 0.005 tr05 + 0.011 tr10 + 0.03025 tr11
 + 0.01375 tr15 + 0.004 tr20 + 0.011 tr21 + 0.005 tr25 + 0.0024 tr30
 + 0.0066 tr31 + 0.003 tr35 = 0;
Total_damaged_cars_into_depot_1_day_3: ed12 - nd13 + td012 + td112 + td212
 + td312 + 0.005 tr00 + 0.004 tr01 + 0.011 tr02 + 0.01375 tr10 + 0.011 tr11
 + 0.03025 tr12 + 0.005 tr20 + 0.004 tr21 + 0.011 tr22 + 0.003 tr30
 + 0.0024 tr31 + 0.0066 tr32 = 0;
Total_damaged_cars_into_depot_1_day_4: ed13 - nd14 + td013 + td113 + td213
 + td313 + 0.005 tr01 + 0.004 tr02 + 0.011 tr03 + 0.01375 tr11 + 0.011 tr12
 + 0.03025 tr13 + 0.005 tr21 + 0.004 tr22 + 0.011 tr23 + 0.003 tr31
 + 0.0024 tr32 + 0.0066 tr33 = 0;
Total_damaged_cars_into_depot_1_day_5: ed14 - nd15 + td014 + td114 + td214
 + td314 + 0.005 tr02 + 0.004 tr03 + 0.011 tr04 + 0.01375 tr12 + 0.011 tr13
 + 0.03025 tr14 + 0.005 tr22 + 0.004 tr23 + 0.011 tr24 + 0.003 tr32
 + 0.0024 tr33 + 0.0066 tr34 = 0;
Total_damaged_cars_into_depot_2_day_0: ed25 - nd20 + td025 + td125 + td225
 + td325 + 0.0025 tr03 + 0.002 tr04 + 0.0055 tr05 + 0.00625 tr13 + 0.005 tr14
 + 0.01375 tr15 + 0.0135 tr23 + 0.0108 tr24 + 0.0297 tr25 + 0.00675 tr33
 + 0.0054 tr34 + 0.01485 tr35 = 0;
Total_damaged_cars_into_depot_2_day_1: ed20 - nd21 + td020 + td120 + td220
 + td320 + 0.0055 tr00 + 0.0025 tr04 + 0.002 tr05 + 0.01375 tr10
 + 0.00625 tr14 + 0.005 tr15 + 0.0297 tr20 + 0.0135 tr24 + 0.0108 tr25
 + 0.01485 tr30 + 0.00675 tr34 + 0.0054 tr35 = 0;
Total_damaged_cars_into_depot_2_day_2: ed21 - nd22 + td021 + td121 + td221
 + td321 + 0.002 tr00 + 0.0055 tr01 + 0.0025 tr05 + 0.005 tr10 + 0.01375 tr11
 + 0.00625 tr15 + 0.0108 tr20 + 0.0297 tr21 + 0.0135 tr25 + 0.0054 tr30
 + 0.01485 tr31 + 0.00675 tr35 = 0;
Total_damaged_cars_into_depot_2_day_3: ed22 - nd23 + td022 + td122 + td222
 + td322 + 0.0025 tr00 + 0.002 tr01 + 0.0055 tr02 + 0.00625 tr10 + 0.005 tr11
 + 0.01375 tr12 + 0.0135 tr20 + 0.0108 tr21 + 0.0297 tr22 + 0.00675 tr30
 + 0.0054 tr31 + 0.01485 tr32 = 0;
Total_damaged_cars_into_depot_2_day_4: ed23 - nd24 + td023 + td123 + td223
 + td323 + 0.0025 tr01 + 0.002 tr02 + 0.0055 tr03 + 0.00625 tr11 + 0.005 tr12
 + 0.01375 tr13 + 0.0135 tr21 + 0.0108 tr22 + 0.0297 tr23 + 0.00675 tr31
 + 0.0054 tr32 + 0.01485 tr33 = 0;
Total_damaged_cars_into_depot_2_day_5: ed24 - nd25 + td024 + td124 + td224
 + td324 + 0.0025 tr02 + 0.002 tr03 + 0.0055 tr04 + 0.00625 tr12 + 0.005 tr13
 + 0.01375 tr14 + 0.0135 tr22 + 0.0108 tr23 + 0.0297 tr24 + 0.00675 tr32
 + 0.0054 tr33 + 0.01485 tr34 = 0;
Total_damaged_cars_into_depot_3_day_0: ed35 - nd30 + td035 + td135 + td235
 + td335 + 0.0025 tr03 + 0.002 tr04 + 0.0055 tr05 + 0.00125 tr13 + 0.001 tr14
 + 0.00275 tr15 + 0.00275 tr23 + 0.0022 tr24 + 0.00605 tr25 + 0.01325 tr33
 + 0.0106 tr34 + 0.02915 tr35 = 0;
Total_damaged_cars_into_depot_3_day_1: ed30 - nd31 + td030 + td130 + td230
 + td330 + 0.0055 tr00 + 0.0025 tr04 + 0.002 tr05 + 0.00275 tr10
 + 0.00125 tr14 + 0.001 tr15 + 0.00605 tr20 + 0.00275 tr24 + 0.0022 tr25
 + 0.02915 tr30 + 0.01325 tr34 + 0.0106 tr35 = 0;
Total_damaged_cars_into_depot_3_day_2: ed31 - nd32 + td031 + td131 + td231
 + td331 + 0.002 tr00 + 0.0055 tr01 + 0.0025 tr05 + 0.001 tr10 + 0.00275 tr11
 + 0.00125 tr15 + 0.0022 tr20 + 0.00605 tr21 + 0.00275 tr25 + 0.0106 tr30
 + 0.02915 tr31 + 0.01325 tr35 = 0;
Total_damaged_cars_into_depot_3_day_3: ed32 - nd33 + td032 + td132 + td232
 + td332 + 0.0025 tr00 + 0.002 tr01 + 0.0055 tr02 + 0.00125 tr10 + 0.001 tr11
 + 0.00275 tr12 + 0.00275 tr20 + 0.0022 tr21 + 0.00605 tr22 + 0.01325 tr30
 + 0.0106 tr31 + 0.02915 tr32 = 0;
Total_damaged_cars_into_depot_3_day_4: ed33 - nd34 + td033 + td133 + td233
 + td333 + 0.0025 tr01 + 0.002 tr02 + 0.0055 tr03 + 0.00125 tr11 + 0.001 tr12
 + 0.00275 tr13 + 0.00275 tr21 + 0.0022 tr22 + 0.00605 tr23 + 0.01325 tr31
 + 0.0106 tr32 + 0.02915 tr33 = 0;
Total_damaged_cars_into_depot_3_day_5: ed34 - nd35 + td034 + td134 + td234
 + td334 + 0.0025 tr02 + 0.002 tr03 + 0.0055 tr04 + 0.00125 tr12 + 0.001 tr13
 + 0.00275 tr14 + 0.00275 tr22 + 0.0022 tr23 + 0.00605 tr24 + 0.01325 tr32
 + 0.0106 tr33 + 0.02915 tr34 = 0;
 
//rp_it + SUM[j=0 to 3]td_jit + ed_it= nd_it for i=0 to 3, for t=0 to 5.
/*(rp_it)number of damaged cars to be repaired at depot i on day t add
(td_jit)number of damaged cars at depot j at the beginning of day t,
transferred to depot i for all j add
(ed_it)damaged cars left at depot i at the beginning of day t equals
(nd_it)number of damaged cars at depot i at the beginning of day t.For all i,t.*/
//This constraint is similar to the 4th constraint in reference model and submitted Excel file,
//but I changed rp_it-1 to rp_it, and I think the cars that need to be repaired on day t will leave on day t.
damaged_cars_out_depot_0_day_0: ed00 - nd00 + rp00 + td000 + td010 + td020
 + td030 = 0;
damaged_cars_out_depot_0_day_1: ed01 - nd01 + rp01 + td001 + td011 + td021
 + td031 = 0;
damaged_cars_out_depot_0_day_2: ed02 - nd02 + rp02 + td002 + td012 + td022
 + td032 = 0;
damaged_cars_out_depot_0_day_3: ed03 - nd03 + rp03 + td003 + td013 + td023
 + td033 = 0;
damaged_cars_out_depot_0_day_4: ed04 - nd04 + rp04 + td004 + td014 + td024
 + td034 = 0;
damaged_cars_out_depot_0_day_5: ed05 - nd05 + rp05 + td005 + td015 + td025
 + td035 = 0;
damaged_cars_out_depot_1_day_0: ed10 - nd10 + rp10 + td100 + td110 + td120
 + td130 = 0;
damaged_cars_out_depot_1_day_1: ed11 - nd11 + rp11 + td101 + td111 + td121
 + td131 = 0;
damaged_cars_out_depot_1_day_2: ed12 - nd12 + rp12 + td102 + td112 + td122
 + td132 = 0;
damaged_cars_out_depot_1_day_3: ed13 - nd13 + rp13 + td103 + td113 + td123
 + td133 = 0;
damaged_cars_out_depot_1_day_4: ed14 - nd14 + rp14 + td104 + td114 + td124
 + td134 = 0;
damaged_cars_out_depot_1_day_5: ed15 - nd15 + rp15 + td105 + td115 + td125
 + td135 = 0;
damaged_cars_out_depot_2_day_0: ed20 - nd20 + rp20 + td200 + td210 + td220
 + td230 = 0;
damaged_cars_out_depot_2_day_1: ed21 - nd21 + rp21 + td201 + td211 + td221
 + td231 = 0;
damaged_cars_out_depot_2_day_2: ed22 - nd22 + rp22 + td202 + td212 + td222
 + td232 = 0;
damaged_cars_out_depot_2_day_3: ed23 - nd23 + rp23 + td203 + td213 + td223
 + td233 = 0;
damaged_cars_out_depot_2_day_4: ed24 - nd24 + rp24 + td204 + td214 + td224
 + td234 = 0;
damaged_cars_out_depot_2_day_5: ed25 - nd25 + rp25 + td205 + td215 + td225
 + td235 = 0;
damaged_cars_out_depot_3_day_0: ed30 - nd30 + rp30 + td300 + td310 + td320
 + td330 = 0;
damaged_cars_out_depot_3_day_1: ed31 - nd31 + rp31 + td301 + td311 + td321
 + td331 = 0;
damaged_cars_out_depot_3_day_2: ed32 - nd32 + rp32 + td302 + td312 + td322
 + td332 = 0;
damaged_cars_out_depot_3_day_3: ed33 - nd33 + rp33 + td303 + td313 + td323
 + td333 = 0;
damaged_cars_out_depot_3_day_4: ed34 - nd34 + rp34 + td304 + td314 + td324
 + td334 = 0;
damaged_cars_out_depot_3_day_5: ed35 - nd35 + rp35 + td305 + td315 + td325
 + td335 = 0;
 
//This is an additional constraint I added to limit the data of i=j in tu and td to 0,
//because the car does not need to be transferred to the same place before.
//td_ijt/tuijt= number of damaged/undamaged cars at depot i
//at the beginning of day t,transferred to depot t.
no_transfer_within_depot_td_0_0: td000 = 0;
no_transfer_within_depot_td_0_1: td001 = 0;
no_transfer_within_depot_td_0_2: td002 = 0;
no_transfer_within_depot_td_0_3: td003 = 0;
no_transfer_within_depot_td_0_4: td004 = 0;
no_transfer_within_depot_td_0_5: td005 = 0;
no_transfer_within_depot_td_1_0: td110 = 0;
no_transfer_within_depot_td_1_1: td111 = 0;
no_transfer_within_depot_td_1_2: td112 = 0;
no_transfer_within_depot_td_1_3: td113 = 0;
no_transfer_within_depot_td_1_4: td114 = 0;
no_transfer_within_depot_td_1_5: td115 = 0;
no_transfer_within_depot_td_2_0: td220 = 0;
no_transfer_within_depot_td_2_1: td221 = 0;
no_transfer_within_depot_td_2_2: td222 = 0;
no_transfer_within_depot_td_2_3: td223 = 0;
no_transfer_within_depot_td_2_4: td224 = 0;
no_transfer_within_depot_td_2_5: td225 = 0;
no_transfer_within_depot_td_3_0: td330 = 0;
no_transfer_within_depot_td_3_1: td331 = 0;
no_transfer_within_depot_td_3_2: td332 = 0;
no_transfer_within_depot_td_3_3: td333 = 0;
no_transfer_within_depot_td_3_4: td334 = 0;
no_transfer_within_depot_td_3_5: td335 = 0;
no_transfer_within_depot_tu_0_0: tu000 = 0;
no_transfer_within_depot_tu_0_1: tu001 = 0;
no_transfer_within_depot_tu_0_2: tu002 = 0;
no_transfer_within_depot_tu_0_3: tu003 = 0;
no_transfer_within_depot_tu_0_4: tu004 = 0;
no_transfer_within_depot_tu_0_5: tu005 = 0;
no_transfer_within_depot_tu_1_0: tu110 = 0;
no_transfer_within_depot_tu_1_1: tu111 = 0;
no_transfer_within_depot_tu_1_2: tu112 = 0;
no_transfer_within_depot_tu_1_3: tu113 = 0;
no_transfer_within_depot_tu_1_4: tu114 = 0;
no_transfer_within_depot_tu_1_5: tu115 = 0;
no_transfer_within_depot_tu_2_0: tu220 = 0;
no_transfer_within_depot_tu_2_1: tu221 = 0;
no_transfer_within_depot_tu_2_2: tu222 = 0;
no_transfer_within_depot_tu_2_3: tu223 = 0;
no_transfer_within_depot_tu_2_4: tu224 = 0;
no_transfer_within_depot_tu_2_5: tu225 = 0;
no_transfer_within_depot_tu_3_0: tu330 = 0;
no_transfer_within_depot_tu_3_1: tu331 = 0;
no_transfer_within_depot_tu_3_2: tu332 = 0;
no_transfer_within_depot_tu_3_3: tu333 = 0;
no_transfer_within_depot_tu_3_4: tu334 = 0;
no_transfer_within_depot_tu_3_5: tu335 = 0;
//(rp_it)number of damaged cars to be repaired at depot i<=The repair capacity limit of each depot.
//Repair capabilities and costs are added in the second question.
//This constraint is same as the reference model and the 5th constraint of the uploaded excel file.
repair_capacity_depot_0_day_0: rp00 <= 0;
repair_capacity_depot_0_day_1: rp01 <= 0;
repair_capacity_depot_0_day_2: rp02 <= 0;
repair_capacity_depot_0_day_3: rp03 <= 0;
repair_capacity_depot_0_day_4: rp04 <= 0;
repair_capacity_depot_0_day_5: rp05 <= 0;
repair_capacity_depot_1_day_0: - 5 ERM - 5 FERM + rp10 <= 12;
repair_capacity_depot_1_day_1: - 5 ERM - 5 FERM + rp11 <= 12;
repair_capacity_depot_1_day_2: - 5 ERM - 5 FERM + rp12 <= 12;
repair_capacity_depot_1_day_3: - 5 ERM - 5 FERM + rp13 <= 12;
repair_capacity_depot_1_day_4: - 5 ERM - 5 FERM + rp14 <= 12;
repair_capacity_depot_1_day_5: - 5 ERM - 5 FERM + rp15 <= 12;
repair_capacity_depot_2_day_0: - 5 ERB - 5 FERB + rp20 <= 20;
repair_capacity_depot_2_day_1: - 5 ERB - 5 FERB + rp21 <= 20;
repair_capacity_depot_2_day_2: - 5 ERB - 5 FERB + rp22 <= 20;
repair_capacity_depot_2_day_3: - 5 ERB - 5 FERB + rp23 <= 20;
repair_capacity_depot_2_day_4: - 5 ERB - 5 FERB + rp24 <= 20;
repair_capacity_depot_2_day_5: - 5 ERB - 5 FERB + rp25 <= 20;
repair_capacity_depot_3_day_0: - 5 CP + rp30 <= 0;
repair_capacity_depot_3_day_1: - 5 CP + rp31 <= 0;
repair_capacity_depot_3_day_2: - 5 CP + rp32 <= 0;
repair_capacity_depot_3_day_3: - 5 CP + rp33 <= 0;
repair_capacity_depot_3_day_4: - 5 CP + rp34 <= 0;
repair_capacity_depot_3_day_5: - 5 CP + rp35 <= 0;
//Total number of cars equals number hired out from all depots on Monday for
//3 days, plus those on Tuesday for 2 or 3 days,(0.25tri1 + 0.45tri2) plus all damaged and undamaged
//cars in depots at the beginning of Wednesday(nui3 + ndi3).
//Notice! The reference model is (nui2 + ndi2), but I think it should be (nui3 + ndi3),
//and the index of Wednesday in the constraints below is 2.
//This constraint is similar with the reference model and the 7th constraint of the uploaded excel file.
total_number_of_cars: - n + nd02 + nd12 + nd22 + nd32 + nu02 + nu12 + nu22
 + nu32 + 0.25 tr00 + 0.45 tr01 + 0.25 tr10 + 0.45 tr11 + 0.25 tr20
 + 0.45 tr21 + 0.25 tr30 + 0.45 tr31 = 0;
 //Total number of undamaged cars into depot i on day t
 //SUM[j=0 to 3, k=1 to 4](0.9 * P_ji * Q_k-1 * tr_jt-k) + SUM[j=0 to 3]tu_jit-1 + rp_it-1 + eu_it-1= n_it for i=0 to 3, for t=0 to 5.
 /*(0.9) The probability of returning an undamaged vehicle multiplied by
(P_ji) The probability of renting a car from j and returning it to i multiplied by
(Q_k) the probability of cars rented from j K days ago, and then multiplied by
(tr_jt-k) the number of cars rented out from depot j at beginning of day t-k for all j,k.
Then add(tu_jit-1)number of undamaged cars at depot j at the beginning of day t, to be
transferred to depot i for all j and
add(rp_it-1) number of damaged cars to be repaired at depot i 1 day before and
add (eu_it-1) the number of undamaged cars left at depot i at the beginning of day t-1.
Equal to (nu_it) the number of undamaged cars at depot i at the beginning of day t.
For all i, t.*/
//This constraint is consistent with the first constraint in the reference model and submitted Excel file.
total_undamaged_cars_into_depot_0_day_0: eu05 - nu00 + rp05 + 0.135 tr03
 + 0.108 tr04 + 0.297 tr05 + 0.03375 tr13 + 0.027 tr14 + 0.07425 tr15
 + 0.03375 tr23 + 0.027 tr24 + 0.07425 tr25 + 0.018 tr33 + 0.0144 tr34
 + 0.0396 tr35 + tu005 + tu105 + tu205 + tu305 = 0;
total_undamaged_cars_into_depot_0_day_1: eu00 - nu01 + rp00 + 0.297 tr00
 + 0.135 tr04 + 0.108 tr05 + 0.07425 tr10 + 0.03375 tr14 + 0.027 tr15
 + 0.07425 tr20 + 0.03375 tr24 + 0.027 tr25 + 0.0396 tr30 + 0.018 tr34
 + 0.0144 tr35 + tu000 + tu100 + tu200 + tu300 = 0;
total_undamaged_cars_into_depot_0_day_2: eu01 - nu02 + rp01 + 0.108 tr00
 + 0.297 tr01 + 0.135 tr05 + 0.027 tr10 + 0.07425 tr11 + 0.03375 tr15
 + 0.027 tr20 + 0.07425 tr21 + 0.03375 tr25 + 0.0144 tr30 + 0.0396 tr31
 + 0.018 tr35 + tu001 + tu101 + tu201 + tu301 = 0;
total_undamaged_cars_into_depot_0_day_3: eu02 - nu03 + rp02 + 0.135 tr00
 + 0.108 tr01 + 0.297 tr02 + 0.03375 tr10 + 0.027 tr11 + 0.07425 tr12
 + 0.03375 tr20 + 0.027 tr21 + 0.07425 tr22 + 0.018 tr30 + 0.0144 tr31
 + 0.0396 tr32 + tu002 + tu102 + tu202 + tu302 = 0;
total_undamaged_cars_into_depot_0_day_4: eu03 - nu04 + rp03 + 0.135 tr01
 + 0.108 tr02 + 0.297 tr03 + 0.03375 tr11 + 0.027 tr12 + 0.07425 tr13
 + 0.03375 tr21 + 0.027 tr22 + 0.07425 tr23 + 0.018 tr31 + 0.0144 tr32
 + 0.0396 tr33 + tu003 + tu103 + tu203 + tu303 = 0;
total_undamaged_cars_into_depot_0_day_5: eu04 - nu05 + rp04 + 0.135 tr02
 + 0.108 tr03 + 0.297 tr04 + 0.03375 tr12 + 0.027 tr13 + 0.07425 tr14
 + 0.03375 tr22 + 0.027 tr23 + 0.07425 tr24 + 0.018 tr32 + 0.0144 tr33
 + 0.0396 tr34 + tu004 + tu104 + tu204 + tu304 = 0;
total_undamaged_cars_into_depot_1_day_0: eu15 - nu10 + rp15 + 0.045 tr03
 + 0.036 tr04 + 0.099 tr05 + 0.12375 tr13 + 0.099 tr14 + 0.27225 tr15
 + 0.045 tr23 + 0.036 tr24 + 0.099 tr25 + 0.027 tr33 + 0.0216 tr34
 + 0.0594 tr35 + tu015 + tu115 + tu215 + tu315 = 0;
total_undamaged_cars_into_depot_1_day_1: eu10 - nu11 + rp10 + 0.099 tr00
 + 0.045 tr04 + 0.036 tr05 + 0.27225 tr10 + 0.12375 tr14 + 0.099 tr15
 + 0.099 tr20 + 0.045 tr24 + 0.036 tr25 + 0.0594 tr30 + 0.027 tr34
 + 0.0216 tr35 + tu010 + tu110 + tu210 + tu310 = 0;
total_undamaged_cars_into_depot_1_day_2: eu11 - nu12 + rp11 + 0.036 tr00
 + 0.099 tr01 + 0.045 tr05 + 0.099 tr10 + 0.27225 tr11 + 0.12375 tr15
 + 0.036 tr20 + 0.099 tr21 + 0.045 tr25 + 0.0216 tr30 + 0.0594 tr31
 + 0.027 tr35 + tu011 + tu111 + tu211 + tu311 = 0;
total_undamaged_cars_into_depot_1_day_3: eu12 - nu13 + rp12 + 0.045 tr00
 + 0.036 tr01 + 0.099 tr02 + 0.12375 tr10 + 0.099 tr11 + 0.27225 tr12
 + 0.045 tr20 + 0.036 tr21 + 0.099 tr22 + 0.027 tr30 + 0.0216 tr31
 + 0.0594 tr32 + tu012 + tu112 + tu212 + tu312 = 0;
total_undamaged_cars_into_depot_1_day_4: eu13 - nu14 + rp13 + 0.045 tr01
 + 0.036 tr02 + 0.099 tr03 + 0.12375 tr11 + 0.099 tr12 + 0.27225 tr13
 + 0.045 tr21 + 0.036 tr22 + 0.099 tr23 + 0.027 tr31 + 0.0216 tr32
 + 0.0594 tr33 + tu013 + tu113 + tu213 + tu313 = 0;
total_undamaged_cars_into_depot_1_day_5: eu14 - nu15 + rp14 + 0.045 tr02
 + 0.036 tr03 + 0.099 tr04 + 0.12375 tr12 + 0.099 tr13 + 0.27225 tr14
 + 0.045 tr22 + 0.036 tr23 + 0.099 tr24 + 0.027 tr32 + 0.0216 tr33
 + 0.0594 tr34 + tu014 + tu114 + tu214 + tu314 = 0;
total_undamaged_cars_into_depot_2_day_0: eu25 - nu20 + rp25 + 0.0225 tr03
 + 0.018 tr04 + 0.0495 tr05 + 0.05625 tr13 + 0.045 tr14 + 0.12375 tr15
 + 0.1215 tr23 + 0.0972 tr24 + 0.2673 tr25 + 0.06075 tr33 + 0.0486 tr34
 + 0.13365 tr35 + tu025 + tu125 + tu225 + tu325 = 0;
total_undamaged_cars_into_depot_2_day_1: eu20 - nu21 + rp20 + 0.0495 tr00
 + 0.0225 tr04 + 0.018 tr05 + 0.12375 tr10 + 0.05625 tr14 + 0.045 tr15
 + 0.2673 tr20 + 0.1215 tr24 + 0.0972 tr25 + 0.13365 tr30 + 0.06075 tr34
 + 0.0486 tr35 + tu020 + tu120 + tu220 + tu320 = 0;
total_undamaged_cars_into_depot_2_day_2: eu21 - nu22 + rp21 + 0.018 tr00
 + 0.0495 tr01 + 0.0225 tr05 + 0.045 tr10 + 0.12375 tr11 + 0.05625 tr15
 + 0.0972 tr20 + 0.2673 tr21 + 0.1215 tr25 + 0.0486 tr30 + 0.13365 tr31
 + 0.06075 tr35 + tu021 + tu121 + tu221 + tu321 = 0;
total_undamaged_cars_into_depot_2_day_3: eu22 - nu23 + rp22 + 0.0225 tr00
 + 0.018 tr01 + 0.0495 tr02 + 0.05625 tr10 + 0.045 tr11 + 0.12375 tr12
 + 0.1215 tr20 + 0.0972 tr21 + 0.2673 tr22 + 0.06075 tr30 + 0.0486 tr31
 + 0.13365 tr32 + tu022 + tu122 + tu222 + tu322 = 0;
total_undamaged_cars_into_depot_2_day_4: eu23 - nu24 + rp23 + 0.0225 tr01
 + 0.018 tr02 + 0.0495 tr03 + 0.05625 tr11 + 0.045 tr12 + 0.12375 tr13
 + 0.1215 tr21 + 0.0972 tr22 + 0.2673 tr23 + 0.06075 tr31 + 0.0486 tr32
 + 0.13365 tr33 + tu023 + tu123 + tu223 + tu323 = 0;
total_undamaged_cars_into_depot_2_day_5: eu24 - nu25 + rp24 + 0.0225 tr02
 + 0.018 tr03 + 0.0495 tr04 + 0.05625 tr12 + 0.045 tr13 + 0.12375 tr14
 + 0.1215 tr22 + 0.0972 tr23 + 0.2673 tr24 + 0.06075 tr32 + 0.0486 tr33
 + 0.13365 tr34 + tu024 + tu124 + tu224 + tu324 = 0;
total_undamaged_cars_into_depot_3_day_0: eu35 - nu30 + rp35 + 0.0225 tr03
 + 0.018 tr04 + 0.0495 tr05 + 0.01125 tr13 + 0.009 tr14 + 0.02475 tr15
 + 0.02475 tr23 + 0.0198 tr24 + 0.05445 tr25 + 0.11925 tr33 + 0.0954 tr34
 + 0.26235 tr35 + tu035 + tu135 + tu235 + tu335 = 0;
total_undamaged_cars_into_depot_3_day_1: eu30 - nu31 + rp30 + 0.0495 tr00
 + 0.0225 tr04 + 0.018 tr05 + 0.02475 tr10 + 0.01125 tr14 + 0.009 tr15
 + 0.05445 tr20 + 0.02475 tr24 + 0.0198 tr25 + 0.26235 tr30 + 0.11925 tr34
 + 0.0954 tr35 + tu030 + tu130 + tu230 + tu330 = 0;
total_undamaged_cars_into_depot_3_day_2: eu31 - nu32 + rp31 + 0.018 tr00
 + 0.0495 tr01 + 0.0225 tr05 + 0.009 tr10 + 0.02475 tr11 + 0.01125 tr15
 + 0.0198 tr20 + 0.05445 tr21 + 0.02475 tr25 + 0.0954 tr30 + 0.26235 tr31
 + 0.11925 tr35 + tu031 + tu131 + tu231 + tu331 = 0;
total_undamaged_cars_into_depot_3_day_3: eu32 - nu33 + rp32 + 0.0225 tr00
 + 0.018 tr01 + 0.0495 tr02 + 0.01125 tr10 + 0.009 tr11 + 0.02475 tr12
 + 0.02475 tr20 + 0.0198 tr21 + 0.05445 tr22 + 0.11925 tr30 + 0.0954 tr31
 + 0.26235 tr32 + tu032 + tu132 + tu232 + tu332 = 0;
total_undamaged_cars_into_depot_3_day_4: eu33 - nu34 + rp33 + 0.0225 tr01
 + 0.018 tr02 + 0.0495 tr03 + 0.01125 tr11 + 0.009 tr12 + 0.02475 tr13
 + 0.02475 tr21 + 0.0198 tr22 + 0.05445 tr23 + 0.11925 tr31 + 0.0954 tr32
 + 0.26235 tr33 + tu033 + tu133 + tu233 + tu333 = 0;
total_undamaged_cars_into_depot_3_day_5: eu34 - nu35 + rp34 + 0.0225 tr02
 + 0.018 tr03 + 0.0495 tr04 + 0.01125 tr12 + 0.009 tr13 + 0.02475 tr14
 + 0.02475 tr22 + 0.0198 tr23 + 0.05445 tr24 + 0.11925 tr32 + 0.0954 tr33
 + 0.26235 tr34 + tu034 + tu134 + tu234 + tu334 = 0;
//Total number of undamaged cars out of depot i on day t
//tr_it + SUM[j=0 to 3]tu_jit + eu_it= nu_it for i=0 to 3, for t=0 to 5.
/*(tr_it) number of cars rented out from depot i at beginning of day t plus
(tu_ijt) number of undamaged cars at depot i at the beginning of day t,
to be transferred to depot j for all j, plus
(eu_it) undamaged cars left at depot i during day t equals
(nd_it) number of damaged cars at depot i at the beginning of day t. For all i,t.*/
// This constraint is similar to the third constraint of the reference model and submitted Excel file,
// but rp_it-1 is removed, because I think there is no need to calculate the rp again
//after entered the depot.
undamaged_cars_out_depot_0_day_0: eu00 - nu00 + tr00 + tu000 + tu010 + tu020
 + tu030 = 0;
undamaged_cars_out_depot_0_day_1: eu01 - nu01 + tr01 + tu001 + tu011 + tu021
 + tu031 = 0;
undamaged_cars_out_depot_0_day_2: eu02 - nu02 + tr02 + tu002 + tu012 + tu022
 + tu032 = 0;
undamaged_cars_out_depot_0_day_3: eu03 - nu03 + tr03 + tu003 + tu013 + tu023
 + tu033 = 0;
undamaged_cars_out_depot_0_day_4: eu04 - nu04 + tr04 + tu004 + tu014 + tu024
 + tu034 = 0;
undamaged_cars_out_depot_0_day_5: eu05 - nu05 + tr05 + tu005 + tu015 + tu025
 + tu035 = 0;
undamaged_cars_out_depot_1_day_0: eu10 - nu10 + tr10 + tu100 + tu110 + tu120
 + tu130 = 0;
undamaged_cars_out_depot_1_day_1: eu11 - nu11 + tr11 + tu101 + tu111 + tu121
 + tu131 = 0;
undamaged_cars_out_depot_1_day_2: eu12 - nu12 + tr12 + tu102 + tu112 + tu122
 + tu132 = 0;
undamaged_cars_out_depot_1_day_3: eu13 - nu13 + tr13 + tu103 + tu113 + tu123
 + tu133 = 0;
undamaged_cars_out_depot_1_day_4: eu14 - nu14 + tr14 + tu104 + tu114 + tu124
 + tu134 = 0;
undamaged_cars_out_depot_1_day_5: eu15 - nu15 + tr15 + tu105 + tu115 + tu125
 + tu135 = 0;
undamaged_cars_out_depot_2_day_0: eu20 - nu20 + tr20 + tu200 + tu210 + tu220
 + tu230 = 0;
undamaged_cars_out_depot_2_day_1: eu21 - nu21 + tr21 + tu201 + tu211 + tu221
 + tu231 = 0;
undamaged_cars_out_depot_2_day_2: eu22 - nu22 + tr22 + tu202 + tu212 + tu222
 + tu232 = 0;
undamaged_cars_out_depot_2_day_3: eu23 - nu23 + tr23 + tu203 + tu213 + tu223
 + tu233 = 0;
undamaged_cars_out_depot_2_day_4: eu24 - nu24 + tr24 + tu204 + tu214 + tu224
 + tu234 = 0;
undamaged_cars_out_depot_2_day_5: eu25 - nu25 + tr25 + tu205 + tu215 + tu225
 + tu235 = 0;
undamaged_cars_out_depot_3_day_0: eu30 - nu30 + tr30 + tu300 + tu310 + tu320
 + tu330 = 0;
undamaged_cars_out_depot_3_day_1: eu31 - nu31 + tr31 + tu301 + tu311 + tu321
 + tu331 = 0;
undamaged_cars_out_depot_3_day_2: eu32 - nu32 + tr32 + tu302 + tu312 + tu322
 + tu332 = 0;
undamaged_cars_out_depot_3_day_3: eu33 - nu33 + tr33 + tu303 + tu313 + tu323
 + tu333 = 0;
undamaged_cars_out_depot_3_day_4: eu34 - nu34 + tr34 + tu304 + tu314 + tu324
 + tu334 = 0;
undamaged_cars_out_depot_3_day_5: eu35 - nu35 + tr35 + tu305 + tu315 + tu325
 + tu335 = 0;
//At_most_three_of_the_options_can_be_carried_out
//It should be expanded first before further expansion
//These constraints are consistent with those in the Car rental 2 reference model
//ER=Expand repair,B=Birmingham,C=Create
//FER=Further expand repair,M=Manchester,P=Plymouth
At_most_three_of_the_options_can_be_carried_out: CP + ERB + ERM + FERB + FERM <= 3;
C1: ERB - FERB >= 0;
C2: ERM - FERM >= 0;
bin CP;
bin ERB;
bin ERM;
bin FERB;
bin FERM;

