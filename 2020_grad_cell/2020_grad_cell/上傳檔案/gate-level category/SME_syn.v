/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Sun Jan  7 05:20:58 2024
/////////////////////////////////////////////////////////////


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index, .s({\s[7] , \s[6] , \s[5] , \s[4] , \s[3] , \s[2] , 
        \s[1] , \s[0] }), .p({\p[7] , \p[6] , \p[5] , \p[4] , \p[3] , \p[2] , 
        \p[1] , \p[0] }) );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match, \s[7] , \s[6] , \s[5] , \s[4] , \s[3] , \s[2] , \s[1] ,
         \s[0] , \p[7] , \p[6] , \p[5] , \p[4] , \p[3] , \p[2] , \p[1] ,
         \p[0] ;
  wire   n2963, n2964, n2965, n2966, n2967, n2968, n2969, n2970, n2971, n2972,
         n2973, n2974, n2975, n2976, \Pattern[1][7] , \Pattern[1][6] ,
         \Pattern[1][5] , \Pattern[1][4] , \Pattern[1][3] , \Pattern[1][2] ,
         \Pattern[1][1] , \Pattern[1][0] , \Pattern[2][7] , \Pattern[2][6] ,
         \Pattern[2][5] , \Pattern[2][4] , \Pattern[2][3] , \Pattern[2][2] ,
         \Pattern[2][1] , \Pattern[2][0] , \Pattern[3][7] , \Pattern[3][6] ,
         \Pattern[3][5] , \Pattern[3][4] , \Pattern[3][3] , \Pattern[3][2] ,
         \Pattern[3][1] , \Pattern[3][0] , \Pattern[4][7] , \Pattern[4][6] ,
         \Pattern[4][5] , \Pattern[4][4] , \Pattern[4][3] , \Pattern[4][2] ,
         \Pattern[4][1] , \Pattern[4][0] , \Pattern[5][7] , \Pattern[5][6] ,
         \Pattern[5][5] , \Pattern[5][4] , \Pattern[5][3] , \Pattern[5][2] ,
         \Pattern[5][1] , \Pattern[5][0] , \Pattern[6][7] , \Pattern[6][6] ,
         \Pattern[6][5] , \Pattern[6][4] , \Pattern[6][3] , \Pattern[6][2] ,
         \Pattern[6][1] , \Pattern[6][0] , \Pattern[7][7] , \Pattern[7][6] ,
         \Pattern[7][5] , \Pattern[7][4] , \Pattern[7][3] , \Pattern[7][2] ,
         \Pattern[7][1] , \Pattern[7][0] , \Pattern[8][7] , \Pattern[8][6] ,
         \Pattern[8][5] , \Pattern[8][4] , \Pattern[8][3] , \Pattern[8][2] ,
         \Pattern[8][1] , \Pattern[8][0] , \String[1][7] , \String[1][6] ,
         \String[1][5] , \String[1][4] , \String[1][3] , \String[1][2] ,
         \String[1][1] , \String[1][0] , \String[2][7] , \String[2][6] ,
         \String[2][5] , \String[2][4] , \String[2][3] , \String[2][2] ,
         \String[2][1] , \String[2][0] , \String[3][7] , \String[3][6] ,
         \String[3][5] , \String[3][4] , \String[3][3] , \String[3][2] ,
         \String[3][1] , \String[3][0] , \String[4][7] , \String[4][6] ,
         \String[4][5] , \String[4][4] , \String[4][3] , \String[4][2] ,
         \String[4][1] , \String[4][0] , \String[5][7] , \String[5][6] ,
         \String[5][5] , \String[5][4] , \String[5][3] , \String[5][2] ,
         \String[5][1] , \String[5][0] , \String[6][7] , \String[6][6] ,
         \String[6][5] , \String[6][4] , \String[6][3] , \String[6][2] ,
         \String[6][1] , \String[6][0] , \String[7][7] , \String[7][6] ,
         \String[7][5] , \String[7][4] , \String[7][3] , \String[7][2] ,
         \String[7][1] , \String[7][0] , \String[8][7] , \String[8][6] ,
         \String[8][5] , \String[8][4] , \String[8][3] , \String[8][2] ,
         \String[8][1] , \String[8][0] , \String[9][7] , \String[9][6] ,
         \String[9][5] , \String[9][4] , \String[9][3] , \String[9][2] ,
         \String[9][1] , \String[9][0] , \String[10][7] , \String[10][6] ,
         \String[10][5] , \String[10][4] , \String[10][3] , \String[10][2] ,
         \String[10][1] , \String[10][0] , \String[11][7] , \String[11][6] ,
         \String[11][5] , \String[11][4] , \String[11][3] , \String[11][2] ,
         \String[11][1] , \String[11][0] , \String[12][7] , \String[12][6] ,
         \String[12][5] , \String[12][4] , \String[12][3] , \String[12][2] ,
         \String[12][1] , \String[12][0] , \String[13][7] , \String[13][6] ,
         \String[13][5] , \String[13][4] , \String[13][3] , \String[13][2] ,
         \String[13][1] , \String[13][0] , \String[14][7] , \String[14][6] ,
         \String[14][5] , \String[14][4] , \String[14][3] , \String[14][2] ,
         \String[14][1] , \String[14][0] , \String[15][7] , \String[15][6] ,
         \String[15][5] , \String[15][4] , \String[15][3] , \String[15][2] ,
         \String[15][1] , \String[15][0] , \String[16][7] , \String[16][6] ,
         \String[16][5] , \String[16][4] , \String[16][3] , \String[16][2] ,
         \String[16][1] , \String[16][0] , \String[17][7] , \String[17][6] ,
         \String[17][5] , \String[17][4] , \String[17][3] , \String[17][2] ,
         \String[17][1] , \String[17][0] , \String[18][7] , \String[18][6] ,
         \String[18][5] , \String[18][4] , \String[18][3] , \String[18][2] ,
         \String[18][1] , \String[18][0] , \String[19][7] , \String[19][6] ,
         \String[19][5] , \String[19][4] , \String[19][3] , \String[19][2] ,
         \String[19][1] , \String[19][0] , \String[20][7] , \String[20][6] ,
         \String[20][5] , \String[20][4] , \String[20][3] , \String[20][2] ,
         \String[20][1] , \String[20][0] , \String[21][7] , \String[21][6] ,
         \String[21][5] , \String[21][4] , \String[21][3] , \String[21][2] ,
         \String[21][1] , \String[21][0] , \String[22][7] , \String[22][6] ,
         \String[22][5] , \String[22][4] , \String[22][3] , \String[22][2] ,
         \String[22][1] , \String[22][0] , \String[23][7] , \String[23][6] ,
         \String[23][5] , \String[23][4] , \String[23][3] , \String[23][2] ,
         \String[23][1] , \String[23][0] , \String[24][7] , \String[24][6] ,
         \String[24][5] , \String[24][4] , \String[24][3] , \String[24][2] ,
         \String[24][1] , \String[24][0] , \String[25][7] , \String[25][6] ,
         \String[25][5] , \String[25][4] , \String[25][3] , \String[25][2] ,
         \String[25][1] , \String[25][0] , \String[26][7] , \String[26][6] ,
         \String[26][5] , \String[26][4] , \String[26][3] , \String[26][2] ,
         \String[26][1] , \String[26][0] , \String[27][7] , \String[27][6] ,
         \String[27][5] , \String[27][4] , \String[27][3] , \String[27][2] ,
         \String[27][1] , \String[27][0] , \String[28][7] , \String[28][6] ,
         \String[28][5] , \String[28][4] , \String[28][3] , \String[28][2] ,
         \String[28][1] , \String[28][0] , \String[29][7] , \String[29][6] ,
         \String[29][5] , \String[29][4] , \String[29][3] , \String[29][2] ,
         \String[29][1] , \String[29][0] , \String[30][7] , \String[30][6] ,
         \String[30][5] , \String[30][4] , \String[30][3] , \String[30][2] ,
         \String[30][1] , \String[30][0] , \String[31][7] , \String[31][6] ,
         \String[31][5] , \String[31][4] , \String[31][3] , \String[31][2] ,
         \String[31][1] , \String[31][0] , \String[32][7] , \String[32][6] ,
         \String[32][5] , \String[32][4] , \String[32][3] , \String[32][2] ,
         \String[32][1] , \String[32][0] , finishGetData, finishJudge, N702,
         N703, N704, N705, N706, N707, N708, N709, N710, N711, N760, N761,
         N762, N763, N764, N849, N850, N851, N852, N853, N854, N855, N856,
         N874, N875, N876, N877, N878, N899, N900, N901, N902, N1178, N1179,
         N1192, n52, n54, n56, n57, n59, n60, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n2591, n2592, n2593, n2594, n2595,
         n2596, n2597, n2598, n2599, n2600, n2601, n2602, n2603, n2604, n2605,
         n2606, n2607, n2608, n2609, n2610, n2611, n2612, n2613, n2614, n2615,
         n2616, n2617, n2618, n2619, n2620, n2621, n2622, n2623, n2624, n2625,
         n2626, n2627, n2628, n2629, n2630, n2631, n2632, n2633, n2634, n2635,
         n2636, n2637, n2638, n2639, n2640, n2641, n2642, n2643, n2644, n2645,
         n2646, n2647, n2648, n2649, n2650, n2651, n2652, n2653, n2654, n2655,
         n2656, n2657, n2658, n2659, n2660, n2661, n2662, n2663, n2664, n2665,
         n2666, n2667, n2668, n2669, n2670, n2671, n2672, n2673, n2674, n2675,
         n2676, n2677, n2678, n2679, n2680, n2681, n2682, n2683, n2684, n2685,
         n2686, n2687, n2688, n2689, n2690, n2691, n2692, n2693, n2694, n2695,
         n2696, n2697, n2698, n2699, n2700, n2701, n2702, n2703, n2704, n2705,
         n2706, n2707, n2708, n2709, n2710, n2711, n2712, n2713, n2714, n2715,
         n2716, n2717, n2718, n2719, n2720, n2721, n2722, n2723, n2724, n2725,
         n2726, n2727, n2728, n2729, n2730, n2731, n2732, n2733, n2734, n2735,
         n2736, n2737, n2738, n2739, n2740, n2741, n2742, n2743, n2744, n2745,
         n2746, n2747, n2748, n2749, n2750, n2751, n2752, n2753, n2754, n2755,
         n2756, n2757, n2758, n2759, n2760, n2761, n2762, n2763, n2764, n2765,
         n2766, n2767, n2768, n2769, n2770, n2771, n2772, n2773, n2774, n2775,
         n2776, n2777, n2778, n2779, n2780, n2781, n2782, n2783, n2784, n2785,
         n2786, n2787, n2788, n2789, n2790, n2791, n2792, n2793, n2794, n2795,
         n2796, n2797, n2798, n2799, n2800, n2801, n2802, n2803, n2804, n2805,
         n2806, n2807, n2808, n2809, n2810, n2811, n2812, n2813, n2814, n2815,
         n2816, n2817, n2818, n2819, n2820, n2821, n2822, n2823, n2824, n2825,
         n2826, n2827, n2828, n2829, n2830, n2831, n2832, n2833, n2834, n2835,
         n2836, n2837, n2838, n2839, n2840, n2841, n2842, n2843, n2844, n2845,
         n2846, n2847, n2848, n2849, n2850, n2851, n2852, n2853, n2854, n2855,
         n2856, n2857, n2858, n2859, n2860, n2861, n2862, n2863, n2864, n2865,
         n2866, n2867, n2868, n2869, n2870, n2871, n2872, n2873, n2874, n2875,
         n2876, n2877, n2878, n2879, n2880, n2881, n2882, n2883, n2884, n2885,
         n2886, n2887, n2888, n2889, n2890, n2891, n2892, n2893, n2894, n2895,
         n2896, n2897, n2898, n2899, n2900, n2901, n2902, n2903, n2904, n2905,
         n2906, n2907, n2908, n2909, n2910, n2911, n2912, n2913, n2914, n2915,
         n2916, n2917, n2918, n2919, n2920, n2921, n2922, n2923, n2924, n2925,
         n2926, n2927, n2928, n2929, n2930, n2931, n2932, n2933, n2934, n2935,
         n2936, n2937, n2938, n2939, n2940, n2941, n2942, n2943, n2944, n2945,
         n2946, n2947, n2948, n2949, n2950, n2951, n2952, n2953, n2954, n2955,
         n2956, n2957, n2958, n2959, n2960, n2961, n2962;
  wire   [1:0] state;
  wire   [3:0] Judge_Pattern_count;
  wire   [5:0] Judge_String_count;
  wire   [5:0] String_count;
  wire   [3:0] Pattern_count;
  wire   [3:0] Judge_Pattern_count_begin;
  wire   [5:0] String_count_Record;
  wire   [4:2] \add_139/carry ;
  wire   [5:2] \add_101/carry ;
  wire   [5:2] \r518/carry ;
  wire   [7:0] s;
  assign \s[7]  = s[7];
  assign \s[6]  = s[6];
  assign \s[5]  = s[5];
  assign \s[4]  = s[4];
  assign \s[3]  = s[3];
  assign \s[2]  = s[2];
  assign \s[1]  = s[1];
  assign \s[0]  = s[0];

  DFFQX1 \String_count_Record_reg[5]  ( .D(n637), .CK(clk), .Q(
        String_count_Record[5]) );
  DFFQX1 \String_count_Record_reg[0]  ( .D(n630), .CK(clk), .Q(
        String_count_Record[0]) );
  DFFQX1 \String_count_Record_reg[1]  ( .D(n629), .CK(clk), .Q(
        String_count_Record[1]) );
  DFFQX1 \String_count_Record_reg[2]  ( .D(n628), .CK(clk), .Q(
        String_count_Record[2]) );
  DFFQX1 \String_count_Record_reg[3]  ( .D(n627), .CK(clk), .Q(
        String_count_Record[3]) );
  DFFQX1 \String_count_Record_reg[4]  ( .D(n626), .CK(clk), .Q(
        String_count_Record[4]) );
  DFFQX1 \Pattern_count_reg[1]  ( .D(n723), .CK(clk), .Q(Pattern_count[1]) );
  DFFQX1 \Pattern_count_reg[0]  ( .D(n722), .CK(clk), .Q(Pattern_count[0]) );
  DFFQX1 \Pattern_count_reg[3]  ( .D(n720), .CK(clk), .Q(Pattern_count[3]) );
  DFFQX1 finishJudge_reg ( .D(N1178), .CK(clk), .Q(finishJudge) );
  DFFQX1 \Judge_Pattern_count_begin_reg[3]  ( .D(n726), .CK(clk), .Q(
        Judge_Pattern_count_begin[3]) );
  DFFQX1 finishGetData_reg ( .D(N1179), .CK(clk), .Q(finishGetData) );
  DFFQX1 \String_count_reg[5]  ( .D(n631), .CK(clk), .Q(String_count[5]) );
  DFFX1 \Pattern_reg[8][2]  ( .D(n713), .CK(clk), .Q(\Pattern[8][2] ), .QN(
        n125) );
  DFFX1 \Pattern_reg[8][5]  ( .D(n716), .CK(clk), .Q(\Pattern[8][5] ), .QN(
        n122) );
  DFFQX1 \String_reg[32][7]  ( .D(n624), .CK(clk), .Q(\String[32][7] ) );
  DFFX1 \Pattern_reg[1][5]  ( .D(n660), .CK(clk), .Q(\Pattern[1][5] ), .QN(n66) );
  DFFQX1 \String_reg[32][5]  ( .D(n622), .CK(clk), .Q(\String[32][5] ) );
  DFFX1 \Pattern_reg[5][5]  ( .D(n692), .CK(clk), .Q(\Pattern[5][5] ), .QN(n98) );
  DFFX1 \Pattern_reg[8][3]  ( .D(n714), .CK(clk), .Q(\Pattern[8][3] ), .QN(
        n124) );
  DFFX1 \Pattern_reg[1][2]  ( .D(n657), .CK(clk), .Q(\Pattern[1][2] ), .QN(n69) );
  DFFX1 \Pattern_reg[3][5]  ( .D(n676), .CK(clk), .Q(\Pattern[3][5] ), .QN(n82) );
  DFFX1 \Pattern_reg[5][2]  ( .D(n689), .CK(clk), .Q(\Pattern[5][2] ), .QN(
        n101) );
  DFFQX1 \String_reg[32][6]  ( .D(n623), .CK(clk), .Q(\String[32][6] ) );
  DFFQX1 \String_reg[32][4]  ( .D(n621), .CK(clk), .Q(\String[32][4] ) );
  DFFX1 \Pattern_reg[7][5]  ( .D(n708), .CK(clk), .Q(\Pattern[7][5] ), .QN(
        n114) );
  DFFX1 \Pattern_reg[3][2]  ( .D(n673), .CK(clk), .Q(\Pattern[3][2] ), .QN(n85) );
  DFFX1 \Pattern_reg[7][2]  ( .D(n705), .CK(clk), .Q(\Pattern[7][2] ), .QN(
        n117) );
  DFFX1 \Pattern_reg[8][4]  ( .D(n715), .CK(clk), .Q(\Pattern[8][4] ), .QN(
        n123) );
  DFFQX1 \String_reg[32][0]  ( .D(n625), .CK(clk), .Q(\String[32][0] ) );
  DFFX1 \Pattern_reg[8][6]  ( .D(n717), .CK(clk), .Q(\Pattern[8][6] ), .QN(
        n121) );
  DFFQX1 \String_reg[32][1]  ( .D(n618), .CK(clk), .Q(\String[32][1] ) );
  DFFX1 \Pattern_reg[4][5]  ( .D(n684), .CK(clk), .Q(\Pattern[4][5] ), .QN(n90) );
  DFFQX1 \String_reg[32][2]  ( .D(n619), .CK(clk), .Q(\String[32][2] ) );
  DFFQX1 \String_reg[32][3]  ( .D(n620), .CK(clk), .Q(\String[32][3] ) );
  DFFX1 \Pattern_reg[4][2]  ( .D(n681), .CK(clk), .Q(\Pattern[4][2] ), .QN(n93) );
  DFFX1 \Pattern_reg[6][5]  ( .D(n700), .CK(clk), .Q(\Pattern[6][5] ), .QN(
        n106) );
  DFFX1 \Pattern_reg[2][5]  ( .D(n668), .CK(clk), .Q(\Pattern[2][5] ), .QN(n74) );
  DFFX1 \Pattern_reg[6][2]  ( .D(n697), .CK(clk), .Q(\Pattern[6][2] ), .QN(
        n109) );
  DFFX1 \Pattern_reg[2][2]  ( .D(n665), .CK(clk), .Q(\Pattern[2][2] ), .QN(n77) );
  DFFX1 \Pattern_reg[8][0]  ( .D(n719), .CK(clk), .Q(\Pattern[8][0] ), .QN(
        n127) );
  DFFX1 \Pattern_reg[8][7]  ( .D(n718), .CK(clk), .Q(\Pattern[8][7] ), .QN(
        n120) );
  DFFX1 \Pattern_reg[8][1]  ( .D(n712), .CK(clk), .Q(\Pattern[8][1] ), .QN(
        n126) );
  DFFX1 \Pattern_reg[1][3]  ( .D(n658), .CK(clk), .Q(\Pattern[1][3] ), .QN(n68) );
  DFFX1 \Pattern_reg[5][3]  ( .D(n690), .CK(clk), .Q(\Pattern[5][3] ), .QN(
        n100) );
  DFFX1 \Pattern_reg[3][3]  ( .D(n674), .CK(clk), .Q(\Pattern[3][3] ), .QN(n84) );
  DFFX1 \Pattern_reg[7][3]  ( .D(n706), .CK(clk), .Q(\Pattern[7][3] ), .QN(
        n116) );
  DFFX1 \Pattern_reg[4][3]  ( .D(n682), .CK(clk), .Q(\Pattern[4][3] ), .QN(n92) );
  DFFX1 \Pattern_reg[6][3]  ( .D(n698), .CK(clk), .Q(\Pattern[6][3] ), .QN(
        n108) );
  DFFX1 \Pattern_reg[1][4]  ( .D(n659), .CK(clk), .Q(\Pattern[1][4] ), .QN(n67) );
  DFFX1 \Pattern_reg[5][4]  ( .D(n691), .CK(clk), .Q(\Pattern[5][4] ), .QN(n99) );
  DFFX1 \Pattern_reg[2][3]  ( .D(n666), .CK(clk), .Q(\Pattern[2][3] ), .QN(n76) );
  DFFX1 \Pattern_reg[1][6]  ( .D(n661), .CK(clk), .Q(\Pattern[1][6] ), .QN(n65) );
  DFFX1 \Pattern_reg[3][4]  ( .D(n675), .CK(clk), .Q(\Pattern[3][4] ), .QN(n83) );
  DFFX1 \Pattern_reg[5][6]  ( .D(n693), .CK(clk), .Q(\Pattern[5][6] ), .QN(n97) );
  DFFX1 \Pattern_reg[7][4]  ( .D(n707), .CK(clk), .Q(\Pattern[7][4] ), .QN(
        n115) );
  DFFQX1 \String_reg[1][7]  ( .D(n376), .CK(clk), .Q(\String[1][7] ) );
  DFFX1 \Pattern_reg[3][6]  ( .D(n677), .CK(clk), .Q(\Pattern[3][6] ), .QN(n81) );
  DFFQX1 \String_reg[5][7]  ( .D(n408), .CK(clk), .Q(\String[5][7] ) );
  DFFX1 \Pattern_reg[7][6]  ( .D(n709), .CK(clk), .Q(\Pattern[7][6] ), .QN(
        n113) );
  DFFQX1 \String_reg[9][7]  ( .D(n440), .CK(clk), .Q(\String[9][7] ) );
  DFFQX1 \String_reg[13][7]  ( .D(n472), .CK(clk), .Q(\String[13][7] ) );
  DFFQX1 \String_reg[17][7]  ( .D(n504), .CK(clk), .Q(\String[17][7] ) );
  DFFQX1 \String_reg[3][7]  ( .D(n392), .CK(clk), .Q(\String[3][7] ) );
  DFFQX1 \String_reg[1][5]  ( .D(n374), .CK(clk), .Q(\String[1][5] ) );
  DFFQX1 \String_reg[21][7]  ( .D(n536), .CK(clk), .Q(\String[21][7] ) );
  DFFQX1 \String_reg[7][7]  ( .D(n424), .CK(clk), .Q(\String[7][7] ) );
  DFFQX1 \String_reg[5][5]  ( .D(n406), .CK(clk), .Q(\String[5][5] ) );
  DFFQX1 \String_reg[25][7]  ( .D(n568), .CK(clk), .Q(\String[25][7] ) );
  DFFQX1 \String_reg[11][7]  ( .D(n456), .CK(clk), .Q(\String[11][7] ) );
  DFFQX1 \String_reg[9][5]  ( .D(n438), .CK(clk), .Q(\String[9][5] ) );
  DFFQX1 \String_reg[29][7]  ( .D(n600), .CK(clk), .Q(\String[29][7] ) );
  DFFQX1 \String_reg[15][7]  ( .D(n488), .CK(clk), .Q(\String[15][7] ) );
  DFFQX1 \String_reg[19][7]  ( .D(n520), .CK(clk), .Q(\String[19][7] ) );
  DFFQX1 \String_reg[13][5]  ( .D(n470), .CK(clk), .Q(\String[13][5] ) );
  DFFQX1 \String_reg[17][5]  ( .D(n502), .CK(clk), .Q(\String[17][5] ) );
  DFFQX1 \String_reg[3][5]  ( .D(n390), .CK(clk), .Q(\String[3][5] ) );
  DFFQX1 \String_reg[23][7]  ( .D(n552), .CK(clk), .Q(\String[23][7] ) );
  DFFQX1 \String_reg[21][5]  ( .D(n534), .CK(clk), .Q(\String[21][5] ) );
  DFFQX1 \String_reg[7][5]  ( .D(n422), .CK(clk), .Q(\String[7][5] ) );
  DFFQX1 \String_reg[1][6]  ( .D(n375), .CK(clk), .Q(\String[1][6] ) );
  DFFQX1 \String_reg[27][7]  ( .D(n584), .CK(clk), .Q(\String[27][7] ) );
  DFFQX1 \String_reg[25][5]  ( .D(n566), .CK(clk), .Q(\String[25][5] ) );
  DFFQX1 \String_reg[1][4]  ( .D(n373), .CK(clk), .Q(\String[1][4] ) );
  DFFQX1 \String_reg[11][5]  ( .D(n454), .CK(clk), .Q(\String[11][5] ) );
  DFFQX1 \String_reg[31][7]  ( .D(n616), .CK(clk), .Q(\String[31][7] ) );
  DFFQX1 \String_reg[29][5]  ( .D(n598), .CK(clk), .Q(\String[29][5] ) );
  DFFQX1 \String_reg[15][5]  ( .D(n486), .CK(clk), .Q(\String[15][5] ) );
  DFFQX1 \String_reg[19][5]  ( .D(n518), .CK(clk), .Q(\String[19][5] ) );
  DFFQX1 \String_reg[5][6]  ( .D(n407), .CK(clk), .Q(\String[5][6] ) );
  DFFX1 \Pattern_reg[4][4]  ( .D(n683), .CK(clk), .Q(\Pattern[4][4] ), .QN(n91) );
  DFFQX1 \String_reg[5][4]  ( .D(n405), .CK(clk), .Q(\String[5][4] ) );
  DFFQX1 \String_reg[9][6]  ( .D(n439), .CK(clk), .Q(\String[9][6] ) );
  DFFQX1 \String_reg[23][5]  ( .D(n550), .CK(clk), .Q(\String[23][5] ) );
  DFFQX1 \String_reg[13][6]  ( .D(n471), .CK(clk), .Q(\String[13][6] ) );
  DFFQX1 \String_reg[17][6]  ( .D(n503), .CK(clk), .Q(\String[17][6] ) );
  DFFQX1 \String_reg[3][6]  ( .D(n391), .CK(clk), .Q(\String[3][6] ) );
  DFFQX1 \String_reg[9][4]  ( .D(n437), .CK(clk), .Q(\String[9][4] ) );
  DFFQX1 \String_reg[13][4]  ( .D(n469), .CK(clk), .Q(\String[13][4] ) );
  DFFQX1 \String_reg[17][4]  ( .D(n501), .CK(clk), .Q(\String[17][4] ) );
  DFFQX1 \String_reg[27][5]  ( .D(n582), .CK(clk), .Q(\String[27][5] ) );
  DFFQX1 \String_reg[3][4]  ( .D(n389), .CK(clk), .Q(\String[3][4] ) );
  DFFQX1 \String_reg[31][5]  ( .D(n614), .CK(clk), .Q(\String[31][5] ) );
  DFFQX1 \String_reg[21][6]  ( .D(n535), .CK(clk), .Q(\String[21][6] ) );
  DFFQX1 \String_reg[7][6]  ( .D(n423), .CK(clk), .Q(\String[7][6] ) );
  DFFX1 \Pattern_reg[1][0]  ( .D(n663), .CK(clk), .Q(\Pattern[1][0] ), .QN(n71) );
  DFFQX1 \String_reg[21][4]  ( .D(n533), .CK(clk), .Q(\String[21][4] ) );
  DFFQX1 \String_reg[25][6]  ( .D(n567), .CK(clk), .Q(\String[25][6] ) );
  DFFQX1 \String_reg[7][4]  ( .D(n421), .CK(clk), .Q(\String[7][4] ) );
  DFFQX1 \String_reg[11][6]  ( .D(n455), .CK(clk), .Q(\String[11][6] ) );
  DFFX1 \Pattern_reg[1][7]  ( .D(n662), .CK(clk), .Q(\Pattern[1][7] ), .QN(n64) );
  DFFQX1 \String_reg[29][6]  ( .D(n599), .CK(clk), .Q(\String[29][6] ) );
  DFFX1 \Pattern_reg[4][6]  ( .D(n685), .CK(clk), .Q(\Pattern[4][6] ), .QN(n89) );
  DFFQX1 \String_reg[15][6]  ( .D(n487), .CK(clk), .Q(\String[15][6] ) );
  DFFQX1 \String_reg[19][6]  ( .D(n519), .CK(clk), .Q(\String[19][6] ) );
  DFFQX1 \String_reg[25][4]  ( .D(n565), .CK(clk), .Q(\String[25][4] ) );
  DFFQX1 \String_reg[11][4]  ( .D(n453), .CK(clk), .Q(\String[11][4] ) );
  DFFX1 \Pattern_reg[5][0]  ( .D(n695), .CK(clk), .Q(\Pattern[5][0] ), .QN(
        n103) );
  DFFQX1 \String_reg[29][4]  ( .D(n597), .CK(clk), .Q(\String[29][4] ) );
  DFFQX1 \String_reg[15][4]  ( .D(n485), .CK(clk), .Q(\String[15][4] ) );
  DFFX1 \Pattern_reg[6][4]  ( .D(n699), .CK(clk), .Q(\Pattern[6][4] ), .QN(
        n107) );
  DFFQX1 \String_reg[19][4]  ( .D(n517), .CK(clk), .Q(\String[19][4] ) );
  DFFX1 \Pattern_reg[5][7]  ( .D(n694), .CK(clk), .Q(\Pattern[5][7] ), .QN(n96) );
  DFFQX1 \String_reg[23][6]  ( .D(n551), .CK(clk), .Q(\String[23][6] ) );
  DFFQX1 \String_reg[23][4]  ( .D(n549), .CK(clk), .Q(\String[23][4] ) );
  DFFQX1 \String_reg[27][6]  ( .D(n583), .CK(clk), .Q(\String[27][6] ) );
  DFFQX1 \String_reg[31][6]  ( .D(n615), .CK(clk), .Q(\String[31][6] ) );
  DFFX1 \Pattern_reg[2][4]  ( .D(n667), .CK(clk), .Q(\Pattern[2][4] ), .QN(n75) );
  DFFQX1 \String_reg[27][4]  ( .D(n581), .CK(clk), .Q(\String[27][4] ) );
  DFFQX1 \String_reg[31][4]  ( .D(n613), .CK(clk), .Q(\String[31][4] ) );
  DFFX1 \Pattern_reg[3][0]  ( .D(n679), .CK(clk), .Q(\Pattern[3][0] ), .QN(n87) );
  DFFX1 \Pattern_reg[3][7]  ( .D(n678), .CK(clk), .Q(\Pattern[3][7] ), .QN(n80) );
  DFFQX1 \String_reg[1][0]  ( .D(n377), .CK(clk), .Q(\String[1][0] ) );
  DFFX1 \Pattern_reg[6][6]  ( .D(n701), .CK(clk), .Q(\Pattern[6][6] ), .QN(
        n105) );
  DFFX1 \Pattern_reg[1][1]  ( .D(n656), .CK(clk), .Q(\Pattern[1][1] ), .QN(n70) );
  DFFX1 \Pattern_reg[7][0]  ( .D(n711), .CK(clk), .Q(\Pattern[7][0] ), .QN(
        n119) );
  DFFX1 \Pattern_reg[7][7]  ( .D(n710), .CK(clk), .Q(\Pattern[7][7] ), .QN(
        n112) );
  DFFQX1 \String_reg[1][1]  ( .D(n370), .CK(clk), .Q(\String[1][1] ) );
  DFFQX1 \String_reg[5][0]  ( .D(n409), .CK(clk), .Q(\String[5][0] ) );
  DFFX1 \Pattern_reg[5][1]  ( .D(n688), .CK(clk), .Q(\Pattern[5][1] ), .QN(
        n102) );
  DFFX1 \Pattern_reg[2][6]  ( .D(n669), .CK(clk), .Q(\Pattern[2][6] ), .QN(n73) );
  DFFQX1 \String_reg[9][0]  ( .D(n441), .CK(clk), .Q(\String[9][0] ) );
  DFFQX1 \String_reg[13][0]  ( .D(n473), .CK(clk), .Q(\String[13][0] ) );
  DFFQX1 \String_reg[17][0]  ( .D(n505), .CK(clk), .Q(\String[17][0] ) );
  DFFQX1 \String_reg[5][1]  ( .D(n402), .CK(clk), .Q(\String[5][1] ) );
  DFFQX1 \String_reg[1][2]  ( .D(n371), .CK(clk), .Q(\String[1][2] ) );
  DFFQX1 \String_reg[3][0]  ( .D(n393), .CK(clk), .Q(\String[3][0] ) );
  DFFQX1 \String_reg[9][1]  ( .D(n434), .CK(clk), .Q(\String[9][1] ) );
  DFFQX1 \String_reg[1][3]  ( .D(n372), .CK(clk), .Q(\String[1][3] ) );
  DFFQX1 \String_reg[13][1]  ( .D(n466), .CK(clk), .Q(\String[13][1] ) );
  DFFQX1 \String_reg[17][1]  ( .D(n498), .CK(clk), .Q(\String[17][1] ) );
  DFFQX1 \String_reg[21][0]  ( .D(n537), .CK(clk), .Q(\String[21][0] ) );
  DFFQX1 \String_reg[5][2]  ( .D(n403), .CK(clk), .Q(\String[5][2] ) );
  DFFQX1 \String_reg[3][1]  ( .D(n386), .CK(clk), .Q(\String[3][1] ) );
  DFFQX1 \String_reg[7][0]  ( .D(n425), .CK(clk), .Q(\String[7][0] ) );
  DFFX1 \Pattern_reg[3][1]  ( .D(n672), .CK(clk), .Q(\Pattern[3][1] ), .QN(n86) );
  DFFQX1 \String_reg[2][7]  ( .D(n384), .CK(clk), .Q(\String[2][7] ) );
  DFFQX1 \String_reg[25][0]  ( .D(n569), .CK(clk), .Q(\String[25][0] ) );
  DFFQX1 \String_reg[9][2]  ( .D(n435), .CK(clk), .Q(\String[9][2] ) );
  DFFQX1 \String_reg[11][0]  ( .D(n457), .CK(clk), .Q(\String[11][0] ) );
  DFFQX1 \String_reg[5][3]  ( .D(n404), .CK(clk), .Q(\String[5][3] ) );
  DFFQX1 \String_reg[29][0]  ( .D(n601), .CK(clk), .Q(\String[29][0] ) );
  DFFQX1 \String_reg[13][2]  ( .D(n467), .CK(clk), .Q(\String[13][2] ) );
  DFFQX1 \String_reg[21][1]  ( .D(n530), .CK(clk), .Q(\String[21][1] ) );
  DFFQX1 \String_reg[17][2]  ( .D(n499), .CK(clk), .Q(\String[17][2] ) );
  DFFQX1 \String_reg[15][0]  ( .D(n489), .CK(clk), .Q(\String[15][0] ) );
  DFFQX1 \String_reg[19][0]  ( .D(n521), .CK(clk), .Q(\String[19][0] ) );
  DFFQX1 \String_reg[7][1]  ( .D(n418), .CK(clk), .Q(\String[7][1] ) );
  DFFQX1 \String_reg[3][2]  ( .D(n387), .CK(clk), .Q(\String[3][2] ) );
  DFFQX1 \String_reg[6][7]  ( .D(n416), .CK(clk), .Q(\String[6][7] ) );
  DFFX1 \Pattern_reg[7][1]  ( .D(n704), .CK(clk), .Q(\Pattern[7][1] ), .QN(
        n118) );
  DFFQX1 \String_reg[9][3]  ( .D(n436), .CK(clk), .Q(\String[9][3] ) );
  DFFQX1 \String_reg[25][1]  ( .D(n562), .CK(clk), .Q(\String[25][1] ) );
  DFFQX1 \String_reg[11][1]  ( .D(n450), .CK(clk), .Q(\String[11][1] ) );
  DFFQX1 \String_reg[13][3]  ( .D(n468), .CK(clk), .Q(\String[13][3] ) );
  DFFQX1 \String_reg[17][3]  ( .D(n500), .CK(clk), .Q(\String[17][3] ) );
  DFFQX1 \String_reg[10][7]  ( .D(n448), .CK(clk), .Q(\String[10][7] ) );
  DFFQX1 \String_reg[29][1]  ( .D(n594), .CK(clk), .Q(\String[29][1] ) );
  DFFQX1 \String_reg[3][3]  ( .D(n388), .CK(clk), .Q(\String[3][3] ) );
  DFFQX1 \String_reg[15][1]  ( .D(n482), .CK(clk), .Q(\String[15][1] ) );
  DFFQX1 \String_reg[21][2]  ( .D(n531), .CK(clk), .Q(\String[21][2] ) );
  DFFQX1 \String_reg[19][1]  ( .D(n514), .CK(clk), .Q(\String[19][1] ) );
  DFFQX1 \String_reg[23][0]  ( .D(n553), .CK(clk), .Q(\String[23][0] ) );
  DFFQX1 \String_reg[14][7]  ( .D(n480), .CK(clk), .Q(\String[14][7] ) );
  DFFQX1 \String_reg[7][2]  ( .D(n419), .CK(clk), .Q(\String[7][2] ) );
  DFFQX1 \String_reg[18][7]  ( .D(n512), .CK(clk), .Q(\String[18][7] ) );
  DFFQX1 \String_reg[25][2]  ( .D(n563), .CK(clk), .Q(\String[25][2] ) );
  DFFQX1 \String_reg[27][0]  ( .D(n585), .CK(clk), .Q(\String[27][0] ) );
  DFFQX1 \String_reg[2][5]  ( .D(n382), .CK(clk), .Q(\String[2][5] ) );
  DFFQX1 \String_reg[11][2]  ( .D(n451), .CK(clk), .Q(\String[11][2] ) );
  DFFQX1 \String_reg[21][3]  ( .D(n532), .CK(clk), .Q(\String[21][3] ) );
  DFFQX1 \String_reg[7][3]  ( .D(n420), .CK(clk), .Q(\String[7][3] ) );
  DFFQX1 \String_reg[29][2]  ( .D(n595), .CK(clk), .Q(\String[29][2] ) );
  DFFQX1 \String_reg[31][0]  ( .D(n617), .CK(clk), .Q(\String[31][0] ) );
  DFFQX1 \String_reg[15][2]  ( .D(n483), .CK(clk), .Q(\String[15][2] ) );
  DFFQX1 \String_reg[23][1]  ( .D(n546), .CK(clk), .Q(\String[23][1] ) );
  DFFQX1 \String_reg[19][2]  ( .D(n515), .CK(clk), .Q(\String[19][2] ) );
  DFFQX1 \String_reg[22][7]  ( .D(n544), .CK(clk), .Q(\String[22][7] ) );
  DFFQX1 \String_reg[6][5]  ( .D(n414), .CK(clk), .Q(\String[6][5] ) );
  DFFQX1 \String_reg[25][3]  ( .D(n564), .CK(clk), .Q(\String[25][3] ) );
  DFFQX1 \String_reg[11][3]  ( .D(n452), .CK(clk), .Q(\String[11][3] ) );
  DFFQX1 \String_reg[27][1]  ( .D(n578), .CK(clk), .Q(\String[27][1] ) );
  DFFQX1 \String_reg[29][3]  ( .D(n596), .CK(clk), .Q(\String[29][3] ) );
  DFFQX1 \String_reg[15][3]  ( .D(n484), .CK(clk), .Q(\String[15][3] ) );
  DFFQX1 \String_reg[26][7]  ( .D(n576), .CK(clk), .Q(\String[26][7] ) );
  DFFQX1 \String_reg[19][3]  ( .D(n516), .CK(clk), .Q(\String[19][3] ) );
  DFFQX1 \String_reg[31][1]  ( .D(n610), .CK(clk), .Q(\String[31][1] ) );
  DFFQX1 \String_reg[10][5]  ( .D(n446), .CK(clk), .Q(\String[10][5] ) );
  DFFQX1 \String_reg[23][2]  ( .D(n547), .CK(clk), .Q(\String[23][2] ) );
  DFFQX1 \String_reg[4][7]  ( .D(n400), .CK(clk), .Q(\String[4][7] ) );
  DFFQX1 \String_reg[30][7]  ( .D(n608), .CK(clk), .Q(\String[30][7] ) );
  DFFQX1 \String_reg[14][5]  ( .D(n478), .CK(clk), .Q(\String[14][5] ) );
  DFFQX1 \String_reg[18][5]  ( .D(n510), .CK(clk), .Q(\String[18][5] ) );
  DFFQX1 \String_reg[27][2]  ( .D(n579), .CK(clk), .Q(\String[27][2] ) );
  DFFQX1 \String_reg[8][7]  ( .D(n432), .CK(clk), .Q(\String[8][7] ) );
  DFFQX1 \String_reg[23][3]  ( .D(n548), .CK(clk), .Q(\String[23][3] ) );
  DFFQX1 \String_reg[31][2]  ( .D(n611), .CK(clk), .Q(\String[31][2] ) );
  DFFQX1 \String_reg[12][7]  ( .D(n464), .CK(clk), .Q(\String[12][7] ) );
  DFFQX1 \String_reg[16][7]  ( .D(n496), .CK(clk), .Q(\String[16][7] ) );
  DFFX1 \Pattern_reg[4][0]  ( .D(n687), .CK(clk), .Q(\Pattern[4][0] ), .QN(n95) );
  DFFQX1 \String_reg[22][5]  ( .D(n542), .CK(clk), .Q(\String[22][5] ) );
  DFFQX1 \String_reg[27][3]  ( .D(n580), .CK(clk), .Q(\String[27][3] ) );
  DFFX1 \Pattern_reg[4][7]  ( .D(n686), .CK(clk), .Q(\Pattern[4][7] ), .QN(n88) );
  DFFQX1 \String_reg[31][3]  ( .D(n612), .CK(clk), .Q(\String[31][3] ) );
  DFFQX1 \String_reg[2][6]  ( .D(n383), .CK(clk), .Q(\String[2][6] ) );
  DFFQX1 \String_reg[26][5]  ( .D(n574), .CK(clk), .Q(\String[26][5] ) );
  DFFQX1 \String_reg[20][7]  ( .D(n528), .CK(clk), .Q(\String[20][7] ) );
  DFFQX1 \String_reg[30][5]  ( .D(n606), .CK(clk), .Q(\String[30][5] ) );
  DFFQX1 \String_reg[4][5]  ( .D(n398), .CK(clk), .Q(\String[4][5] ) );
  DFFQX1 \String_reg[2][4]  ( .D(n381), .CK(clk), .Q(\String[2][4] ) );
  DFFQX1 \String_reg[6][6]  ( .D(n415), .CK(clk), .Q(\String[6][6] ) );
  DFFQX1 \String_reg[24][7]  ( .D(n560), .CK(clk), .Q(\String[24][7] ) );
  DFFQX1 \String_reg[8][5]  ( .D(n430), .CK(clk), .Q(\String[8][5] ) );
  DFFQX1 \String_reg[28][7]  ( .D(n592), .CK(clk), .Q(\String[28][7] ) );
  DFFQX1 \String_reg[6][4]  ( .D(n413), .CK(clk), .Q(\String[6][4] ) );
  DFFQX1 \String_reg[10][6]  ( .D(n447), .CK(clk), .Q(\String[10][6] ) );
  DFFQX1 \String_reg[12][5]  ( .D(n462), .CK(clk), .Q(\String[12][5] ) );
  DFFQX1 \String_reg[16][5]  ( .D(n494), .CK(clk), .Q(\String[16][5] ) );
  DFFQX1 \String_reg[14][6]  ( .D(n479), .CK(clk), .Q(\String[14][6] ) );
  DFFQX1 \String_reg[18][6]  ( .D(n511), .CK(clk), .Q(\String[18][6] ) );
  DFFQX1 \String_reg[10][4]  ( .D(n445), .CK(clk), .Q(\String[10][4] ) );
  DFFQX1 \String_reg[14][4]  ( .D(n477), .CK(clk), .Q(\String[14][4] ) );
  DFFQX1 \String_reg[18][4]  ( .D(n509), .CK(clk), .Q(\String[18][4] ) );
  DFFQX1 \String_reg[20][5]  ( .D(n526), .CK(clk), .Q(\String[20][5] ) );
  DFFX1 \Pattern_reg[6][0]  ( .D(n703), .CK(clk), .Q(\Pattern[6][0] ), .QN(
        n111) );
  DFFQX1 \String_reg[22][6]  ( .D(n543), .CK(clk), .Q(\String[22][6] ) );
  DFFX1 \Pattern_reg[6][7]  ( .D(n702), .CK(clk), .Q(\Pattern[6][7] ), .QN(
        n104) );
  DFFQX1 \String_reg[24][5]  ( .D(n558), .CK(clk), .Q(\String[24][5] ) );
  DFFQX1 \String_reg[22][4]  ( .D(n541), .CK(clk), .Q(\String[22][4] ) );
  DFFQX1 \String_reg[26][6]  ( .D(n575), .CK(clk), .Q(\String[26][6] ) );
  DFFQX1 \String_reg[28][5]  ( .D(n590), .CK(clk), .Q(\String[28][5] ) );
  DFFX1 \Pattern_reg[4][1]  ( .D(n680), .CK(clk), .Q(\Pattern[4][1] ), .QN(n94) );
  DFFQX1 \String_reg[30][6]  ( .D(n607), .CK(clk), .Q(\String[30][6] ) );
  DFFQX1 \String_reg[4][6]  ( .D(n399), .CK(clk), .Q(\String[4][6] ) );
  DFFQX1 \String_reg[26][4]  ( .D(n573), .CK(clk), .Q(\String[26][4] ) );
  DFFX1 \Pattern_reg[2][0]  ( .D(n671), .CK(clk), .Q(\Pattern[2][0] ), .QN(n79) );
  DFFQX1 \String_reg[30][4]  ( .D(n605), .CK(clk), .Q(\String[30][4] ) );
  DFFQX1 \String_reg[4][4]  ( .D(n397), .CK(clk), .Q(\String[4][4] ) );
  DFFQX1 \String_reg[8][6]  ( .D(n431), .CK(clk), .Q(\String[8][6] ) );
  DFFX1 \Pattern_reg[2][7]  ( .D(n670), .CK(clk), .Q(\Pattern[2][7] ), .QN(n72) );
  DFFQX1 \String_reg[12][6]  ( .D(n463), .CK(clk), .Q(\String[12][6] ) );
  DFFQX1 \String_reg[16][6]  ( .D(n495), .CK(clk), .Q(\String[16][6] ) );
  DFFQX1 \String_reg[8][4]  ( .D(n429), .CK(clk), .Q(\String[8][4] ) );
  DFFQX1 \String_reg[12][4]  ( .D(n461), .CK(clk), .Q(\String[12][4] ) );
  DFFQX1 \String_reg[16][4]  ( .D(n493), .CK(clk), .Q(\String[16][4] ) );
  DFFQX1 \String_reg[20][6]  ( .D(n527), .CK(clk), .Q(\String[20][6] ) );
  DFFQX1 \String_reg[20][4]  ( .D(n525), .CK(clk), .Q(\String[20][4] ) );
  DFFQX1 \String_reg[24][6]  ( .D(n559), .CK(clk), .Q(\String[24][6] ) );
  DFFQX1 \String_reg[28][6]  ( .D(n591), .CK(clk), .Q(\String[28][6] ) );
  DFFX1 \Pattern_reg[6][1]  ( .D(n696), .CK(clk), .Q(\Pattern[6][1] ), .QN(
        n110) );
  DFFQX1 \String_reg[24][4]  ( .D(n557), .CK(clk), .Q(\String[24][4] ) );
  DFFQX1 \String_reg[28][4]  ( .D(n589), .CK(clk), .Q(\String[28][4] ) );
  DFFQX1 \String_reg[2][0]  ( .D(n385), .CK(clk), .Q(\String[2][0] ) );
  DFFQX1 \String_reg[6][0]  ( .D(n417), .CK(clk), .Q(\String[6][0] ) );
  DFFX1 \Pattern_reg[2][1]  ( .D(n664), .CK(clk), .Q(\Pattern[2][1] ), .QN(n78) );
  DFFQX1 \String_reg[2][1]  ( .D(n378), .CK(clk), .Q(\String[2][1] ) );
  DFFQX1 \String_reg[10][0]  ( .D(n449), .CK(clk), .Q(\String[10][0] ) );
  DFFQX1 \String_reg[14][0]  ( .D(n481), .CK(clk), .Q(\String[14][0] ) );
  DFFQX1 \String_reg[18][0]  ( .D(n513), .CK(clk), .Q(\String[18][0] ) );
  DFFQX1 \String_reg[6][1]  ( .D(n410), .CK(clk), .Q(\String[6][1] ) );
  DFFQX1 \String_reg[2][2]  ( .D(n379), .CK(clk), .Q(\String[2][2] ) );
  DFFQX1 \String_reg[10][1]  ( .D(n442), .CK(clk), .Q(\String[10][1] ) );
  DFFQX1 \String_reg[14][1]  ( .D(n474), .CK(clk), .Q(\String[14][1] ) );
  DFFQX1 \String_reg[18][1]  ( .D(n506), .CK(clk), .Q(\String[18][1] ) );
  DFFQX1 \String_reg[22][0]  ( .D(n545), .CK(clk), .Q(\String[22][0] ) );
  DFFQX1 \String_reg[6][2]  ( .D(n411), .CK(clk), .Q(\String[6][2] ) );
  DFFQX1 \String_reg[2][3]  ( .D(n380), .CK(clk), .Q(\String[2][3] ) );
  DFFQX1 \String_reg[26][0]  ( .D(n577), .CK(clk), .Q(\String[26][0] ) );
  DFFQX1 \String_reg[10][2]  ( .D(n443), .CK(clk), .Q(\String[10][2] ) );
  DFFQX1 \String_reg[6][3]  ( .D(n412), .CK(clk), .Q(\String[6][3] ) );
  DFFQX1 \String_reg[30][0]  ( .D(n609), .CK(clk), .Q(\String[30][0] ) );
  DFFQX1 \String_reg[4][0]  ( .D(n401), .CK(clk), .Q(\String[4][0] ) );
  DFFQX1 \String_reg[14][2]  ( .D(n475), .CK(clk), .Q(\String[14][2] ) );
  DFFQX1 \String_reg[22][1]  ( .D(n538), .CK(clk), .Q(\String[22][1] ) );
  DFFQX1 \String_reg[18][2]  ( .D(n507), .CK(clk), .Q(\String[18][2] ) );
  DFFQX1 \String_reg[10][3]  ( .D(n444), .CK(clk), .Q(\String[10][3] ) );
  DFFQX1 \String_reg[8][0]  ( .D(n433), .CK(clk), .Q(\String[8][0] ) );
  DFFQX1 \String_reg[26][1]  ( .D(n570), .CK(clk), .Q(\String[26][1] ) );
  DFFQX1 \String_reg[14][3]  ( .D(n476), .CK(clk), .Q(\String[14][3] ) );
  DFFQX1 \String_reg[18][3]  ( .D(n508), .CK(clk), .Q(\String[18][3] ) );
  DFFQX1 \String_reg[12][0]  ( .D(n465), .CK(clk), .Q(\String[12][0] ) );
  DFFQX1 \String_reg[30][1]  ( .D(n602), .CK(clk), .Q(\String[30][1] ) );
  DFFQX1 \String_reg[16][0]  ( .D(n497), .CK(clk), .Q(\String[16][0] ) );
  DFFQX1 \String_reg[4][1]  ( .D(n394), .CK(clk), .Q(\String[4][1] ) );
  DFFQX1 \String_reg[22][2]  ( .D(n539), .CK(clk), .Q(\String[22][2] ) );
  DFFQX1 \String_reg[8][1]  ( .D(n426), .CK(clk), .Q(\String[8][1] ) );
  DFFQX1 \String_reg[26][2]  ( .D(n571), .CK(clk), .Q(\String[26][2] ) );
  DFFQX1 \String_reg[22][3]  ( .D(n540), .CK(clk), .Q(\String[22][3] ) );
  DFFQX1 \String_reg[12][1]  ( .D(n458), .CK(clk), .Q(\String[12][1] ) );
  DFFQX1 \String_reg[16][1]  ( .D(n490), .CK(clk), .Q(\String[16][1] ) );
  DFFQX1 \String_reg[20][0]  ( .D(n529), .CK(clk), .Q(\String[20][0] ) );
  DFFQX1 \String_reg[30][2]  ( .D(n603), .CK(clk), .Q(\String[30][2] ) );
  DFFQX1 \String_reg[4][2]  ( .D(n395), .CK(clk), .Q(\String[4][2] ) );
  DFFQX1 \String_reg[26][3]  ( .D(n572), .CK(clk), .Q(\String[26][3] ) );
  DFFQX1 \String_reg[24][0]  ( .D(n561), .CK(clk), .Q(\String[24][0] ) );
  DFFQX1 \String_reg[8][2]  ( .D(n427), .CK(clk), .Q(\String[8][2] ) );
  DFFQX1 \String_reg[30][3]  ( .D(n604), .CK(clk), .Q(\String[30][3] ) );
  DFFQX1 \String_reg[4][3]  ( .D(n396), .CK(clk), .Q(\String[4][3] ) );
  DFFQX1 \String_reg[28][0]  ( .D(n593), .CK(clk), .Q(\String[28][0] ) );
  DFFQX1 \String_reg[12][2]  ( .D(n459), .CK(clk), .Q(\String[12][2] ) );
  DFFQX1 \String_reg[20][1]  ( .D(n522), .CK(clk), .Q(\String[20][1] ) );
  DFFQX1 \String_reg[16][2]  ( .D(n491), .CK(clk), .Q(\String[16][2] ) );
  DFFQX1 \String_reg[8][3]  ( .D(n428), .CK(clk), .Q(\String[8][3] ) );
  DFFQX1 \String_reg[24][1]  ( .D(n554), .CK(clk), .Q(\String[24][1] ) );
  DFFQX1 \String_reg[12][3]  ( .D(n460), .CK(clk), .Q(\String[12][3] ) );
  DFFQX1 \String_reg[16][3]  ( .D(n492), .CK(clk), .Q(\String[16][3] ) );
  DFFQX1 \String_reg[28][1]  ( .D(n586), .CK(clk), .Q(\String[28][1] ) );
  DFFQX1 \String_reg[20][2]  ( .D(n523), .CK(clk), .Q(\String[20][2] ) );
  DFFQX1 \String_reg[24][2]  ( .D(n555), .CK(clk), .Q(\String[24][2] ) );
  DFFQX1 \String_reg[20][3]  ( .D(n524), .CK(clk), .Q(\String[20][3] ) );
  DFFQX1 \String_reg[28][2]  ( .D(n587), .CK(clk), .Q(\String[28][2] ) );
  DFFQX1 \String_reg[24][3]  ( .D(n556), .CK(clk), .Q(\String[24][3] ) );
  DFFQX1 \String_reg[28][3]  ( .D(n588), .CK(clk), .Q(\String[28][3] ) );
  DFFQX1 \Judge_String_count_reg[0]  ( .D(n644), .CK(clk), .Q(
        Judge_String_count[0]) );
  DFFQX1 \state_reg[0]  ( .D(n2840), .CK(clk), .Q(state[0]) );
  DFFQX1 \Judge_Pattern_count_begin_reg[0]  ( .D(n647), .CK(clk), .Q(
        Judge_Pattern_count_begin[0]) );
  DFFQX1 \String_count_reg[4]  ( .D(n632), .CK(clk), .Q(String_count[4]) );
  DFFQX1 \String_count_reg[3]  ( .D(n633), .CK(clk), .Q(String_count[3]) );
  DFFQX1 \Pattern_count_reg[2]  ( .D(n721), .CK(clk), .Q(Pattern_count[2]) );
  DFFQX1 \Judge_Pattern_count_begin_reg[1]  ( .D(n646), .CK(clk), .Q(
        Judge_Pattern_count_begin[1]) );
  DFFQX1 \Judge_Pattern_count_begin_reg[2]  ( .D(n645), .CK(clk), .Q(
        Judge_Pattern_count_begin[2]) );
  DFFQX1 \Judge_Pattern_count_reg[1]  ( .D(n642), .CK(clk), .Q(
        Judge_Pattern_count[1]) );
  DFFQX1 \Judge_Pattern_count_reg[2]  ( .D(n643), .CK(clk), .Q(
        Judge_Pattern_count[2]) );
  DFFQX1 \String_reg[0][0]  ( .D(n369), .CK(clk), .Q(n2976) );
  DFFQX1 \String_reg[0][7]  ( .D(n368), .CK(clk), .Q(n2969) );
  DFFQX1 \String_reg[0][6]  ( .D(n367), .CK(clk), .Q(n2970) );
  DFFQX1 \String_reg[0][5]  ( .D(n366), .CK(clk), .Q(n2971) );
  DFFQX1 \String_reg[0][4]  ( .D(n365), .CK(clk), .Q(n2972) );
  DFFQX1 \String_reg[0][3]  ( .D(n364), .CK(clk), .Q(n2973) );
  DFFQX1 \String_reg[0][2]  ( .D(n363), .CK(clk), .Q(n2974) );
  DFFQX1 \String_reg[0][1]  ( .D(n362), .CK(clk), .Q(n2975) );
  DFFQX1 \match_index_reg[0]  ( .D(n2917), .CK(clk), .Q(n2968) );
  DFFQX1 \match_index_reg[4]  ( .D(n2921), .CK(clk), .Q(n2964) );
  DFFQX1 \match_index_reg[1]  ( .D(n2918), .CK(clk), .Q(n2967) );
  DFFQX1 \match_index_reg[2]  ( .D(n2919), .CK(clk), .Q(n2966) );
  DFFQX1 \match_index_reg[3]  ( .D(n2920), .CK(clk), .Q(n2965) );
  DFFQX1 match_reg ( .D(n361), .CK(clk), .Q(n2963) );
  DFFX1 \Pattern_reg[0][3]  ( .D(n650), .CK(clk), .QN(n59) );
  DFFX1 \Pattern_reg[0][1]  ( .D(n648), .CK(clk), .QN(n62) );
  DFFX1 \Pattern_reg[0][2]  ( .D(n649), .CK(clk), .QN(n60) );
  DFFX1 \Pattern_reg[0][0]  ( .D(n655), .CK(clk), .QN(n63) );
  DFFX1 \Pattern_reg[0][7]  ( .D(n654), .CK(clk), .QN(n52) );
  DFFX1 \Pattern_reg[0][6]  ( .D(n653), .CK(clk), .QN(n54) );
  DFFX1 \Pattern_reg[0][4]  ( .D(n651), .CK(clk), .QN(n57) );
  DFFX1 \Pattern_reg[0][5]  ( .D(n652), .CK(clk), .QN(n56) );
  DFFX1 \Judge_String_count_reg[1]  ( .D(n638), .CK(clk), .Q(
        Judge_String_count[1]), .QN(n2771) );
  DFFXL \state_reg[1]  ( .D(N711), .CK(clk), .Q(state[1]), .QN(n2940) );
  DFFX4 \Judge_String_count_reg[5]  ( .D(n725), .CK(clk), .Q(
        Judge_String_count[5]) );
  DFFX2 \Judge_Pattern_count_reg[3]  ( .D(n724), .CK(clk), .Q(
        Judge_Pattern_count[3]), .QN(n2962) );
  DFFX2 \Judge_String_count_reg[4]  ( .D(n641), .CK(clk), .Q(
        Judge_String_count[4]) );
  DFFX2 \Judge_Pattern_count_reg[0]  ( .D(n727), .CK(clk), .Q(
        Judge_Pattern_count[0]), .QN(n2836) );
  DFFX2 \Judge_String_count_reg[3]  ( .D(n640), .CK(clk), .Q(
        Judge_String_count[3]), .QN(n2769) );
  DFFX2 \String_count_reg[0]  ( .D(n636), .CK(clk), .Q(String_count[0]), .QN(
        n2954) );
  DFFX2 \String_count_reg[1]  ( .D(n635), .CK(clk), .Q(String_count[1]), .QN(
        n2955) );
  DFFX2 \String_count_reg[2]  ( .D(n634), .CK(clk), .Q(String_count[2]), .QN(
        n2956) );
  DFFX1 \Judge_String_count_reg[2]  ( .D(n639), .CK(clk), .Q(
        Judge_String_count[2]), .QN(n2770) );
  OAI221X1 U2491 ( .A0(n2833), .A1(n2823), .B0(n2831), .B1(n2822), .C0(n2821), 
        .Y(N850) );
  OAI221X1 U2492 ( .A0(n2833), .A1(n2813), .B0(n2831), .B1(n2812), .C0(n2811), 
        .Y(N852) );
  CLKINVX1 U2493 ( .A(Judge_Pattern_count_begin[3]), .Y(n2936) );
  AOI22XL U2494 ( .A0(n327), .A1(n360), .B0(Judge_String_count[2]), .B1(n2956), 
        .Y(n359) );
  NOR3XL U2495 ( .A(Judge_String_count[3]), .B(Judge_String_count[5]), .C(
        Judge_String_count[4]), .Y(n333) );
  INVX12 U2496 ( .A(n56), .Y(\p[5] ) );
  INVX12 U2497 ( .A(n57), .Y(\p[4] ) );
  INVX12 U2498 ( .A(n54), .Y(\p[6] ) );
  INVX12 U2499 ( .A(n52), .Y(\p[7] ) );
  INVX12 U2500 ( .A(n63), .Y(\p[0] ) );
  INVX12 U2501 ( .A(n60), .Y(\p[2] ) );
  INVX12 U2502 ( .A(n62), .Y(\p[1] ) );
  INVX12 U2503 ( .A(n59), .Y(\p[3] ) );
  OAI221X1 U2504 ( .A0(n2833), .A1(n2798), .B0(n2831), .B1(n2797), .C0(n2796), 
        .Y(N855) );
  OAI221X1 U2505 ( .A0(n2834), .A1(n2833), .B0(n2832), .B1(n2831), .C0(n2830), 
        .Y(N849) );
  OAI221X1 U2506 ( .A0(n2833), .A1(n2793), .B0(n2831), .B1(n2792), .C0(n2791), 
        .Y(N856) );
  OR2X2 U2507 ( .A(Judge_Pattern_count[1]), .B(Judge_Pattern_count[3]), .Y(
        n2833) );
  NAND2BX2 U2508 ( .AN(Judge_Pattern_count[3]), .B(Judge_Pattern_count[1]), 
        .Y(n2831) );
  NOR2BX2 U2509 ( .AN(Judge_String_count[4]), .B(Judge_String_count[5]), .Y(
        n2765) );
  BUFX12 U2510 ( .A(n2963), .Y(match) );
  BUFX12 U2511 ( .A(n2965), .Y(match_index[3]) );
  BUFX12 U2512 ( .A(n2966), .Y(match_index[2]) );
  BUFX12 U2513 ( .A(n2967), .Y(match_index[1]) );
  BUFX12 U2514 ( .A(n2964), .Y(match_index[4]) );
  BUFX12 U2515 ( .A(n2968), .Y(match_index[0]) );
  NOR2X2 U2516 ( .A(Judge_String_count[4]), .B(Judge_String_count[5]), .Y(
        n2767) );
  OR2X1 U2517 ( .A(n2940), .B(n2938), .Y(N1192) );
  INVX12 U2518 ( .A(N1192), .Y(valid) );
  BUFX16 U2519 ( .A(n2975), .Y(s[1]) );
  BUFX16 U2520 ( .A(n2974), .Y(s[2]) );
  BUFX16 U2521 ( .A(n2973), .Y(s[3]) );
  BUFX16 U2522 ( .A(n2972), .Y(s[4]) );
  BUFX16 U2523 ( .A(n2971), .Y(s[5]) );
  BUFX16 U2524 ( .A(n2970), .Y(s[6]) );
  BUFX16 U2525 ( .A(n2969), .Y(s[7]) );
  BUFX16 U2526 ( .A(n2976), .Y(s[0]) );
  INVXL U2527 ( .A(N855), .Y(n2931) );
  OAI21X1 U2528 ( .A0(n2840), .A1(n275), .B0(n2922), .Y(n245) );
  OAI21X1 U2529 ( .A0(n336), .A1(n337), .B0(n338), .Y(n235) );
  CLKINVX1 U2530 ( .A(n2882), .Y(n2941) );
  CLKINVX1 U2531 ( .A(n2883), .Y(n2939) );
  NOR2X1 U2532 ( .A(n349), .B(n2900), .Y(N711) );
  CLKINVX1 U2533 ( .A(Judge_Pattern_count_begin[0]), .Y(n2947) );
  CLKINVX1 U2534 ( .A(Judge_Pattern_count_begin[1]), .Y(n2960) );
  CLKINVX1 U2535 ( .A(Judge_Pattern_count_begin[2]), .Y(n2961) );
  OAI222XL U2536 ( .A0(n293), .A1(n108), .B0(n294), .B1(n116), .C0(n295), .C1(
        n100), .Y(n296) );
  OAI222XL U2537 ( .A0(n293), .A1(n109), .B0(n294), .B1(n117), .C0(n295), .C1(
        n101), .Y(n300) );
  OAI222XL U2538 ( .A0(n293), .A1(n110), .B0(n294), .B1(n118), .C0(n295), .C1(
        n102), .Y(n304) );
  OAI22XL U2539 ( .A0(n2936), .A1(n124), .B0(n288), .B1(n59), .Y(n299) );
  OAI22XL U2540 ( .A0(n2936), .A1(n125), .B0(n288), .B1(n60), .Y(n303) );
  OAI22XL U2541 ( .A0(n289), .A1(n68), .B0(n290), .B1(n76), .Y(n298) );
  OAI22XL U2542 ( .A0(n2936), .A1(n126), .B0(n288), .B1(n62), .Y(n307) );
  OAI22XL U2543 ( .A0(n289), .A1(n69), .B0(n290), .B1(n77), .Y(n302) );
  OAI22XL U2544 ( .A0(n291), .A1(n84), .B0(n292), .B1(n92), .Y(n297) );
  OAI22XL U2545 ( .A0(n289), .A1(n70), .B0(n290), .B1(n78), .Y(n306) );
  OAI22XL U2546 ( .A0(n291), .A1(n85), .B0(n292), .B1(n93), .Y(n301) );
  OAI22XL U2547 ( .A0(n291), .A1(n86), .B0(n292), .B1(n94), .Y(n305) );
  NAND3X1 U2548 ( .A(Judge_Pattern_count_begin[0]), .B(n2961), .C(
        Judge_Pattern_count_begin[1]), .Y(n291) );
  NAND3X1 U2549 ( .A(n2960), .B(n2961), .C(Judge_Pattern_count_begin[0]), .Y(
        n289) );
  CLKINVX1 U2550 ( .A(String_count[4]), .Y(n2958) );
  CLKINVX1 U2551 ( .A(String_count[3]), .Y(n2957) );
  CLKINVX1 U2552 ( .A(Pattern_count[2]), .Y(n2942) );
  INVX3 U2553 ( .A(n222), .Y(n2922) );
  INVX3 U2554 ( .A(n2846), .Y(n2910) );
  CLKINVX1 U2555 ( .A(n266), .Y(n2916) );
  NOR2X2 U2556 ( .A(n2927), .B(n2900), .Y(n214) );
  NAND2X1 U2557 ( .A(n151), .B(n2904), .Y(n222) );
  INVX3 U2558 ( .A(n2902), .Y(n2900) );
  INVX3 U2559 ( .A(n2842), .Y(n2914) );
  INVX3 U2560 ( .A(n2844), .Y(n2912) );
  CLKINVX1 U2561 ( .A(n254), .Y(n2925) );
  INVX3 U2562 ( .A(n2843), .Y(n2913) );
  INVX3 U2563 ( .A(n2845), .Y(n2911) );
  INVX3 U2564 ( .A(n250), .Y(n2908) );
  NAND2X2 U2565 ( .A(n2926), .B(n2904), .Y(n220) );
  NAND2X1 U2566 ( .A(n245), .B(n2923), .Y(n246) );
  INVX3 U2567 ( .A(n2847), .Y(n2909) );
  CLKBUFX3 U2568 ( .A(n255), .Y(n2846) );
  OAI31XL U2569 ( .A0(n253), .A1(n2941), .A2(n254), .B0(n2904), .Y(n255) );
  OA21X2 U2570 ( .A0(n178), .A1(n221), .B0(n220), .Y(n211) );
  NOR2X2 U2571 ( .A(n220), .B(n162), .Y(n213) );
  INVX3 U2572 ( .A(n2848), .Y(n2924) );
  NOR3BX1 U2573 ( .AN(n231), .B(n232), .C(n233), .Y(n226) );
  INVX3 U2574 ( .A(n2841), .Y(n2915) );
  NOR2X1 U2575 ( .A(n220), .B(n2941), .Y(n266) );
  CLKINVX1 U2576 ( .A(n178), .Y(n2927) );
  NAND2X1 U2577 ( .A(n222), .B(n2904), .Y(n210) );
  AND2X2 U2578 ( .A(n231), .B(n234), .Y(n225) );
  AO21X1 U2579 ( .A0(n233), .A1(n2930), .B0(n235), .Y(n234) );
  CLKBUFX3 U2580 ( .A(n153), .Y(n2880) );
  AOI2BB1X1 U2581 ( .A0N(n162), .A1N(n2927), .B0(n2901), .Y(n153) );
  NAND2X1 U2582 ( .A(n273), .B(n2923), .Y(n241) );
  INVX3 U2583 ( .A(n2904), .Y(n2901) );
  CLKBUFX3 U2584 ( .A(n2884), .Y(n2885) );
  CLKBUFX3 U2585 ( .A(n2886), .Y(n2887) );
  CLKBUFX3 U2586 ( .A(n2888), .Y(n2889) );
  CLKBUFX3 U2587 ( .A(n2890), .Y(n2891) );
  CLKBUFX3 U2588 ( .A(n2892), .Y(n2893) );
  CLKBUFX3 U2589 ( .A(n2894), .Y(n2895) );
  CLKBUFX3 U2590 ( .A(n2896), .Y(n2897) );
  CLKBUFX3 U2591 ( .A(n2898), .Y(n2899) );
  CLKINVX1 U2592 ( .A(n232), .Y(n2930) );
  NOR2X1 U2593 ( .A(n235), .B(n2930), .Y(n238) );
  NOR3BX1 U2594 ( .AN(n318), .B(n235), .C(n2930), .Y(n273) );
  CLKBUFX3 U2595 ( .A(n2741), .Y(n2775) );
  AND2X2 U2596 ( .A(n2599), .B(n2591), .Y(n2741) );
  CLKBUFX3 U2597 ( .A(n2743), .Y(n2774) );
  AND2X2 U2598 ( .A(n2591), .B(n2598), .Y(n2743) );
  OR2X1 U2599 ( .A(n318), .B(n235), .Y(n275) );
  NAND2X1 U2600 ( .A(n2932), .B(n2931), .Y(n323) );
  CLKINVX1 U2601 ( .A(n324), .Y(n2933) );
  CLKINVX1 U2602 ( .A(n288), .Y(n2935) );
  CLKINVX1 U2603 ( .A(n181), .Y(n2953) );
  OAI211X1 U2604 ( .A0(n2840), .A1(n236), .B0(n237), .C0(n151), .Y(n224) );
  OAI21XL U2605 ( .A0(n2840), .A1(n238), .B0(n2922), .Y(n237) );
  NAND2X1 U2606 ( .A(N711), .B(n2840), .Y(n151) );
  CLKBUFX3 U2607 ( .A(n2906), .Y(n2902) );
  NAND2X1 U2608 ( .A(n2926), .B(n2943), .Y(n254) );
  CLKINVX1 U2609 ( .A(n263), .Y(n2926) );
  CLKBUFX3 U2610 ( .A(n260), .Y(n2842) );
  OAI31XL U2611 ( .A0(n257), .A1(n2939), .A2(n2941), .B0(n2903), .Y(n260) );
  CLKBUFX3 U2612 ( .A(n258), .Y(n2844) );
  OAI31XL U2613 ( .A0(n257), .A1(n2883), .A2(n2941), .B0(n2903), .Y(n258) );
  CLKBUFX3 U2614 ( .A(n259), .Y(n2843) );
  OAI31XL U2615 ( .A0(n257), .A1(n2882), .A2(n2939), .B0(n2903), .Y(n259) );
  CLKBUFX3 U2616 ( .A(n256), .Y(n2845) );
  OAI31XL U2617 ( .A0(n257), .A1(n2883), .A2(n2882), .B0(n2904), .Y(n256) );
  NAND2X2 U2618 ( .A(n2904), .B(n251), .Y(n250) );
  NAND4X1 U2619 ( .A(n2925), .B(n2882), .C(n2939), .D(n2942), .Y(n251) );
  NAND2X1 U2620 ( .A(n2922), .B(n263), .Y(n221) );
  OA21XL U2621 ( .A0(n2883), .A1(n220), .B0(n268), .Y(n267) );
  OA21XL U2622 ( .A0(n2882), .A1(n220), .B0(n221), .Y(n268) );
  OAI22XL U2623 ( .A0(n2961), .A1(n245), .B0(n244), .B1(n246), .Y(n645) );
  OAI22XL U2624 ( .A0(n2960), .A1(n245), .B0(n242), .B1(n246), .Y(n646) );
  OAI22XL U2625 ( .A0(n2936), .A1(n245), .B0(n269), .B1(n246), .Y(n726) );
  CLKBUFX3 U2626 ( .A(n252), .Y(n2847) );
  OAI31XL U2627 ( .A0(n253), .A1(n2882), .A2(n254), .B0(n2903), .Y(n252) );
  NAND2X1 U2628 ( .A(n2922), .B(n2840), .Y(n152) );
  OAI2BB1X1 U2629 ( .A0N(n274), .A1N(n2923), .B0(n152), .Y(n239) );
  OAI21XL U2630 ( .A0(n2929), .A1(n272), .B0(n275), .Y(n274) );
  CLKINVX1 U2631 ( .A(n273), .Y(n2929) );
  OAI22XL U2632 ( .A0(n267), .A1(n2942), .B0(n253), .B1(n2916), .Y(n721) );
  CLKBUFX3 U2633 ( .A(n248), .Y(n2848) );
  AO21X1 U2634 ( .A0(n2926), .A1(n249), .B0(n2901), .Y(n248) );
  NOR2X2 U2635 ( .A(n2928), .B(N711), .Y(n178) );
  CLKBUFX3 U2636 ( .A(n207), .Y(n2849) );
  AOI2BB1X1 U2637 ( .A0N(n177), .A1N(n200), .B0(n2901), .Y(n207) );
  CLKBUFX3 U2638 ( .A(n205), .Y(n2851) );
  AOI2BB1X1 U2639 ( .A0N(n173), .A1N(n200), .B0(n2901), .Y(n205) );
  CLKBUFX3 U2640 ( .A(n203), .Y(n2853) );
  AOI2BB1X1 U2641 ( .A0N(n169), .A1N(n200), .B0(n2901), .Y(n203) );
  CLKBUFX3 U2642 ( .A(n201), .Y(n2855) );
  AOI2BB1X1 U2643 ( .A0N(n165), .A1N(n200), .B0(n2901), .Y(n201) );
  CLKBUFX3 U2644 ( .A(n199), .Y(n2856) );
  AOI2BB1X1 U2645 ( .A0N(n181), .A1N(n200), .B0(n2901), .Y(n199) );
  CLKBUFX3 U2646 ( .A(n206), .Y(n2850) );
  AOI2BB1X1 U2647 ( .A0N(n175), .A1N(n200), .B0(n2901), .Y(n206) );
  CLKBUFX3 U2648 ( .A(n204), .Y(n2852) );
  AOI2BB1X1 U2649 ( .A0N(n171), .A1N(n200), .B0(reset), .Y(n204) );
  CLKBUFX3 U2650 ( .A(n202), .Y(n2854) );
  AOI2BB1X1 U2651 ( .A0N(n167), .A1N(n200), .B0(reset), .Y(n202) );
  CLKBUFX3 U2652 ( .A(n198), .Y(n2857) );
  AOI2BB1X1 U2653 ( .A0N(n177), .A1N(n191), .B0(n2901), .Y(n198) );
  CLKBUFX3 U2654 ( .A(n189), .Y(n2865) );
  AOI2BB1X1 U2655 ( .A0N(n177), .A1N(n182), .B0(n2901), .Y(n189) );
  CLKBUFX3 U2656 ( .A(n196), .Y(n2859) );
  AOI2BB1X1 U2657 ( .A0N(n173), .A1N(n191), .B0(n2901), .Y(n196) );
  CLKBUFX3 U2658 ( .A(n187), .Y(n2867) );
  AOI2BB1X1 U2659 ( .A0N(n173), .A1N(n182), .B0(n2901), .Y(n187) );
  CLKBUFX3 U2660 ( .A(n194), .Y(n2861) );
  AOI2BB1X1 U2661 ( .A0N(n169), .A1N(n191), .B0(n2901), .Y(n194) );
  CLKBUFX3 U2662 ( .A(n185), .Y(n2869) );
  AOI2BB1X1 U2663 ( .A0N(n169), .A1N(n182), .B0(n2900), .Y(n185) );
  CLKBUFX3 U2664 ( .A(n192), .Y(n2863) );
  AOI2BB1X1 U2665 ( .A0N(n165), .A1N(n191), .B0(n2901), .Y(n192) );
  CLKBUFX3 U2666 ( .A(n183), .Y(n2871) );
  AOI2BB1X1 U2667 ( .A0N(n165), .A1N(n182), .B0(n2900), .Y(n183) );
  CLKBUFX3 U2668 ( .A(n190), .Y(n2864) );
  AOI2BB1X1 U2669 ( .A0N(n181), .A1N(n191), .B0(n2901), .Y(n190) );
  CLKBUFX3 U2670 ( .A(n180), .Y(n2872) );
  AOI2BB1X1 U2671 ( .A0N(n181), .A1N(n182), .B0(n2900), .Y(n180) );
  CLKBUFX3 U2672 ( .A(n197), .Y(n2858) );
  AOI2BB1X1 U2673 ( .A0N(n175), .A1N(n191), .B0(n2901), .Y(n197) );
  CLKBUFX3 U2674 ( .A(n188), .Y(n2866) );
  AOI2BB1X1 U2675 ( .A0N(n175), .A1N(n182), .B0(n2901), .Y(n188) );
  CLKBUFX3 U2676 ( .A(n195), .Y(n2860) );
  AOI2BB1X1 U2677 ( .A0N(n171), .A1N(n191), .B0(n2901), .Y(n195) );
  CLKBUFX3 U2678 ( .A(n186), .Y(n2868) );
  AOI2BB1X1 U2679 ( .A0N(n171), .A1N(n182), .B0(n2901), .Y(n186) );
  CLKBUFX3 U2680 ( .A(n193), .Y(n2862) );
  AOI2BB1X1 U2681 ( .A0N(n167), .A1N(n191), .B0(n2901), .Y(n193) );
  CLKBUFX3 U2682 ( .A(n184), .Y(n2870) );
  AOI2BB1X1 U2683 ( .A0N(n167), .A1N(n182), .B0(n2900), .Y(n184) );
  OAI222XL U2684 ( .A0(n2936), .A1(n241), .B0(n269), .B1(n243), .C0(n2962), 
        .C1(n152), .Y(n724) );
  OAI222XL U2685 ( .A0(n2961), .A1(n241), .B0(n244), .B1(n243), .C0(n2835), 
        .C1(n152), .Y(n643) );
  OAI222XL U2686 ( .A0(n2960), .A1(n241), .B0(n242), .B1(n243), .C0(n2959), 
        .C1(n152), .Y(n642) );
  NOR2BX1 U2687 ( .AN(n236), .B(n2840), .Y(n231) );
  CLKBUFX3 U2688 ( .A(n261), .Y(n2841) );
  OAI31XL U2689 ( .A0(n262), .A1(n2943), .A2(n263), .B0(n2903), .Y(n261) );
  NAND3X1 U2690 ( .A(n2939), .B(n2942), .C(n2941), .Y(n262) );
  CLKBUFX3 U2691 ( .A(n2907), .Y(n2839) );
  CLKINVX1 U2692 ( .A(n208), .Y(n2907) );
  OAI31XL U2693 ( .A0(n209), .A1(n2927), .A2(n2952), .B0(n2904), .Y(n208) );
  NAND3X1 U2694 ( .A(n2957), .B(n2958), .C(n2953), .Y(n209) );
  NAND2X1 U2695 ( .A(n178), .B(n179), .Y(n164) );
  CLKBUFX3 U2696 ( .A(n176), .Y(n2873) );
  AOI2BB1X1 U2697 ( .A0N(n164), .A1N(n177), .B0(n2900), .Y(n176) );
  CLKBUFX3 U2698 ( .A(n172), .Y(n2875) );
  AOI2BB1X1 U2699 ( .A0N(n164), .A1N(n173), .B0(n2900), .Y(n172) );
  CLKBUFX3 U2700 ( .A(n168), .Y(n2877) );
  AOI2BB1X1 U2701 ( .A0N(n164), .A1N(n169), .B0(n2900), .Y(n168) );
  CLKBUFX3 U2702 ( .A(n163), .Y(n2879) );
  AOI2BB1X1 U2703 ( .A0N(n164), .A1N(n165), .B0(n2900), .Y(n163) );
  CLKBUFX3 U2704 ( .A(n174), .Y(n2874) );
  AOI2BB1X1 U2705 ( .A0N(n164), .A1N(n175), .B0(n2900), .Y(n174) );
  CLKBUFX3 U2706 ( .A(n170), .Y(n2876) );
  AOI2BB1X1 U2707 ( .A0N(n164), .A1N(n171), .B0(n2900), .Y(n170) );
  CLKBUFX3 U2708 ( .A(n166), .Y(n2878) );
  AOI2BB1X1 U2709 ( .A0N(n164), .A1N(n167), .B0(n2900), .Y(n166) );
  CLKBUFX3 U2710 ( .A(n2905), .Y(n2904) );
  CLKINVX1 U2711 ( .A(n2840), .Y(n2923) );
  AO21X1 U2712 ( .A0(n275), .A1(n238), .B0(n2840), .Y(n243) );
  AOI2BB1X1 U2713 ( .A0N(n235), .A1N(n270), .B0(n2840), .Y(n240) );
  OAI2BB2XL U2714 ( .B0(n271), .B1(n232), .A0N(n272), .A1N(n273), .Y(n270) );
  CLKBUFX3 U2715 ( .A(n2905), .Y(n2903) );
  CLKBUFX3 U2716 ( .A(n161), .Y(n2884) );
  CLKBUFX3 U2717 ( .A(n160), .Y(n2886) );
  CLKBUFX3 U2718 ( .A(n159), .Y(n2888) );
  CLKBUFX3 U2719 ( .A(n158), .Y(n2890) );
  CLKBUFX3 U2720 ( .A(n157), .Y(n2892) );
  CLKBUFX3 U2721 ( .A(n156), .Y(n2894) );
  CLKBUFX3 U2722 ( .A(n155), .Y(n2896) );
  CLKBUFX3 U2723 ( .A(n154), .Y(n2898) );
  OAI211XL U2724 ( .A0(n2937), .A1(n271), .B0(n2934), .C0(N850), .Y(n332) );
  CLKINVX1 U2725 ( .A(n233), .Y(n2937) );
  OAI21X1 U2726 ( .A0(n319), .A1(n320), .B0(n321), .Y(n232) );
  AOI211X1 U2727 ( .A0(n233), .A1(n322), .B0(n323), .C0(n2933), .Y(n320) );
  NOR4BXL U2728 ( .AN(N852), .B(n332), .C(n2931), .D(n2932), .Y(n319) );
  NAND4BX1 U2729 ( .AN(n325), .B(n326), .C(n327), .D(n328), .Y(n322) );
  NAND4BX1 U2730 ( .AN(N702), .B(N704), .C(n334), .D(n335), .Y(n233) );
  NOR2X1 U2731 ( .A(N705), .B(N703), .Y(n334) );
  NOR4X1 U2732 ( .A(N709), .B(N708), .C(N707), .D(N706), .Y(n335) );
  CLKBUFX3 U2733 ( .A(n2750), .Y(n2784) );
  AND2X2 U2734 ( .A(n2595), .B(n2600), .Y(n2750) );
  CLKBUFX3 U2735 ( .A(n2755), .Y(n2788) );
  AND2X2 U2736 ( .A(n2601), .B(n2600), .Y(n2755) );
  CLKBUFX3 U2737 ( .A(n2745), .Y(n2780) );
  AND2X2 U2738 ( .A(n2593), .B(n2600), .Y(n2745) );
  CLKBUFX3 U2739 ( .A(n2751), .Y(n2783) );
  AND2X2 U2740 ( .A(n2595), .B(n2599), .Y(n2751) );
  CLKBUFX3 U2741 ( .A(n2740), .Y(n2776) );
  AND2X2 U2742 ( .A(n2600), .B(n2591), .Y(n2740) );
  CLKBUFX3 U2743 ( .A(n2756), .Y(n2787) );
  AND2X2 U2744 ( .A(n2601), .B(n2599), .Y(n2756) );
  CLKBUFX3 U2745 ( .A(n2746), .Y(n2779) );
  AND2X2 U2746 ( .A(n2593), .B(n2599), .Y(n2746) );
  CLKBUFX3 U2747 ( .A(n2753), .Y(n2782) );
  AND2X2 U2748 ( .A(n2595), .B(n2598), .Y(n2753) );
  CLKBUFX3 U2749 ( .A(n2758), .Y(n2786) );
  AND2X2 U2750 ( .A(n2601), .B(n2598), .Y(n2758) );
  CLKBUFX3 U2751 ( .A(n2748), .Y(n2778) );
  AND2X2 U2752 ( .A(n2593), .B(n2598), .Y(n2748) );
  CLKBUFX3 U2753 ( .A(n2754), .Y(n2781) );
  AND2X2 U2754 ( .A(n2595), .B(n2597), .Y(n2754) );
  CLKBUFX3 U2755 ( .A(n2759), .Y(n2785) );
  AND2X2 U2756 ( .A(n2601), .B(n2597), .Y(n2759) );
  CLKBUFX3 U2757 ( .A(n2749), .Y(n2777) );
  AND2X2 U2758 ( .A(n2593), .B(n2597), .Y(n2749) );
  CLKBUFX3 U2759 ( .A(n2744), .Y(n2773) );
  AND2X2 U2760 ( .A(n2597), .B(n2591), .Y(n2744) );
  XNOR2XL U2761 ( .A(N709), .B(N856), .Y(n340) );
  NAND4XL U2762 ( .A(n321), .B(n324), .C(N855), .D(N853), .Y(n338) );
  NAND4X1 U2763 ( .A(n343), .B(n344), .C(n345), .D(n346), .Y(n336) );
  NAND4X1 U2764 ( .A(n339), .B(n340), .C(n341), .D(n342), .Y(n337) );
  XNOR2X1 U2765 ( .A(N707), .B(N854), .Y(n342) );
  CLKINVX1 U2766 ( .A(n2881), .Y(n2772) );
  XOR2X1 U2767 ( .A(N706), .B(n2932), .Y(n341) );
  XOR2X1 U2768 ( .A(N708), .B(n2931), .Y(n339) );
  XNOR2XL U2769 ( .A(N705), .B(N852), .Y(n344) );
  XNOR2XL U2770 ( .A(N703), .B(N850), .Y(n346) );
  XNOR2XL U2771 ( .A(N702), .B(N849), .Y(n345) );
  XOR2X1 U2772 ( .A(N704), .B(n2934), .Y(n343) );
  CLKBUFX3 U2773 ( .A(n2828), .Y(n2838) );
  NOR2X1 U2774 ( .A(n2836), .B(n2835), .Y(n2828) );
  NOR3BXL U2775 ( .AN(N854), .B(N849), .C(N856), .Y(n321) );
  NOR3X1 U2776 ( .A(N850), .B(N852), .C(n2934), .Y(n324) );
  INVX1 U2777 ( .A(N853), .Y(n2932) );
  NAND3XL U2778 ( .A(n324), .B(N855), .C(n347), .Y(n318) );
  NOR3XL U2779 ( .A(n2932), .B(N856), .C(N849), .Y(n347) );
  XOR2X1 U2780 ( .A(n2771), .B(n2955), .Y(n325) );
  NAND4X1 U2781 ( .A(n2947), .B(n2960), .C(n2961), .D(n2936), .Y(n288) );
  NOR4X1 U2782 ( .A(n280), .B(n281), .C(n282), .D(n283), .Y(n279) );
  NOR4X1 U2783 ( .A(n304), .B(n305), .C(n306), .D(n307), .Y(n280) );
  NOR4X1 U2784 ( .A(n300), .B(n301), .C(n302), .D(n303), .Y(n281) );
  NOR4X1 U2785 ( .A(n296), .B(n297), .C(n298), .D(n299), .Y(n282) );
  CLKINVX1 U2786 ( .A(n291), .Y(n2949) );
  CLKINVX1 U2787 ( .A(n292), .Y(n2945) );
  CLKINVX1 U2788 ( .A(n289), .Y(n2948) );
  CLKINVX1 U2789 ( .A(n293), .Y(n2944) );
  CLKINVX1 U2790 ( .A(n290), .Y(n2946) );
  CLKINVX1 U2791 ( .A(n295), .Y(n2950) );
  CLKINVX1 U2792 ( .A(n294), .Y(n2951) );
  NAND3X1 U2793 ( .A(n2955), .B(n2956), .C(n2954), .Y(n181) );
  NAND2X1 U2794 ( .A(n179), .B(n2953), .Y(n162) );
  NAND2X1 U2795 ( .A(n2883), .B(n2942), .Y(n253) );
  XOR2X1 U2796 ( .A(n2962), .B(n317), .Y(n269) );
  NOR2X1 U2797 ( .A(n2835), .B(n247), .Y(n317) );
  CLKINVX1 U2798 ( .A(n230), .Y(n2917) );
  AOI222XL U2799 ( .A0(match_index[0]), .A1(n224), .B0(n225), .B1(n2881), .C0(
        n2772), .C1(n226), .Y(n230) );
  CLKINVX1 U2800 ( .A(n229), .Y(n2918) );
  AOI222XL U2801 ( .A0(match_index[1]), .A1(n224), .B0(n225), .B1(
        Judge_String_count[1]), .C0(N899), .C1(n226), .Y(n229) );
  CLKINVX1 U2802 ( .A(n228), .Y(n2919) );
  AOI222XL U2803 ( .A0(match_index[2]), .A1(n224), .B0(n225), .B1(
        Judge_String_count[2]), .C0(N900), .C1(n226), .Y(n228) );
  CLKINVX1 U2804 ( .A(n227), .Y(n2920) );
  AOI222XL U2805 ( .A0(match_index[3]), .A1(n224), .B0(n225), .B1(
        Judge_String_count[3]), .C0(N901), .C1(n226), .Y(n227) );
  CLKINVX1 U2806 ( .A(n223), .Y(n2921) );
  AOI222XL U2807 ( .A0(match_index[4]), .A1(n224), .B0(n225), .B1(
        Judge_String_count[4]), .C0(N902), .C1(n226), .Y(n223) );
  CLKBUFX3 U2808 ( .A(N710), .Y(n2840) );
  OAI211X1 U2809 ( .A0(finishGetData), .A1(n2938), .B0(n352), .C0(n353), .Y(
        N710) );
  OAI21XL U2810 ( .A0(finishJudge), .A1(n2940), .B0(n2938), .Y(n352) );
  NOR2XL U2811 ( .A(n2900), .B(valid), .Y(n353) );
  CLKINVX1 U2812 ( .A(reset), .Y(n2906) );
  CLKINVX1 U2813 ( .A(state[0]), .Y(n2938) );
  AOI32X1 U2814 ( .A0(state[0]), .A1(n2940), .A2(finishGetData), .B0(n2938), 
        .B1(state[1]), .Y(n349) );
  NAND3BX1 U2815 ( .AN(N711), .B(ispattern), .C(n2928), .Y(n263) );
  NAND2X1 U2816 ( .A(n2925), .B(Pattern_count[2]), .Y(n257) );
  OAI22XL U2817 ( .A0(n2914), .A1(n2884), .B0(n2842), .B1(n119), .Y(n711) );
  OAI22XL U2818 ( .A0(n2914), .A1(n2886), .B0(n2842), .B1(n112), .Y(n710) );
  OAI22XL U2819 ( .A0(n2914), .A1(n2888), .B0(n2842), .B1(n113), .Y(n709) );
  OAI22XL U2820 ( .A0(n2914), .A1(n2890), .B0(n114), .B1(n2842), .Y(n708) );
  OAI22XL U2821 ( .A0(n2914), .A1(n2892), .B0(n2842), .B1(n115), .Y(n707) );
  OAI22XL U2822 ( .A0(n2914), .A1(n2894), .B0(n116), .B1(n2842), .Y(n706) );
  OAI22XL U2823 ( .A0(n2914), .A1(n2896), .B0(n117), .B1(n2842), .Y(n705) );
  OAI22XL U2824 ( .A0(n2914), .A1(n2898), .B0(n118), .B1(n2842), .Y(n704) );
  OAI22XL U2825 ( .A0(n2912), .A1(n2884), .B0(n2844), .B1(n103), .Y(n695) );
  OAI22XL U2826 ( .A0(n2912), .A1(n2886), .B0(n2844), .B1(n96), .Y(n694) );
  OAI22XL U2827 ( .A0(n2912), .A1(n2888), .B0(n2844), .B1(n97), .Y(n693) );
  OAI22XL U2828 ( .A0(n2912), .A1(n2890), .B0(n98), .B1(n2844), .Y(n692) );
  OAI22XL U2829 ( .A0(n2912), .A1(n2892), .B0(n2844), .B1(n99), .Y(n691) );
  OAI22XL U2830 ( .A0(n2912), .A1(n2894), .B0(n100), .B1(n2844), .Y(n690) );
  OAI22XL U2831 ( .A0(n2912), .A1(n2896), .B0(n101), .B1(n2844), .Y(n689) );
  OAI22XL U2832 ( .A0(n2912), .A1(n2898), .B0(n102), .B1(n2844), .Y(n688) );
  OAI22XL U2833 ( .A0(n2913), .A1(n2884), .B0(n2843), .B1(n111), .Y(n703) );
  OAI22XL U2834 ( .A0(n2913), .A1(n2886), .B0(n2843), .B1(n104), .Y(n702) );
  OAI22XL U2835 ( .A0(n2913), .A1(n2888), .B0(n2843), .B1(n105), .Y(n701) );
  OAI22XL U2836 ( .A0(n2913), .A1(n2890), .B0(n106), .B1(n2843), .Y(n700) );
  OAI22XL U2837 ( .A0(n2913), .A1(n2892), .B0(n2843), .B1(n107), .Y(n699) );
  OAI22XL U2838 ( .A0(n2913), .A1(n2894), .B0(n108), .B1(n2843), .Y(n698) );
  OAI22XL U2839 ( .A0(n2913), .A1(n2896), .B0(n109), .B1(n2843), .Y(n697) );
  OAI22XL U2840 ( .A0(n2913), .A1(n2898), .B0(n110), .B1(n2843), .Y(n696) );
  OAI22XL U2841 ( .A0(n2911), .A1(n2884), .B0(n2845), .B1(n95), .Y(n687) );
  OAI22XL U2842 ( .A0(n2911), .A1(n2886), .B0(n2845), .B1(n88), .Y(n686) );
  OAI22XL U2843 ( .A0(n2911), .A1(n2888), .B0(n2845), .B1(n89), .Y(n685) );
  OAI22XL U2844 ( .A0(n2911), .A1(n2890), .B0(n90), .B1(n2845), .Y(n684) );
  OAI22XL U2845 ( .A0(n2911), .A1(n2892), .B0(n2845), .B1(n91), .Y(n683) );
  OAI22XL U2846 ( .A0(n2911), .A1(n2894), .B0(n92), .B1(n2845), .Y(n682) );
  OAI22XL U2847 ( .A0(n2911), .A1(n2896), .B0(n93), .B1(n2845), .Y(n681) );
  OAI22XL U2848 ( .A0(n2911), .A1(n2899), .B0(n94), .B1(n2845), .Y(n680) );
  OAI22XL U2849 ( .A0(n2908), .A1(n2885), .B0(n250), .B1(n71), .Y(n663) );
  OAI22XL U2850 ( .A0(n2908), .A1(n2887), .B0(n250), .B1(n64), .Y(n662) );
  OAI22XL U2851 ( .A0(n2908), .A1(n2889), .B0(n250), .B1(n65), .Y(n661) );
  OAI22XL U2852 ( .A0(n2908), .A1(n2891), .B0(n66), .B1(n250), .Y(n660) );
  OAI22XL U2853 ( .A0(n2908), .A1(n2893), .B0(n250), .B1(n67), .Y(n659) );
  OAI22XL U2854 ( .A0(n2908), .A1(n2895), .B0(n68), .B1(n250), .Y(n658) );
  OAI22XL U2855 ( .A0(n2908), .A1(n2897), .B0(n69), .B1(n250), .Y(n657) );
  OAI22XL U2856 ( .A0(n2908), .A1(n2899), .B0(n70), .B1(n250), .Y(n656) );
  OAI2BB1X1 U2857 ( .A0N(Pattern_count[3]), .A1N(n264), .B0(n265), .Y(n720) );
  NAND4X1 U2858 ( .A(n266), .B(n2883), .C(Pattern_count[2]), .D(n2943), .Y(
        n265) );
  OAI21XL U2859 ( .A0(Pattern_count[2]), .A1(n220), .B0(n267), .Y(n264) );
  OAI22XL U2860 ( .A0(n2947), .A1(n245), .B0(Judge_Pattern_count[0]), .B1(n246), .Y(n647) );
  OAI22XL U2861 ( .A0(n2910), .A1(n2885), .B0(n2846), .B1(n87), .Y(n679) );
  OAI22XL U2862 ( .A0(n2910), .A1(n2887), .B0(n2846), .B1(n80), .Y(n678) );
  OAI22XL U2863 ( .A0(n2910), .A1(n2889), .B0(n2846), .B1(n81), .Y(n677) );
  OAI22XL U2864 ( .A0(n2910), .A1(n2891), .B0(n82), .B1(n2846), .Y(n676) );
  OAI22XL U2865 ( .A0(n2910), .A1(n2893), .B0(n2846), .B1(n83), .Y(n675) );
  OAI22XL U2866 ( .A0(n2910), .A1(n2895), .B0(n84), .B1(n2846), .Y(n674) );
  OAI22XL U2867 ( .A0(n2910), .A1(n2897), .B0(n85), .B1(n2846), .Y(n673) );
  OAI22XL U2868 ( .A0(n2910), .A1(n2899), .B0(n86), .B1(n2846), .Y(n672) );
  OAI22XL U2869 ( .A0(n2909), .A1(n2885), .B0(n2847), .B1(n79), .Y(n671) );
  OAI22XL U2870 ( .A0(n2909), .A1(n2887), .B0(n2847), .B1(n72), .Y(n670) );
  OAI22XL U2871 ( .A0(n2909), .A1(n2889), .B0(n2847), .B1(n73), .Y(n669) );
  OAI22XL U2872 ( .A0(n2909), .A1(n2891), .B0(n74), .B1(n2847), .Y(n668) );
  OAI22XL U2873 ( .A0(n2909), .A1(n2893), .B0(n2847), .B1(n75), .Y(n667) );
  OAI22XL U2874 ( .A0(n2909), .A1(n2895), .B0(n76), .B1(n2847), .Y(n666) );
  OAI22XL U2875 ( .A0(n2909), .A1(n2897), .B0(n77), .B1(n2847), .Y(n665) );
  OAI22XL U2876 ( .A0(n2909), .A1(n2899), .B0(n78), .B1(n2847), .Y(n664) );
  AO22X1 U2877 ( .A0(n239), .A1(Judge_String_count[5]), .B0(N878), .B1(n240), 
        .Y(n725) );
  AO22X1 U2878 ( .A0(n239), .A1(Judge_String_count[3]), .B0(N876), .B1(n240), 
        .Y(n640) );
  AO22X1 U2879 ( .A0(n239), .A1(Judge_String_count[2]), .B0(N875), .B1(n240), 
        .Y(n639) );
  AO22X1 U2880 ( .A0(n239), .A1(Judge_String_count[1]), .B0(N874), .B1(n240), 
        .Y(n638) );
  AO22X1 U2881 ( .A0(n239), .A1(Judge_String_count[4]), .B0(N877), .B1(n240), 
        .Y(n641) );
  AO22X1 U2882 ( .A0(n239), .A1(n2881), .B0(n2772), .B1(n240), .Y(n644) );
  OAI21XL U2883 ( .A0(n211), .A1(n2956), .B0(n217), .Y(n634) );
  AOI22X1 U2884 ( .A0(n213), .A1(String_count_Record[2]), .B0(N761), .B1(n214), 
        .Y(n217) );
  OAI21XL U2885 ( .A0(n211), .A1(n2955), .B0(n218), .Y(n635) );
  AOI22X1 U2886 ( .A0(n213), .A1(String_count_Record[1]), .B0(N760), .B1(n214), 
        .Y(n218) );
  OAI21XL U2887 ( .A0(n211), .A1(n2954), .B0(n219), .Y(n636) );
  AOI22X1 U2888 ( .A0(n213), .A1(String_count_Record[0]), .B0(n2954), .B1(n214), .Y(n219) );
  OAI21XL U2889 ( .A0(n211), .A1(n2952), .B0(n212), .Y(n631) );
  AOI22X1 U2890 ( .A0(String_count_Record[5]), .A1(n213), .B0(N764), .B1(n214), 
        .Y(n212) );
  OAI21XL U2891 ( .A0(n211), .A1(n2958), .B0(n215), .Y(n632) );
  AOI22X1 U2892 ( .A0(n213), .A1(String_count_Record[4]), .B0(N763), .B1(n214), 
        .Y(n215) );
  OAI21XL U2893 ( .A0(n211), .A1(n2957), .B0(n216), .Y(n633) );
  AOI22X1 U2894 ( .A0(n213), .A1(String_count_Record[3]), .B0(N762), .B1(n214), 
        .Y(n216) );
  OAI21XL U2895 ( .A0(n2840), .A1(n149), .B0(n150), .Y(n361) );
  OAI2BB1XL U2896 ( .A0N(n151), .A1N(n152), .B0(match), .Y(n150) );
  OAI22XL U2897 ( .A0(n2924), .A1(n2885), .B0(n2848), .B1(n63), .Y(n655) );
  OAI22XL U2898 ( .A0(n2924), .A1(n2887), .B0(n2848), .B1(n52), .Y(n654) );
  OAI22XL U2899 ( .A0(n2924), .A1(n2889), .B0(n2848), .B1(n54), .Y(n653) );
  OAI22XL U2900 ( .A0(n2924), .A1(n2891), .B0(n56), .B1(n2848), .Y(n652) );
  OAI22XL U2901 ( .A0(n2924), .A1(n2893), .B0(n2848), .B1(n57), .Y(n651) );
  OAI22XL U2902 ( .A0(n2924), .A1(n2895), .B0(n59), .B1(n2848), .Y(n650) );
  OAI22XL U2903 ( .A0(n2924), .A1(n2897), .B0(n60), .B1(n2848), .Y(n649) );
  OAI22XL U2904 ( .A0(n2924), .A1(n2899), .B0(n62), .B1(n2848), .Y(n648) );
  CLKINVX1 U2905 ( .A(isstring), .Y(n2928) );
  NAND4X2 U2906 ( .A(String_count[4]), .B(String_count[3]), .C(n178), .D(n2952), .Y(n200) );
  OAI2BB2XL U2907 ( .B0(n2849), .B1(n2885), .A0N(\String[31][0] ), .A1N(n2849), 
        .Y(n617) );
  OAI2BB2XL U2908 ( .B0(n2849), .B1(n2887), .A0N(\String[31][7] ), .A1N(n2849), 
        .Y(n616) );
  OAI2BB2XL U2909 ( .B0(n2849), .B1(n2889), .A0N(\String[31][6] ), .A1N(n2849), 
        .Y(n615) );
  OAI2BB2XL U2910 ( .B0(n2849), .B1(n2891), .A0N(\String[31][5] ), .A1N(n2849), 
        .Y(n614) );
  OAI2BB2XL U2911 ( .B0(n2849), .B1(n2893), .A0N(\String[31][4] ), .A1N(n2849), 
        .Y(n613) );
  OAI2BB2XL U2912 ( .B0(n2849), .B1(n2895), .A0N(\String[31][3] ), .A1N(n2849), 
        .Y(n612) );
  OAI2BB2XL U2913 ( .B0(n2849), .B1(n2897), .A0N(\String[31][2] ), .A1N(n2849), 
        .Y(n611) );
  OAI2BB2XL U2914 ( .B0(n2849), .B1(n2899), .A0N(\String[31][1] ), .A1N(n2849), 
        .Y(n610) );
  OAI2BB2XL U2915 ( .B0(n2851), .B1(n2885), .A0N(\String[29][0] ), .A1N(n2851), 
        .Y(n601) );
  OAI2BB2XL U2916 ( .B0(n2851), .B1(n2887), .A0N(\String[29][7] ), .A1N(n2851), 
        .Y(n600) );
  OAI2BB2XL U2917 ( .B0(n2851), .B1(n2889), .A0N(\String[29][6] ), .A1N(n2851), 
        .Y(n599) );
  OAI2BB2XL U2918 ( .B0(n2851), .B1(n2891), .A0N(\String[29][5] ), .A1N(n2851), 
        .Y(n598) );
  OAI2BB2XL U2919 ( .B0(n2851), .B1(n2893), .A0N(\String[29][4] ), .A1N(n2851), 
        .Y(n597) );
  OAI2BB2XL U2920 ( .B0(n2851), .B1(n2895), .A0N(\String[29][3] ), .A1N(n2851), 
        .Y(n596) );
  OAI2BB2XL U2921 ( .B0(n2851), .B1(n2897), .A0N(\String[29][2] ), .A1N(n2851), 
        .Y(n595) );
  OAI2BB2XL U2922 ( .B0(n2851), .B1(n2899), .A0N(\String[29][1] ), .A1N(n2851), 
        .Y(n594) );
  OAI2BB2XL U2923 ( .B0(n2853), .B1(n2885), .A0N(\String[27][0] ), .A1N(n2853), 
        .Y(n585) );
  OAI2BB2XL U2924 ( .B0(n2853), .B1(n2887), .A0N(\String[27][7] ), .A1N(n2853), 
        .Y(n584) );
  OAI2BB2XL U2925 ( .B0(n2853), .B1(n2889), .A0N(\String[27][6] ), .A1N(n2853), 
        .Y(n583) );
  OAI2BB2XL U2926 ( .B0(n2853), .B1(n2891), .A0N(\String[27][5] ), .A1N(n2853), 
        .Y(n582) );
  OAI2BB2XL U2927 ( .B0(n2853), .B1(n2893), .A0N(\String[27][4] ), .A1N(n2853), 
        .Y(n581) );
  OAI2BB2XL U2928 ( .B0(n2853), .B1(n2895), .A0N(\String[27][3] ), .A1N(n2853), 
        .Y(n580) );
  OAI2BB2XL U2929 ( .B0(n2853), .B1(n2897), .A0N(\String[27][2] ), .A1N(n2853), 
        .Y(n579) );
  OAI2BB2XL U2930 ( .B0(n2853), .B1(n2899), .A0N(\String[27][1] ), .A1N(n2853), 
        .Y(n578) );
  OAI2BB2XL U2931 ( .B0(n2855), .B1(n2885), .A0N(\String[25][0] ), .A1N(n2855), 
        .Y(n569) );
  OAI2BB2XL U2932 ( .B0(n2855), .B1(n2887), .A0N(\String[25][7] ), .A1N(n2855), 
        .Y(n568) );
  OAI2BB2XL U2933 ( .B0(n2855), .B1(n2889), .A0N(\String[25][6] ), .A1N(n2855), 
        .Y(n567) );
  OAI2BB2XL U2934 ( .B0(n2855), .B1(n2891), .A0N(\String[25][5] ), .A1N(n2855), 
        .Y(n566) );
  OAI2BB2XL U2935 ( .B0(n2855), .B1(n2893), .A0N(\String[25][4] ), .A1N(n2855), 
        .Y(n565) );
  OAI2BB2XL U2936 ( .B0(n2855), .B1(n2895), .A0N(\String[25][3] ), .A1N(n2855), 
        .Y(n564) );
  OAI2BB2XL U2937 ( .B0(n2855), .B1(n2897), .A0N(\String[25][2] ), .A1N(n2855), 
        .Y(n563) );
  OAI2BB2XL U2938 ( .B0(n2855), .B1(n2899), .A0N(\String[25][1] ), .A1N(n2855), 
        .Y(n562) );
  OAI2BB2XL U2939 ( .B0(n2856), .B1(n2885), .A0N(\String[24][0] ), .A1N(n2856), 
        .Y(n561) );
  OAI2BB2XL U2940 ( .B0(n2856), .B1(n2887), .A0N(\String[24][7] ), .A1N(n2856), 
        .Y(n560) );
  OAI2BB2XL U2941 ( .B0(n2856), .B1(n2889), .A0N(\String[24][6] ), .A1N(n2856), 
        .Y(n559) );
  OAI2BB2XL U2942 ( .B0(n2856), .B1(n2891), .A0N(\String[24][5] ), .A1N(n2856), 
        .Y(n558) );
  OAI2BB2XL U2943 ( .B0(n2856), .B1(n2893), .A0N(\String[24][4] ), .A1N(n2856), 
        .Y(n557) );
  OAI2BB2XL U2944 ( .B0(n2856), .B1(n2895), .A0N(\String[24][3] ), .A1N(n2856), 
        .Y(n556) );
  OAI2BB2XL U2945 ( .B0(n2856), .B1(n2897), .A0N(\String[24][2] ), .A1N(n2856), 
        .Y(n555) );
  OAI2BB2XL U2946 ( .B0(n2856), .B1(n2899), .A0N(\String[24][1] ), .A1N(n2856), 
        .Y(n554) );
  OAI2BB2XL U2947 ( .B0(n2850), .B1(n2885), .A0N(\String[30][0] ), .A1N(n2850), 
        .Y(n609) );
  OAI2BB2XL U2948 ( .B0(n2850), .B1(n2887), .A0N(\String[30][7] ), .A1N(n2850), 
        .Y(n608) );
  OAI2BB2XL U2949 ( .B0(n2850), .B1(n2889), .A0N(\String[30][6] ), .A1N(n2850), 
        .Y(n607) );
  OAI2BB2XL U2950 ( .B0(n2850), .B1(n2891), .A0N(\String[30][5] ), .A1N(n2850), 
        .Y(n606) );
  OAI2BB2XL U2951 ( .B0(n2850), .B1(n2893), .A0N(\String[30][4] ), .A1N(n2850), 
        .Y(n605) );
  OAI2BB2XL U2952 ( .B0(n2850), .B1(n2895), .A0N(\String[30][3] ), .A1N(n2850), 
        .Y(n604) );
  OAI2BB2XL U2953 ( .B0(n2850), .B1(n2897), .A0N(\String[30][2] ), .A1N(n2850), 
        .Y(n603) );
  OAI2BB2XL U2954 ( .B0(n2850), .B1(n2899), .A0N(\String[30][1] ), .A1N(n2850), 
        .Y(n602) );
  OAI2BB2XL U2955 ( .B0(n2852), .B1(n2885), .A0N(\String[28][0] ), .A1N(n2852), 
        .Y(n593) );
  OAI2BB2XL U2956 ( .B0(n2852), .B1(n2887), .A0N(\String[28][7] ), .A1N(n2852), 
        .Y(n592) );
  OAI2BB2XL U2957 ( .B0(n2852), .B1(n2889), .A0N(\String[28][6] ), .A1N(n2852), 
        .Y(n591) );
  OAI2BB2XL U2958 ( .B0(n2852), .B1(n2891), .A0N(\String[28][5] ), .A1N(n2852), 
        .Y(n590) );
  OAI2BB2XL U2959 ( .B0(n2852), .B1(n2893), .A0N(\String[28][4] ), .A1N(n2852), 
        .Y(n589) );
  OAI2BB2XL U2960 ( .B0(n2852), .B1(n2895), .A0N(\String[28][3] ), .A1N(n2852), 
        .Y(n588) );
  OAI2BB2XL U2961 ( .B0(n2852), .B1(n2897), .A0N(\String[28][2] ), .A1N(n2852), 
        .Y(n587) );
  OAI2BB2XL U2962 ( .B0(n2852), .B1(n2899), .A0N(\String[28][1] ), .A1N(n2852), 
        .Y(n586) );
  OAI2BB2XL U2963 ( .B0(n2854), .B1(n2885), .A0N(\String[26][0] ), .A1N(n2854), 
        .Y(n577) );
  OAI2BB2XL U2964 ( .B0(n2854), .B1(n2887), .A0N(\String[26][7] ), .A1N(n2854), 
        .Y(n576) );
  OAI2BB2XL U2965 ( .B0(n2854), .B1(n2889), .A0N(\String[26][6] ), .A1N(n2854), 
        .Y(n575) );
  OAI2BB2XL U2966 ( .B0(n2854), .B1(n2891), .A0N(\String[26][5] ), .A1N(n2854), 
        .Y(n574) );
  OAI2BB2XL U2967 ( .B0(n2854), .B1(n2893), .A0N(\String[26][4] ), .A1N(n2854), 
        .Y(n573) );
  OAI2BB2XL U2968 ( .B0(n2854), .B1(n2895), .A0N(\String[26][3] ), .A1N(n2854), 
        .Y(n572) );
  OAI2BB2XL U2969 ( .B0(n2854), .B1(n2897), .A0N(\String[26][2] ), .A1N(n2854), 
        .Y(n571) );
  OAI2BB2XL U2970 ( .B0(n2854), .B1(n2899), .A0N(\String[26][1] ), .A1N(n2854), 
        .Y(n570) );
  NAND4X2 U2971 ( .A(String_count[4]), .B(n178), .C(n2957), .D(n2952), .Y(n191) );
  NAND4X2 U2972 ( .A(String_count[3]), .B(n178), .C(n2958), .D(n2952), .Y(n182) );
  OAI2BB2XL U2973 ( .B0(n2857), .B1(n2884), .A0N(\String[23][0] ), .A1N(n2857), 
        .Y(n553) );
  OAI2BB2XL U2974 ( .B0(n2857), .B1(n2886), .A0N(\String[23][7] ), .A1N(n2857), 
        .Y(n552) );
  OAI2BB2XL U2975 ( .B0(n2857), .B1(n2888), .A0N(\String[23][6] ), .A1N(n2857), 
        .Y(n551) );
  OAI2BB2XL U2976 ( .B0(n2857), .B1(n2890), .A0N(\String[23][5] ), .A1N(n2857), 
        .Y(n550) );
  OAI2BB2XL U2977 ( .B0(n2857), .B1(n2892), .A0N(\String[23][4] ), .A1N(n2857), 
        .Y(n549) );
  OAI2BB2XL U2978 ( .B0(n2857), .B1(n2894), .A0N(\String[23][3] ), .A1N(n2857), 
        .Y(n548) );
  OAI2BB2XL U2979 ( .B0(n2857), .B1(n2896), .A0N(\String[23][2] ), .A1N(n2857), 
        .Y(n547) );
  OAI2BB2XL U2980 ( .B0(n2857), .B1(n2898), .A0N(\String[23][1] ), .A1N(n2857), 
        .Y(n546) );
  OAI2BB2XL U2981 ( .B0(n2865), .B1(n2884), .A0N(\String[15][0] ), .A1N(n2865), 
        .Y(n489) );
  OAI2BB2XL U2982 ( .B0(n2865), .B1(n2886), .A0N(\String[15][7] ), .A1N(n2865), 
        .Y(n488) );
  OAI2BB2XL U2983 ( .B0(n2865), .B1(n2888), .A0N(\String[15][6] ), .A1N(n2865), 
        .Y(n487) );
  OAI2BB2XL U2984 ( .B0(n2865), .B1(n2890), .A0N(\String[15][5] ), .A1N(n2865), 
        .Y(n486) );
  OAI2BB2XL U2985 ( .B0(n2865), .B1(n2892), .A0N(\String[15][4] ), .A1N(n2865), 
        .Y(n485) );
  OAI2BB2XL U2986 ( .B0(n2865), .B1(n2894), .A0N(\String[15][3] ), .A1N(n2865), 
        .Y(n484) );
  OAI2BB2XL U2987 ( .B0(n2865), .B1(n2896), .A0N(\String[15][2] ), .A1N(n2865), 
        .Y(n483) );
  OAI2BB2XL U2988 ( .B0(n2865), .B1(n2898), .A0N(\String[15][1] ), .A1N(n2865), 
        .Y(n482) );
  OAI2BB2XL U2989 ( .B0(n2859), .B1(n2884), .A0N(\String[21][0] ), .A1N(n2859), 
        .Y(n537) );
  OAI2BB2XL U2990 ( .B0(n2859), .B1(n2886), .A0N(\String[21][7] ), .A1N(n2859), 
        .Y(n536) );
  OAI2BB2XL U2991 ( .B0(n2859), .B1(n2888), .A0N(\String[21][6] ), .A1N(n2859), 
        .Y(n535) );
  OAI2BB2XL U2992 ( .B0(n2859), .B1(n2890), .A0N(\String[21][5] ), .A1N(n2859), 
        .Y(n534) );
  OAI2BB2XL U2993 ( .B0(n2859), .B1(n2892), .A0N(\String[21][4] ), .A1N(n2859), 
        .Y(n533) );
  OAI2BB2XL U2994 ( .B0(n2859), .B1(n2894), .A0N(\String[21][3] ), .A1N(n2859), 
        .Y(n532) );
  OAI2BB2XL U2995 ( .B0(n2859), .B1(n2896), .A0N(\String[21][2] ), .A1N(n2859), 
        .Y(n531) );
  OAI2BB2XL U2996 ( .B0(n2859), .B1(n2898), .A0N(\String[21][1] ), .A1N(n2859), 
        .Y(n530) );
  OAI2BB2XL U2997 ( .B0(n2867), .B1(n2884), .A0N(\String[13][0] ), .A1N(n2867), 
        .Y(n473) );
  OAI2BB2XL U2998 ( .B0(n2867), .B1(n2886), .A0N(\String[13][7] ), .A1N(n2867), 
        .Y(n472) );
  OAI2BB2XL U2999 ( .B0(n2867), .B1(n2888), .A0N(\String[13][6] ), .A1N(n2867), 
        .Y(n471) );
  OAI2BB2XL U3000 ( .B0(n2867), .B1(n2890), .A0N(\String[13][5] ), .A1N(n2867), 
        .Y(n470) );
  OAI2BB2XL U3001 ( .B0(n2867), .B1(n2892), .A0N(\String[13][4] ), .A1N(n2867), 
        .Y(n469) );
  OAI2BB2XL U3002 ( .B0(n2867), .B1(n2894), .A0N(\String[13][3] ), .A1N(n2867), 
        .Y(n468) );
  OAI2BB2XL U3003 ( .B0(n2867), .B1(n2896), .A0N(\String[13][2] ), .A1N(n2867), 
        .Y(n467) );
  OAI2BB2XL U3004 ( .B0(n2867), .B1(n2898), .A0N(\String[13][1] ), .A1N(n2867), 
        .Y(n466) );
  OAI2BB2XL U3005 ( .B0(n2861), .B1(n2884), .A0N(\String[19][0] ), .A1N(n2861), 
        .Y(n521) );
  OAI2BB2XL U3006 ( .B0(n2861), .B1(n2886), .A0N(\String[19][7] ), .A1N(n2861), 
        .Y(n520) );
  OAI2BB2XL U3007 ( .B0(n2861), .B1(n2888), .A0N(\String[19][6] ), .A1N(n2861), 
        .Y(n519) );
  OAI2BB2XL U3008 ( .B0(n2861), .B1(n2890), .A0N(\String[19][5] ), .A1N(n2861), 
        .Y(n518) );
  OAI2BB2XL U3009 ( .B0(n2861), .B1(n2892), .A0N(\String[19][4] ), .A1N(n2861), 
        .Y(n517) );
  OAI2BB2XL U3010 ( .B0(n2861), .B1(n2894), .A0N(\String[19][3] ), .A1N(n2861), 
        .Y(n516) );
  OAI2BB2XL U3011 ( .B0(n2861), .B1(n2896), .A0N(\String[19][2] ), .A1N(n2861), 
        .Y(n515) );
  OAI2BB2XL U3012 ( .B0(n2861), .B1(n2898), .A0N(\String[19][1] ), .A1N(n2861), 
        .Y(n514) );
  OAI2BB2XL U3013 ( .B0(n2869), .B1(n2885), .A0N(\String[11][0] ), .A1N(n2869), 
        .Y(n457) );
  OAI2BB2XL U3014 ( .B0(n2869), .B1(n2887), .A0N(\String[11][7] ), .A1N(n2869), 
        .Y(n456) );
  OAI2BB2XL U3015 ( .B0(n2869), .B1(n2889), .A0N(\String[11][6] ), .A1N(n2869), 
        .Y(n455) );
  OAI2BB2XL U3016 ( .B0(n2869), .B1(n2891), .A0N(\String[11][5] ), .A1N(n2869), 
        .Y(n454) );
  OAI2BB2XL U3017 ( .B0(n2869), .B1(n2893), .A0N(\String[11][4] ), .A1N(n2869), 
        .Y(n453) );
  OAI2BB2XL U3018 ( .B0(n2869), .B1(n2895), .A0N(\String[11][3] ), .A1N(n2869), 
        .Y(n452) );
  OAI2BB2XL U3019 ( .B0(n2869), .B1(n2897), .A0N(\String[11][2] ), .A1N(n2869), 
        .Y(n451) );
  OAI2BB2XL U3020 ( .B0(n2869), .B1(n2899), .A0N(\String[11][1] ), .A1N(n2869), 
        .Y(n450) );
  OAI2BB2XL U3021 ( .B0(n2863), .B1(n2884), .A0N(\String[17][0] ), .A1N(n2863), 
        .Y(n505) );
  OAI2BB2XL U3022 ( .B0(n2863), .B1(n2886), .A0N(\String[17][7] ), .A1N(n2863), 
        .Y(n504) );
  OAI2BB2XL U3023 ( .B0(n2863), .B1(n2888), .A0N(\String[17][6] ), .A1N(n2863), 
        .Y(n503) );
  OAI2BB2XL U3024 ( .B0(n2863), .B1(n2890), .A0N(\String[17][5] ), .A1N(n2863), 
        .Y(n502) );
  OAI2BB2XL U3025 ( .B0(n2863), .B1(n2892), .A0N(\String[17][4] ), .A1N(n2863), 
        .Y(n501) );
  OAI2BB2XL U3026 ( .B0(n2863), .B1(n2894), .A0N(\String[17][3] ), .A1N(n2863), 
        .Y(n500) );
  OAI2BB2XL U3027 ( .B0(n2863), .B1(n2896), .A0N(\String[17][2] ), .A1N(n2863), 
        .Y(n499) );
  OAI2BB2XL U3028 ( .B0(n2863), .B1(n2898), .A0N(\String[17][1] ), .A1N(n2863), 
        .Y(n498) );
  OAI2BB2XL U3029 ( .B0(n2871), .B1(n2884), .A0N(\String[9][0] ), .A1N(n2871), 
        .Y(n441) );
  OAI2BB2XL U3030 ( .B0(n2871), .B1(n2886), .A0N(\String[9][7] ), .A1N(n2871), 
        .Y(n440) );
  OAI2BB2XL U3031 ( .B0(n2871), .B1(n2888), .A0N(\String[9][6] ), .A1N(n2871), 
        .Y(n439) );
  OAI2BB2XL U3032 ( .B0(n2871), .B1(n2890), .A0N(\String[9][5] ), .A1N(n2871), 
        .Y(n438) );
  OAI2BB2XL U3033 ( .B0(n2871), .B1(n2892), .A0N(\String[9][4] ), .A1N(n2871), 
        .Y(n437) );
  OAI2BB2XL U3034 ( .B0(n2871), .B1(n2894), .A0N(\String[9][3] ), .A1N(n2871), 
        .Y(n436) );
  OAI2BB2XL U3035 ( .B0(n2871), .B1(n2896), .A0N(\String[9][2] ), .A1N(n2871), 
        .Y(n435) );
  OAI2BB2XL U3036 ( .B0(n2871), .B1(n2898), .A0N(\String[9][1] ), .A1N(n2871), 
        .Y(n434) );
  OAI2BB2XL U3037 ( .B0(n2864), .B1(n2884), .A0N(\String[16][0] ), .A1N(n2864), 
        .Y(n497) );
  OAI2BB2XL U3038 ( .B0(n2864), .B1(n2886), .A0N(\String[16][7] ), .A1N(n2864), 
        .Y(n496) );
  OAI2BB2XL U3039 ( .B0(n2864), .B1(n2888), .A0N(\String[16][6] ), .A1N(n2864), 
        .Y(n495) );
  OAI2BB2XL U3040 ( .B0(n2864), .B1(n2890), .A0N(\String[16][5] ), .A1N(n2864), 
        .Y(n494) );
  OAI2BB2XL U3041 ( .B0(n2864), .B1(n2892), .A0N(\String[16][4] ), .A1N(n2864), 
        .Y(n493) );
  OAI2BB2XL U3042 ( .B0(n2864), .B1(n2894), .A0N(\String[16][3] ), .A1N(n2864), 
        .Y(n492) );
  OAI2BB2XL U3043 ( .B0(n2864), .B1(n2896), .A0N(\String[16][2] ), .A1N(n2864), 
        .Y(n491) );
  OAI2BB2XL U3044 ( .B0(n2864), .B1(n2898), .A0N(\String[16][1] ), .A1N(n2864), 
        .Y(n490) );
  OAI2BB2XL U3045 ( .B0(n2872), .B1(n2885), .A0N(\String[8][0] ), .A1N(n2872), 
        .Y(n433) );
  OAI2BB2XL U3046 ( .B0(n2872), .B1(n2887), .A0N(\String[8][7] ), .A1N(n2872), 
        .Y(n432) );
  OAI2BB2XL U3047 ( .B0(n2872), .B1(n2889), .A0N(\String[8][6] ), .A1N(n2872), 
        .Y(n431) );
  OAI2BB2XL U3048 ( .B0(n2872), .B1(n2891), .A0N(\String[8][5] ), .A1N(n2872), 
        .Y(n430) );
  OAI2BB2XL U3049 ( .B0(n2872), .B1(n2893), .A0N(\String[8][4] ), .A1N(n2872), 
        .Y(n429) );
  OAI2BB2XL U3050 ( .B0(n2872), .B1(n2895), .A0N(\String[8][3] ), .A1N(n2872), 
        .Y(n428) );
  OAI2BB2XL U3051 ( .B0(n2872), .B1(n2897), .A0N(\String[8][2] ), .A1N(n2872), 
        .Y(n427) );
  OAI2BB2XL U3052 ( .B0(n2872), .B1(n2899), .A0N(\String[8][1] ), .A1N(n2872), 
        .Y(n426) );
  OAI2BB2XL U3053 ( .B0(n2858), .B1(n2884), .A0N(\String[22][0] ), .A1N(n2858), 
        .Y(n545) );
  OAI2BB2XL U3054 ( .B0(n2858), .B1(n2886), .A0N(\String[22][7] ), .A1N(n2858), 
        .Y(n544) );
  OAI2BB2XL U3055 ( .B0(n2858), .B1(n2888), .A0N(\String[22][6] ), .A1N(n2858), 
        .Y(n543) );
  OAI2BB2XL U3056 ( .B0(n2858), .B1(n2890), .A0N(\String[22][5] ), .A1N(n2858), 
        .Y(n542) );
  OAI2BB2XL U3057 ( .B0(n2858), .B1(n2892), .A0N(\String[22][4] ), .A1N(n2858), 
        .Y(n541) );
  OAI2BB2XL U3058 ( .B0(n2858), .B1(n2894), .A0N(\String[22][3] ), .A1N(n2858), 
        .Y(n540) );
  OAI2BB2XL U3059 ( .B0(n2858), .B1(n2896), .A0N(\String[22][2] ), .A1N(n2858), 
        .Y(n539) );
  OAI2BB2XL U3060 ( .B0(n2858), .B1(n2898), .A0N(\String[22][1] ), .A1N(n2858), 
        .Y(n538) );
  OAI2BB2XL U3061 ( .B0(n2866), .B1(n2884), .A0N(\String[14][0] ), .A1N(n2866), 
        .Y(n481) );
  OAI2BB2XL U3062 ( .B0(n2866), .B1(n2886), .A0N(\String[14][7] ), .A1N(n2866), 
        .Y(n480) );
  OAI2BB2XL U3063 ( .B0(n2866), .B1(n2888), .A0N(\String[14][6] ), .A1N(n2866), 
        .Y(n479) );
  OAI2BB2XL U3064 ( .B0(n2866), .B1(n2890), .A0N(\String[14][5] ), .A1N(n2866), 
        .Y(n478) );
  OAI2BB2XL U3065 ( .B0(n2866), .B1(n2892), .A0N(\String[14][4] ), .A1N(n2866), 
        .Y(n477) );
  OAI2BB2XL U3066 ( .B0(n2866), .B1(n2894), .A0N(\String[14][3] ), .A1N(n2866), 
        .Y(n476) );
  OAI2BB2XL U3067 ( .B0(n2866), .B1(n2896), .A0N(\String[14][2] ), .A1N(n2866), 
        .Y(n475) );
  OAI2BB2XL U3068 ( .B0(n2866), .B1(n2898), .A0N(\String[14][1] ), .A1N(n2866), 
        .Y(n474) );
  OAI2BB2XL U3069 ( .B0(n2860), .B1(n2884), .A0N(\String[20][0] ), .A1N(n2860), 
        .Y(n529) );
  OAI2BB2XL U3070 ( .B0(n2860), .B1(n2886), .A0N(\String[20][7] ), .A1N(n2860), 
        .Y(n528) );
  OAI2BB2XL U3071 ( .B0(n2860), .B1(n2888), .A0N(\String[20][6] ), .A1N(n2860), 
        .Y(n527) );
  OAI2BB2XL U3072 ( .B0(n2860), .B1(n2890), .A0N(\String[20][5] ), .A1N(n2860), 
        .Y(n526) );
  OAI2BB2XL U3073 ( .B0(n2860), .B1(n2892), .A0N(\String[20][4] ), .A1N(n2860), 
        .Y(n525) );
  OAI2BB2XL U3074 ( .B0(n2860), .B1(n2894), .A0N(\String[20][3] ), .A1N(n2860), 
        .Y(n524) );
  OAI2BB2XL U3075 ( .B0(n2860), .B1(n2896), .A0N(\String[20][2] ), .A1N(n2860), 
        .Y(n523) );
  OAI2BB2XL U3076 ( .B0(n2860), .B1(n2898), .A0N(\String[20][1] ), .A1N(n2860), 
        .Y(n522) );
  OAI2BB2XL U3077 ( .B0(n2868), .B1(n2884), .A0N(\String[12][0] ), .A1N(n2868), 
        .Y(n465) );
  OAI2BB2XL U3078 ( .B0(n2868), .B1(n2886), .A0N(\String[12][7] ), .A1N(n2868), 
        .Y(n464) );
  OAI2BB2XL U3079 ( .B0(n2868), .B1(n2888), .A0N(\String[12][6] ), .A1N(n2868), 
        .Y(n463) );
  OAI2BB2XL U3080 ( .B0(n2868), .B1(n2890), .A0N(\String[12][5] ), .A1N(n2868), 
        .Y(n462) );
  OAI2BB2XL U3081 ( .B0(n2868), .B1(n2892), .A0N(\String[12][4] ), .A1N(n2868), 
        .Y(n461) );
  OAI2BB2XL U3082 ( .B0(n2868), .B1(n2894), .A0N(\String[12][3] ), .A1N(n2868), 
        .Y(n460) );
  OAI2BB2XL U3083 ( .B0(n2868), .B1(n2896), .A0N(\String[12][2] ), .A1N(n2868), 
        .Y(n459) );
  OAI2BB2XL U3084 ( .B0(n2868), .B1(n2898), .A0N(\String[12][1] ), .A1N(n2868), 
        .Y(n458) );
  OAI2BB2XL U3085 ( .B0(n2862), .B1(n2884), .A0N(\String[18][0] ), .A1N(n2862), 
        .Y(n513) );
  OAI2BB2XL U3086 ( .B0(n2862), .B1(n2886), .A0N(\String[18][7] ), .A1N(n2862), 
        .Y(n512) );
  OAI2BB2XL U3087 ( .B0(n2862), .B1(n2888), .A0N(\String[18][6] ), .A1N(n2862), 
        .Y(n511) );
  OAI2BB2XL U3088 ( .B0(n2862), .B1(n2890), .A0N(\String[18][5] ), .A1N(n2862), 
        .Y(n510) );
  OAI2BB2XL U3089 ( .B0(n2862), .B1(n2892), .A0N(\String[18][4] ), .A1N(n2862), 
        .Y(n509) );
  OAI2BB2XL U3090 ( .B0(n2862), .B1(n2894), .A0N(\String[18][3] ), .A1N(n2862), 
        .Y(n508) );
  OAI2BB2XL U3091 ( .B0(n2862), .B1(n2896), .A0N(\String[18][2] ), .A1N(n2862), 
        .Y(n507) );
  OAI2BB2XL U3092 ( .B0(n2862), .B1(n2898), .A0N(\String[18][1] ), .A1N(n2862), 
        .Y(n506) );
  OAI2BB2XL U3093 ( .B0(n2870), .B1(n2884), .A0N(\String[10][0] ), .A1N(n2870), 
        .Y(n449) );
  OAI2BB2XL U3094 ( .B0(n2870), .B1(n2886), .A0N(\String[10][7] ), .A1N(n2870), 
        .Y(n448) );
  OAI2BB2XL U3095 ( .B0(n2870), .B1(n2888), .A0N(\String[10][6] ), .A1N(n2870), 
        .Y(n447) );
  OAI2BB2XL U3096 ( .B0(n2870), .B1(n2890), .A0N(\String[10][5] ), .A1N(n2870), 
        .Y(n446) );
  OAI2BB2XL U3097 ( .B0(n2870), .B1(n2892), .A0N(\String[10][4] ), .A1N(n2870), 
        .Y(n445) );
  OAI2BB2XL U3098 ( .B0(n2870), .B1(n2894), .A0N(\String[10][3] ), .A1N(n2870), 
        .Y(n444) );
  OAI2BB2XL U3099 ( .B0(n2870), .B1(n2896), .A0N(\String[10][2] ), .A1N(n2870), 
        .Y(n443) );
  OAI2BB2XL U3100 ( .B0(n2870), .B1(n2898), .A0N(\String[10][1] ), .A1N(n2870), 
        .Y(n442) );
  OAI222XL U3101 ( .A0(n2947), .A1(n241), .B0(Judge_Pattern_count[0]), .B1(
        n243), .C0(n2836), .C1(n152), .Y(n727) );
  OAI22XL U3102 ( .A0(n268), .A1(n2939), .B0(n2883), .B1(n2916), .Y(n723) );
  OAI22XL U3103 ( .A0(n2915), .A1(n2885), .B0(n2841), .B1(n127), .Y(n719) );
  OAI22XL U3104 ( .A0(n2915), .A1(n2887), .B0(n2841), .B1(n120), .Y(n718) );
  OAI22XL U3105 ( .A0(n2915), .A1(n2889), .B0(n2841), .B1(n121), .Y(n717) );
  OAI22XL U3106 ( .A0(n2915), .A1(n2891), .B0(n122), .B1(n2841), .Y(n716) );
  OAI22XL U3107 ( .A0(n2915), .A1(n2893), .B0(n2841), .B1(n123), .Y(n715) );
  OAI22XL U3108 ( .A0(n2915), .A1(n2895), .B0(n124), .B1(n2841), .Y(n714) );
  OAI22XL U3109 ( .A0(n2915), .A1(n2897), .B0(n125), .B1(n2841), .Y(n713) );
  OAI22XL U3110 ( .A0(n2915), .A1(n154), .B0(n126), .B1(n2841), .Y(n712) );
  OAI2BB2XL U3111 ( .B0(n2839), .B1(n2885), .A0N(\String[32][0] ), .A1N(n2839), 
        .Y(n625) );
  OAI2BB2XL U3112 ( .B0(n2839), .B1(n2887), .A0N(\String[32][7] ), .A1N(n2839), 
        .Y(n624) );
  OAI2BB2XL U3113 ( .B0(n2839), .B1(n2889), .A0N(\String[32][6] ), .A1N(n2839), 
        .Y(n623) );
  OAI2BB2XL U3114 ( .B0(n2839), .B1(n2891), .A0N(\String[32][5] ), .A1N(n2839), 
        .Y(n622) );
  OAI2BB2XL U3115 ( .B0(n2839), .B1(n2893), .A0N(\String[32][4] ), .A1N(n2839), 
        .Y(n621) );
  OAI2BB2XL U3116 ( .B0(n2839), .B1(n2895), .A0N(\String[32][3] ), .A1N(n2839), 
        .Y(n620) );
  OAI2BB2XL U3117 ( .B0(n2839), .B1(n2897), .A0N(\String[32][2] ), .A1N(n2839), 
        .Y(n619) );
  OAI2BB2XL U3118 ( .B0(n2839), .B1(n2899), .A0N(\String[32][1] ), .A1N(n2839), 
        .Y(n618) );
  OAI2BB2XL U3119 ( .B0(n2873), .B1(n2884), .A0N(\String[7][0] ), .A1N(n2873), 
        .Y(n425) );
  OAI2BB2XL U3120 ( .B0(n2873), .B1(n2886), .A0N(\String[7][7] ), .A1N(n2873), 
        .Y(n424) );
  OAI2BB2XL U3121 ( .B0(n2873), .B1(n2888), .A0N(\String[7][6] ), .A1N(n2873), 
        .Y(n423) );
  OAI2BB2XL U3122 ( .B0(n2873), .B1(n2890), .A0N(\String[7][5] ), .A1N(n2873), 
        .Y(n422) );
  OAI2BB2XL U3123 ( .B0(n2873), .B1(n2892), .A0N(\String[7][4] ), .A1N(n2873), 
        .Y(n421) );
  OAI2BB2XL U3124 ( .B0(n2873), .B1(n2894), .A0N(\String[7][3] ), .A1N(n2873), 
        .Y(n420) );
  OAI2BB2XL U3125 ( .B0(n2873), .B1(n2896), .A0N(\String[7][2] ), .A1N(n2873), 
        .Y(n419) );
  OAI2BB2XL U3126 ( .B0(n2873), .B1(n2898), .A0N(\String[7][1] ), .A1N(n2873), 
        .Y(n418) );
  OAI2BB2XL U3127 ( .B0(n2875), .B1(n161), .A0N(\String[5][0] ), .A1N(n2875), 
        .Y(n409) );
  OAI2BB2XL U3128 ( .B0(n2875), .B1(n160), .A0N(\String[5][7] ), .A1N(n2875), 
        .Y(n408) );
  OAI2BB2XL U3129 ( .B0(n2875), .B1(n159), .A0N(\String[5][6] ), .A1N(n2875), 
        .Y(n407) );
  OAI2BB2XL U3130 ( .B0(n2875), .B1(n2890), .A0N(\String[5][5] ), .A1N(n2875), 
        .Y(n406) );
  OAI2BB2XL U3131 ( .B0(n2875), .B1(n2892), .A0N(\String[5][4] ), .A1N(n2875), 
        .Y(n405) );
  OAI2BB2XL U3132 ( .B0(n2875), .B1(n2894), .A0N(\String[5][3] ), .A1N(n2875), 
        .Y(n404) );
  OAI2BB2XL U3133 ( .B0(n2875), .B1(n2896), .A0N(\String[5][2] ), .A1N(n2875), 
        .Y(n403) );
  OAI2BB2XL U3134 ( .B0(n2875), .B1(n154), .A0N(\String[5][1] ), .A1N(n2875), 
        .Y(n402) );
  OAI2BB2XL U3135 ( .B0(n2877), .B1(n161), .A0N(\String[3][0] ), .A1N(n2877), 
        .Y(n393) );
  OAI2BB2XL U3136 ( .B0(n2877), .B1(n160), .A0N(\String[3][7] ), .A1N(n2877), 
        .Y(n392) );
  OAI2BB2XL U3137 ( .B0(n2877), .B1(n159), .A0N(\String[3][6] ), .A1N(n2877), 
        .Y(n391) );
  OAI2BB2XL U3138 ( .B0(n2877), .B1(n158), .A0N(\String[3][5] ), .A1N(n2877), 
        .Y(n390) );
  OAI2BB2XL U3139 ( .B0(n2877), .B1(n157), .A0N(\String[3][4] ), .A1N(n2877), 
        .Y(n389) );
  OAI2BB2XL U3140 ( .B0(n2877), .B1(n156), .A0N(\String[3][3] ), .A1N(n2877), 
        .Y(n388) );
  OAI2BB2XL U3141 ( .B0(n2877), .B1(n155), .A0N(\String[3][2] ), .A1N(n2877), 
        .Y(n387) );
  OAI2BB2XL U3142 ( .B0(n2877), .B1(n154), .A0N(\String[3][1] ), .A1N(n2877), 
        .Y(n386) );
  OAI2BB2XL U3143 ( .B0(n2879), .B1(n161), .A0N(\String[1][0] ), .A1N(n2879), 
        .Y(n377) );
  OAI2BB2XL U3144 ( .B0(n2879), .B1(n160), .A0N(\String[1][7] ), .A1N(n2879), 
        .Y(n376) );
  OAI2BB2XL U3145 ( .B0(n2879), .B1(n159), .A0N(\String[1][6] ), .A1N(n2879), 
        .Y(n375) );
  OAI2BB2XL U3146 ( .B0(n2879), .B1(n158), .A0N(\String[1][5] ), .A1N(n2879), 
        .Y(n374) );
  OAI2BB2XL U3147 ( .B0(n2879), .B1(n157), .A0N(\String[1][4] ), .A1N(n2879), 
        .Y(n373) );
  OAI2BB2XL U3148 ( .B0(n2879), .B1(n156), .A0N(\String[1][3] ), .A1N(n2879), 
        .Y(n372) );
  OAI2BB2XL U3149 ( .B0(n2879), .B1(n155), .A0N(\String[1][2] ), .A1N(n2879), 
        .Y(n371) );
  OAI2BB2XL U3150 ( .B0(n2879), .B1(n154), .A0N(\String[1][1] ), .A1N(n2879), 
        .Y(n370) );
  OAI2BB2XL U3151 ( .B0(n2874), .B1(n161), .A0N(\String[6][0] ), .A1N(n2874), 
        .Y(n417) );
  OAI2BB2XL U3152 ( .B0(n2874), .B1(n160), .A0N(\String[6][7] ), .A1N(n2874), 
        .Y(n416) );
  OAI2BB2XL U3153 ( .B0(n2874), .B1(n159), .A0N(\String[6][6] ), .A1N(n2874), 
        .Y(n415) );
  OAI2BB2XL U3154 ( .B0(n2874), .B1(n158), .A0N(\String[6][5] ), .A1N(n2874), 
        .Y(n414) );
  OAI2BB2XL U3155 ( .B0(n2874), .B1(n157), .A0N(\String[6][4] ), .A1N(n2874), 
        .Y(n413) );
  OAI2BB2XL U3156 ( .B0(n2874), .B1(n156), .A0N(\String[6][3] ), .A1N(n2874), 
        .Y(n412) );
  OAI2BB2XL U3157 ( .B0(n2874), .B1(n155), .A0N(\String[6][2] ), .A1N(n2874), 
        .Y(n411) );
  OAI2BB2XL U3158 ( .B0(n2874), .B1(n154), .A0N(\String[6][1] ), .A1N(n2874), 
        .Y(n410) );
  OAI2BB2XL U3159 ( .B0(n2876), .B1(n161), .A0N(\String[4][0] ), .A1N(n2876), 
        .Y(n401) );
  OAI2BB2XL U3160 ( .B0(n2876), .B1(n160), .A0N(\String[4][7] ), .A1N(n2876), 
        .Y(n400) );
  OAI2BB2XL U3161 ( .B0(n2876), .B1(n159), .A0N(\String[4][6] ), .A1N(n2876), 
        .Y(n399) );
  OAI2BB2XL U3162 ( .B0(n2876), .B1(n158), .A0N(\String[4][5] ), .A1N(n2876), 
        .Y(n398) );
  OAI2BB2XL U3163 ( .B0(n2876), .B1(n157), .A0N(\String[4][4] ), .A1N(n2876), 
        .Y(n397) );
  OAI2BB2XL U3164 ( .B0(n2876), .B1(n156), .A0N(\String[4][3] ), .A1N(n2876), 
        .Y(n396) );
  OAI2BB2XL U3165 ( .B0(n2876), .B1(n155), .A0N(\String[4][2] ), .A1N(n2876), 
        .Y(n395) );
  OAI2BB2XL U3166 ( .B0(n2876), .B1(n154), .A0N(\String[4][1] ), .A1N(n2876), 
        .Y(n394) );
  OAI2BB2XL U3167 ( .B0(n2878), .B1(n161), .A0N(\String[2][0] ), .A1N(n2878), 
        .Y(n385) );
  OAI2BB2XL U3168 ( .B0(n2878), .B1(n160), .A0N(\String[2][7] ), .A1N(n2878), 
        .Y(n384) );
  OAI2BB2XL U3169 ( .B0(n2878), .B1(n159), .A0N(\String[2][6] ), .A1N(n2878), 
        .Y(n383) );
  OAI2BB2XL U3170 ( .B0(n2878), .B1(n158), .A0N(\String[2][5] ), .A1N(n2878), 
        .Y(n382) );
  OAI2BB2XL U3171 ( .B0(n2878), .B1(n157), .A0N(\String[2][4] ), .A1N(n2878), 
        .Y(n381) );
  OAI2BB2XL U3172 ( .B0(n2878), .B1(n156), .A0N(\String[2][3] ), .A1N(n2878), 
        .Y(n380) );
  OAI2BB2XL U3173 ( .B0(n2878), .B1(n155), .A0N(\String[2][2] ), .A1N(n2878), 
        .Y(n379) );
  OAI2BB2XL U3174 ( .B0(n2878), .B1(n2898), .A0N(\String[2][1] ), .A1N(n2878), 
        .Y(n378) );
  OAI2BB2XL U3175 ( .B0(n2956), .B1(n210), .A0N(n2922), .A1N(
        String_count_Record[2]), .Y(n628) );
  OAI2BB2XL U3176 ( .B0(n2955), .B1(n210), .A0N(n2922), .A1N(
        String_count_Record[1]), .Y(n629) );
  OAI2BB2XL U3177 ( .B0(n2952), .B1(n210), .A0N(n2922), .A1N(
        String_count_Record[5]), .Y(n637) );
  OAI2BB2XL U3178 ( .B0(n2954), .B1(n210), .A0N(n2922), .A1N(
        String_count_Record[0]), .Y(n630) );
  OAI2BB2XL U3179 ( .B0(n2958), .B1(n210), .A0N(n2922), .A1N(
        String_count_Record[4]), .Y(n626) );
  OAI2BB2XL U3180 ( .B0(n2957), .B1(n210), .A0N(n2922), .A1N(
        String_count_Record[3]), .Y(n627) );
  OAI22XL U3181 ( .A0(n2941), .A1(n221), .B0(n2882), .B1(n220), .Y(n722) );
  OAI2BB2XL U3182 ( .B0(n2880), .B1(n2884), .A0N(s[0]), .A1N(n2880), .Y(n369)
         );
  OAI2BB2XL U3183 ( .B0(n2880), .B1(n2886), .A0N(s[7]), .A1N(n2880), .Y(n368)
         );
  OAI2BB2XL U3184 ( .B0(n2880), .B1(n2888), .A0N(s[6]), .A1N(n2880), .Y(n367)
         );
  OAI2BB2XL U3185 ( .B0(n2880), .B1(n158), .A0N(s[5]), .A1N(n2880), .Y(n366)
         );
  OAI2BB2XL U3186 ( .B0(n2880), .B1(n157), .A0N(s[4]), .A1N(n2880), .Y(n365)
         );
  OAI2BB2XL U3187 ( .B0(n2880), .B1(n156), .A0N(s[3]), .A1N(n2880), .Y(n364)
         );
  OAI2BB2XL U3188 ( .B0(n2880), .B1(n155), .A0N(s[2]), .A1N(n2880), .Y(n363)
         );
  OAI2BB2XL U3189 ( .B0(n2880), .B1(n2898), .A0N(s[1]), .A1N(n2880), .Y(n362)
         );
  CLKINVX1 U3190 ( .A(reset), .Y(n2905) );
  AOI31X1 U3191 ( .A0(n350), .A1(n149), .A2(n351), .B0(n2840), .Y(N1178) );
  AOI32X1 U3192 ( .A0(Judge_String_count[4]), .A1(n2958), .A2(n326), .B0(
        Judge_String_count[5]), .B1(n2952), .Y(n351) );
  NAND3BX1 U3193 ( .AN(n331), .B(n326), .C(n358), .Y(n350) );
  OAI2BB2XL U3194 ( .B0(n359), .B1(n330), .A0N(n2957), .A1N(
        Judge_String_count[3]), .Y(n358) );
  NAND2X1 U3195 ( .A(chardata[0]), .B(n2904), .Y(n161) );
  NAND2X1 U3196 ( .A(chardata[7]), .B(n2904), .Y(n160) );
  NAND2X1 U3197 ( .A(chardata[6]), .B(n2904), .Y(n159) );
  NAND2X1 U3198 ( .A(chardata[5]), .B(n2903), .Y(n158) );
  NAND2X1 U3199 ( .A(chardata[4]), .B(n2903), .Y(n157) );
  NAND2X1 U3200 ( .A(chardata[3]), .B(n2903), .Y(n156) );
  NAND2X1 U3201 ( .A(chardata[2]), .B(n2903), .Y(n155) );
  NAND2X1 U3202 ( .A(chardata[1]), .B(n2902), .Y(n154) );
  NOR4X1 U3203 ( .A(ispattern), .B(n348), .C(N711), .D(n249), .Y(N1179) );
  NAND2X1 U3204 ( .A(n2928), .B(n2903), .Y(n348) );
  CLKBUFX3 U3205 ( .A(Judge_String_count[0]), .Y(n2881) );
  NOR2X4 U3206 ( .A(n2835), .B(Judge_Pattern_count[0]), .Y(n2826) );
  CLKINVX1 U3207 ( .A(Judge_Pattern_count[2]), .Y(n2835) );
  NOR2X4 U3208 ( .A(Judge_Pattern_count[2]), .B(Judge_Pattern_count[0]), .Y(
        n2825) );
  CLKBUFX3 U3209 ( .A(n2829), .Y(n2837) );
  NOR2X1 U3210 ( .A(n2836), .B(Judge_Pattern_count[2]), .Y(n2829) );
  CLKINVX1 U3211 ( .A(N851), .Y(n2934) );
  AND4X1 U3212 ( .A(n2771), .B(n2770), .C(n2772), .D(n333), .Y(n271) );
  XOR2X1 U3213 ( .A(Judge_String_count[3]), .B(String_count[3]), .Y(n330) );
  NOR3X1 U3214 ( .A(n329), .B(n330), .C(n331), .Y(n328) );
  XOR2X1 U3215 ( .A(String_count[0]), .B(n2881), .Y(n329) );
  XOR2X1 U3216 ( .A(Judge_String_count[5]), .B(n2952), .Y(n326) );
  INVX3 U3217 ( .A(String_count[5]), .Y(n2952) );
  XOR2X1 U3218 ( .A(Judge_String_count[4]), .B(String_count[4]), .Y(n331) );
  XOR2X1 U3219 ( .A(n2770), .B(String_count[2]), .Y(n327) );
  OAI22XL U3220 ( .A0(n2936), .A1(n122), .B0(n288), .B1(n56), .Y(n287) );
  NOR4X1 U3221 ( .A(n284), .B(n285), .C(n286), .D(n287), .Y(n283) );
  OAI22XL U3222 ( .A0(n291), .A1(n82), .B0(n292), .B1(n90), .Y(n285) );
  OAI22XL U3223 ( .A0(n289), .A1(n66), .B0(n290), .B1(n74), .Y(n286) );
  OAI222XL U3224 ( .A0(n293), .A1(n106), .B0(n294), .B1(n114), .C0(n295), .C1(
        n98), .Y(n284) );
  NAND4X1 U3225 ( .A(n276), .B(n277), .C(n278), .D(n279), .Y(n272) );
  AOI222XL U3226 ( .A0(n2950), .A1(n308), .B0(n2951), .B1(n309), .C0(n2944), 
        .C1(n310), .Y(n278) );
  AOI222XL U3227 ( .A0(n2946), .A1(n311), .B0(n2945), .B1(n312), .C0(n2949), 
        .C1(n313), .Y(n277) );
  AOI222XL U3228 ( .A0(Judge_Pattern_count_begin[3]), .A1(n314), .B0(n2948), 
        .B1(n315), .C0(n2935), .C1(n316), .Y(n276) );
  NAND3X1 U3229 ( .A(Judge_Pattern_count_begin[1]), .B(n2947), .C(
        Judge_Pattern_count_begin[2]), .Y(n293) );
  NAND3X1 U3230 ( .A(Judge_Pattern_count_begin[0]), .B(n2960), .C(
        Judge_Pattern_count_begin[2]), .Y(n295) );
  NAND3X1 U3231 ( .A(n2947), .B(n2961), .C(Judge_Pattern_count_begin[1]), .Y(
        n290) );
  NAND3X1 U3232 ( .A(n2947), .B(n2960), .C(Judge_Pattern_count_begin[2]), .Y(
        n292) );
  NAND3X1 U3233 ( .A(Judge_Pattern_count_begin[1]), .B(
        Judge_Pattern_count_begin[0]), .C(Judge_Pattern_count_begin[2]), .Y(
        n294) );
  OAI32X1 U3234 ( .A0(n325), .A1(String_count[0]), .A2(n2772), .B0(
        String_count[1]), .B1(n2771), .Y(n360) );
  NAND4X1 U3235 ( .A(n63), .B(n57), .C(n54), .D(n52), .Y(n316) );
  NAND4X1 U3236 ( .A(n111), .B(n107), .C(n105), .D(n104), .Y(n310) );
  NAND4X1 U3237 ( .A(n87), .B(n83), .C(n81), .D(n80), .Y(n313) );
  NAND4X1 U3238 ( .A(n119), .B(n115), .C(n113), .D(n112), .Y(n309) );
  NAND4X1 U3239 ( .A(n95), .B(n91), .C(n89), .D(n88), .Y(n312) );
  NAND4X1 U3240 ( .A(n71), .B(n67), .C(n65), .D(n64), .Y(n315) );
  CLKINVX1 U3241 ( .A(Pattern_count[3]), .Y(n2943) );
  NAND4X1 U3242 ( .A(n103), .B(n99), .C(n97), .D(n96), .Y(n308) );
  NAND4X1 U3243 ( .A(n79), .B(n75), .C(n73), .D(n72), .Y(n311) );
  NAND4X1 U3244 ( .A(n127), .B(n123), .C(n121), .D(n120), .Y(n314) );
  ADDHXL U3245 ( .A(String_count[2]), .B(\add_101/carry [2]), .CO(
        \add_101/carry [3]), .S(N761) );
  ADDHXL U3246 ( .A(String_count[1]), .B(String_count[0]), .CO(
        \add_101/carry [2]), .S(N760) );
  ADDHXL U3247 ( .A(String_count[3]), .B(\add_101/carry [3]), .CO(
        \add_101/carry [4]), .S(N762) );
  ADDHXL U3248 ( .A(String_count[4]), .B(\add_101/carry [4]), .CO(
        \add_101/carry [5]), .S(N763) );
  ADDHXL U3249 ( .A(Judge_String_count[2]), .B(\add_139/carry [2]), .CO(
        \add_139/carry [3]), .S(N900) );
  ADDHXL U3250 ( .A(Judge_String_count[1]), .B(n2881), .CO(\add_139/carry [2]), 
        .S(N899) );
  ADDHXL U3251 ( .A(Judge_String_count[3]), .B(\add_139/carry [3]), .CO(
        \add_139/carry [4]), .S(N901) );
  NOR4X1 U3252 ( .A(Judge_Pattern_count[0]), .B(Judge_Pattern_count[1]), .C(
        Judge_Pattern_count[2]), .D(Judge_Pattern_count[3]), .Y(n236) );
  NAND3X1 U3253 ( .A(String_count[0]), .B(n2956), .C(String_count[1]), .Y(n169) );
  NAND3X1 U3254 ( .A(n2954), .B(n2956), .C(String_count[1]), .Y(n167) );
  NAND3X1 U3255 ( .A(n2955), .B(n2956), .C(String_count[0]), .Y(n165) );
  NAND3X1 U3256 ( .A(String_count[0]), .B(n2955), .C(String_count[2]), .Y(n173) );
  NAND3X1 U3257 ( .A(n2954), .B(n2955), .C(String_count[2]), .Y(n171) );
  CLKBUFX3 U3258 ( .A(Pattern_count[0]), .Y(n2882) );
  CLKBUFX3 U3259 ( .A(Pattern_count[1]), .Y(n2883) );
  ADDHXL U3260 ( .A(Judge_String_count[3]), .B(\r518/carry [3]), .CO(
        \r518/carry [4]), .S(N876) );
  ADDHXL U3261 ( .A(Judge_String_count[2]), .B(\r518/carry [2]), .CO(
        \r518/carry [3]), .S(N875) );
  ADDHXL U3262 ( .A(Judge_String_count[1]), .B(n2881), .CO(\r518/carry [2]), 
        .S(N874) );
  ADDHXL U3263 ( .A(Judge_String_count[4]), .B(\r518/carry [4]), .CO(
        \r518/carry [5]), .S(N877) );
  NOR4X1 U3264 ( .A(n2882), .B(n2883), .C(Pattern_count[2]), .D(
        Pattern_count[3]), .Y(n249) );
  NOR3X1 U3265 ( .A(String_count[4]), .B(String_count[5]), .C(String_count[3]), 
        .Y(n179) );
  NAND3X1 U3266 ( .A(String_count[1]), .B(n2954), .C(String_count[2]), .Y(n175) );
  NAND2X1 U3267 ( .A(Judge_Pattern_count[0]), .B(Judge_Pattern_count[1]), .Y(
        n247) );
  NAND3X1 U3268 ( .A(String_count[1]), .B(String_count[0]), .C(String_count[2]), .Y(n177) );
  XOR2X1 U3269 ( .A(n2962), .B(Pattern_count[3]), .Y(n357) );
  NAND4X1 U3270 ( .A(n354), .B(n355), .C(n356), .D(n357), .Y(n149) );
  XOR2X1 U3271 ( .A(n2959), .B(n2883), .Y(n355) );
  XOR2X1 U3272 ( .A(n2835), .B(Pattern_count[2]), .Y(n356) );
  XOR2X1 U3273 ( .A(n2836), .B(n2882), .Y(n354) );
  XOR2X1 U3274 ( .A(n247), .B(Judge_Pattern_count[2]), .Y(n244) );
  XOR2X1 U3275 ( .A(n2959), .B(Judge_Pattern_count[0]), .Y(n242) );
  CLKINVX1 U3276 ( .A(Judge_Pattern_count[1]), .Y(n2959) );
  NOR2X1 U3277 ( .A(n2772), .B(Judge_String_count[1]), .Y(n2597) );
  NOR2X1 U3278 ( .A(n2769), .B(n2770), .Y(n2591) );
  NOR2X1 U3279 ( .A(n2772), .B(n2771), .Y(n2598) );
  NOR2X1 U3280 ( .A(n2771), .B(n2881), .Y(n2599) );
  NOR2X1 U3281 ( .A(Judge_String_count[1]), .B(n2881), .Y(n2600) );
  AO22X1 U3282 ( .A0(\String[14][0] ), .A1(n2775), .B0(\String[12][0] ), .B1(
        n2776), .Y(n2592) );
  AOI221XL U3283 ( .A0(\String[13][0] ), .A1(n2773), .B0(\String[15][0] ), 
        .B1(n2774), .C0(n2592), .Y(n2606) );
  NOR2X1 U3284 ( .A(n2769), .B(Judge_String_count[2]), .Y(n2593) );
  AO22X1 U3285 ( .A0(\String[10][0] ), .A1(n2779), .B0(\String[8][0] ), .B1(
        n2780), .Y(n2594) );
  AOI221XL U3286 ( .A0(\String[9][0] ), .A1(n2777), .B0(\String[11][0] ), .B1(
        n2778), .C0(n2594), .Y(n2605) );
  NOR2X1 U3287 ( .A(n2770), .B(Judge_String_count[3]), .Y(n2595) );
  AO22X1 U3288 ( .A0(\String[6][0] ), .A1(n2783), .B0(\String[4][0] ), .B1(
        n2784), .Y(n2596) );
  AOI221XL U3289 ( .A0(\String[5][0] ), .A1(n2781), .B0(\String[7][0] ), .B1(
        n2782), .C0(n2596), .Y(n2604) );
  NOR2X1 U3290 ( .A(Judge_String_count[2]), .B(Judge_String_count[3]), .Y(
        n2601) );
  AO22X1 U3291 ( .A0(\String[2][0] ), .A1(n2787), .B0(s[0]), .B1(n2788), .Y(
        n2602) );
  AOI221XL U3292 ( .A0(\String[1][0] ), .A1(n2785), .B0(\String[3][0] ), .B1(
        n2786), .C0(n2602), .Y(n2603) );
  NAND4X1 U3293 ( .A(n2606), .B(n2605), .C(n2604), .D(n2603), .Y(n2616) );
  AO22X1 U3294 ( .A0(\String[30][0] ), .A1(n2775), .B0(\String[28][0] ), .B1(
        n2776), .Y(n2607) );
  AOI221XL U3295 ( .A0(\String[29][0] ), .A1(n2773), .B0(\String[31][0] ), 
        .B1(n2774), .C0(n2607), .Y(n2614) );
  AO22X1 U3296 ( .A0(\String[26][0] ), .A1(n2779), .B0(\String[24][0] ), .B1(
        n2780), .Y(n2608) );
  AOI221XL U3297 ( .A0(\String[25][0] ), .A1(n2777), .B0(\String[27][0] ), 
        .B1(n2778), .C0(n2608), .Y(n2613) );
  AO22X1 U3298 ( .A0(\String[22][0] ), .A1(n2783), .B0(\String[20][0] ), .B1(
        n2784), .Y(n2609) );
  AOI221XL U3299 ( .A0(\String[21][0] ), .A1(n2781), .B0(\String[23][0] ), 
        .B1(n2782), .C0(n2609), .Y(n2612) );
  AO22X1 U3300 ( .A0(\String[18][0] ), .A1(n2787), .B0(\String[16][0] ), .B1(
        n2788), .Y(n2610) );
  AOI221XL U3301 ( .A0(\String[17][0] ), .A1(n2785), .B0(\String[19][0] ), 
        .B1(n2786), .C0(n2610), .Y(n2611) );
  NAND4X1 U3302 ( .A(n2614), .B(n2613), .C(n2612), .D(n2611), .Y(n2615) );
  AOI222XL U3303 ( .A0(\String[32][0] ), .A1(Judge_String_count[5]), .B0(n2616), .B1(n2767), .C0(n2615), .C1(n2765), .Y(n2617) );
  CLKINVX1 U3304 ( .A(n2617), .Y(N709) );
  AO22X1 U3305 ( .A0(\String[14][1] ), .A1(n2775), .B0(\String[12][1] ), .B1(
        n2776), .Y(n2618) );
  AOI221XL U3306 ( .A0(\String[13][1] ), .A1(n2773), .B0(\String[15][1] ), 
        .B1(n2774), .C0(n2618), .Y(n2625) );
  AO22X1 U3307 ( .A0(\String[10][1] ), .A1(n2779), .B0(\String[8][1] ), .B1(
        n2780), .Y(n2619) );
  AOI221XL U3308 ( .A0(\String[9][1] ), .A1(n2777), .B0(\String[11][1] ), .B1(
        n2778), .C0(n2619), .Y(n2624) );
  AO22X1 U3309 ( .A0(\String[6][1] ), .A1(n2783), .B0(\String[4][1] ), .B1(
        n2784), .Y(n2620) );
  AOI221XL U3310 ( .A0(\String[5][1] ), .A1(n2781), .B0(\String[7][1] ), .B1(
        n2782), .C0(n2620), .Y(n2623) );
  AO22X1 U3311 ( .A0(\String[2][1] ), .A1(n2787), .B0(s[1]), .B1(n2788), .Y(
        n2621) );
  AOI221XL U3312 ( .A0(\String[1][1] ), .A1(n2785), .B0(\String[3][1] ), .B1(
        n2786), .C0(n2621), .Y(n2622) );
  NAND4X1 U3313 ( .A(n2625), .B(n2624), .C(n2623), .D(n2622), .Y(n2635) );
  AO22X1 U3314 ( .A0(\String[30][1] ), .A1(n2775), .B0(\String[28][1] ), .B1(
        n2776), .Y(n2626) );
  AOI221XL U3315 ( .A0(\String[29][1] ), .A1(n2773), .B0(\String[31][1] ), 
        .B1(n2774), .C0(n2626), .Y(n2633) );
  AO22X1 U3316 ( .A0(\String[26][1] ), .A1(n2779), .B0(\String[24][1] ), .B1(
        n2780), .Y(n2627) );
  AOI221XL U3317 ( .A0(\String[25][1] ), .A1(n2777), .B0(\String[27][1] ), 
        .B1(n2778), .C0(n2627), .Y(n2632) );
  AO22X1 U3318 ( .A0(\String[22][1] ), .A1(n2783), .B0(\String[20][1] ), .B1(
        n2784), .Y(n2628) );
  AOI221XL U3319 ( .A0(\String[21][1] ), .A1(n2781), .B0(\String[23][1] ), 
        .B1(n2782), .C0(n2628), .Y(n2631) );
  AO22X1 U3320 ( .A0(\String[18][1] ), .A1(n2787), .B0(\String[16][1] ), .B1(
        n2788), .Y(n2629) );
  AOI221XL U3321 ( .A0(\String[17][1] ), .A1(n2785), .B0(\String[19][1] ), 
        .B1(n2786), .C0(n2629), .Y(n2630) );
  NAND4X1 U3322 ( .A(n2633), .B(n2632), .C(n2631), .D(n2630), .Y(n2634) );
  AOI222XL U3323 ( .A0(\String[32][1] ), .A1(Judge_String_count[5]), .B0(n2635), .B1(n2767), .C0(n2634), .C1(n2765), .Y(n2636) );
  CLKINVX1 U3324 ( .A(n2636), .Y(N708) );
  AO22X1 U3325 ( .A0(\String[14][2] ), .A1(n2775), .B0(\String[12][2] ), .B1(
        n2776), .Y(n2637) );
  AOI221XL U3326 ( .A0(\String[13][2] ), .A1(n2773), .B0(\String[15][2] ), 
        .B1(n2774), .C0(n2637), .Y(n2644) );
  AO22X1 U3327 ( .A0(\String[10][2] ), .A1(n2779), .B0(\String[8][2] ), .B1(
        n2780), .Y(n2638) );
  AOI221XL U3328 ( .A0(\String[9][2] ), .A1(n2777), .B0(\String[11][2] ), .B1(
        n2778), .C0(n2638), .Y(n2643) );
  AO22X1 U3329 ( .A0(\String[6][2] ), .A1(n2783), .B0(\String[4][2] ), .B1(
        n2784), .Y(n2639) );
  AOI221XL U3330 ( .A0(\String[5][2] ), .A1(n2781), .B0(\String[7][2] ), .B1(
        n2782), .C0(n2639), .Y(n2642) );
  AO22X1 U3331 ( .A0(\String[2][2] ), .A1(n2787), .B0(s[2]), .B1(n2788), .Y(
        n2640) );
  AOI221XL U3332 ( .A0(\String[1][2] ), .A1(n2785), .B0(\String[3][2] ), .B1(
        n2786), .C0(n2640), .Y(n2641) );
  NAND4X1 U3333 ( .A(n2644), .B(n2643), .C(n2642), .D(n2641), .Y(n2654) );
  AO22X1 U3334 ( .A0(\String[30][2] ), .A1(n2775), .B0(\String[28][2] ), .B1(
        n2776), .Y(n2645) );
  AOI221XL U3335 ( .A0(\String[29][2] ), .A1(n2773), .B0(\String[31][2] ), 
        .B1(n2774), .C0(n2645), .Y(n2652) );
  AO22X1 U3336 ( .A0(\String[26][2] ), .A1(n2779), .B0(\String[24][2] ), .B1(
        n2780), .Y(n2646) );
  AOI221XL U3337 ( .A0(\String[25][2] ), .A1(n2777), .B0(\String[27][2] ), 
        .B1(n2778), .C0(n2646), .Y(n2651) );
  AO22X1 U3338 ( .A0(\String[22][2] ), .A1(n2783), .B0(\String[20][2] ), .B1(
        n2784), .Y(n2647) );
  AOI221XL U3339 ( .A0(\String[21][2] ), .A1(n2781), .B0(\String[23][2] ), 
        .B1(n2782), .C0(n2647), .Y(n2650) );
  AO22X1 U3340 ( .A0(\String[18][2] ), .A1(n2787), .B0(\String[16][2] ), .B1(
        n2788), .Y(n2648) );
  AOI221XL U3341 ( .A0(\String[17][2] ), .A1(n2785), .B0(\String[19][2] ), 
        .B1(n2786), .C0(n2648), .Y(n2649) );
  NAND4X1 U3342 ( .A(n2652), .B(n2651), .C(n2650), .D(n2649), .Y(n2653) );
  AOI222XL U3343 ( .A0(\String[32][2] ), .A1(Judge_String_count[5]), .B0(n2654), .B1(n2767), .C0(n2653), .C1(n2765), .Y(n2655) );
  CLKINVX1 U3344 ( .A(n2655), .Y(N707) );
  AO22X1 U3345 ( .A0(\String[14][3] ), .A1(n2775), .B0(\String[12][3] ), .B1(
        n2776), .Y(n2656) );
  AOI221XL U3346 ( .A0(\String[13][3] ), .A1(n2773), .B0(\String[15][3] ), 
        .B1(n2774), .C0(n2656), .Y(n2663) );
  AO22X1 U3347 ( .A0(\String[10][3] ), .A1(n2779), .B0(\String[8][3] ), .B1(
        n2780), .Y(n2657) );
  AOI221XL U3348 ( .A0(\String[9][3] ), .A1(n2777), .B0(\String[11][3] ), .B1(
        n2778), .C0(n2657), .Y(n2662) );
  AO22X1 U3349 ( .A0(\String[6][3] ), .A1(n2783), .B0(\String[4][3] ), .B1(
        n2784), .Y(n2658) );
  AOI221XL U3350 ( .A0(\String[5][3] ), .A1(n2781), .B0(\String[7][3] ), .B1(
        n2782), .C0(n2658), .Y(n2661) );
  AO22X1 U3351 ( .A0(\String[2][3] ), .A1(n2787), .B0(s[3]), .B1(n2788), .Y(
        n2659) );
  AOI221XL U3352 ( .A0(\String[1][3] ), .A1(n2785), .B0(\String[3][3] ), .B1(
        n2786), .C0(n2659), .Y(n2660) );
  NAND4X1 U3353 ( .A(n2663), .B(n2662), .C(n2661), .D(n2660), .Y(n2673) );
  AO22X1 U3354 ( .A0(\String[30][3] ), .A1(n2775), .B0(\String[28][3] ), .B1(
        n2776), .Y(n2664) );
  AOI221XL U3355 ( .A0(\String[29][3] ), .A1(n2773), .B0(\String[31][3] ), 
        .B1(n2774), .C0(n2664), .Y(n2671) );
  AO22X1 U3356 ( .A0(\String[26][3] ), .A1(n2779), .B0(\String[24][3] ), .B1(
        n2780), .Y(n2665) );
  AOI221XL U3357 ( .A0(\String[25][3] ), .A1(n2777), .B0(\String[27][3] ), 
        .B1(n2778), .C0(n2665), .Y(n2670) );
  AO22X1 U3358 ( .A0(\String[22][3] ), .A1(n2783), .B0(\String[20][3] ), .B1(
        n2784), .Y(n2666) );
  AOI221XL U3359 ( .A0(\String[21][3] ), .A1(n2781), .B0(\String[23][3] ), 
        .B1(n2782), .C0(n2666), .Y(n2669) );
  AO22X1 U3360 ( .A0(\String[18][3] ), .A1(n2787), .B0(\String[16][3] ), .B1(
        n2788), .Y(n2667) );
  AOI221XL U3361 ( .A0(\String[17][3] ), .A1(n2785), .B0(\String[19][3] ), 
        .B1(n2786), .C0(n2667), .Y(n2668) );
  NAND4X1 U3362 ( .A(n2671), .B(n2670), .C(n2669), .D(n2668), .Y(n2672) );
  AOI222XL U3363 ( .A0(\String[32][3] ), .A1(Judge_String_count[5]), .B0(n2673), .B1(n2767), .C0(n2672), .C1(n2765), .Y(n2674) );
  CLKINVX1 U3364 ( .A(n2674), .Y(N706) );
  AO22X1 U3365 ( .A0(\String[14][4] ), .A1(n2775), .B0(\String[12][4] ), .B1(
        n2776), .Y(n2675) );
  AOI221XL U3366 ( .A0(\String[13][4] ), .A1(n2773), .B0(\String[15][4] ), 
        .B1(n2774), .C0(n2675), .Y(n2682) );
  AO22X1 U3367 ( .A0(\String[10][4] ), .A1(n2779), .B0(\String[8][4] ), .B1(
        n2780), .Y(n2676) );
  AOI221XL U3368 ( .A0(\String[9][4] ), .A1(n2777), .B0(\String[11][4] ), .B1(
        n2778), .C0(n2676), .Y(n2681) );
  AO22X1 U3369 ( .A0(\String[6][4] ), .A1(n2783), .B0(\String[4][4] ), .B1(
        n2784), .Y(n2677) );
  AOI221XL U3370 ( .A0(\String[5][4] ), .A1(n2781), .B0(\String[7][4] ), .B1(
        n2782), .C0(n2677), .Y(n2680) );
  AO22X1 U3371 ( .A0(\String[2][4] ), .A1(n2787), .B0(s[4]), .B1(n2788), .Y(
        n2678) );
  AOI221XL U3372 ( .A0(\String[1][4] ), .A1(n2785), .B0(\String[3][4] ), .B1(
        n2786), .C0(n2678), .Y(n2679) );
  NAND4X1 U3373 ( .A(n2682), .B(n2681), .C(n2680), .D(n2679), .Y(n2692) );
  AO22X1 U3374 ( .A0(\String[30][4] ), .A1(n2775), .B0(\String[28][4] ), .B1(
        n2776), .Y(n2683) );
  AOI221XL U3375 ( .A0(\String[29][4] ), .A1(n2773), .B0(\String[31][4] ), 
        .B1(n2774), .C0(n2683), .Y(n2690) );
  AO22X1 U3376 ( .A0(\String[26][4] ), .A1(n2779), .B0(\String[24][4] ), .B1(
        n2780), .Y(n2684) );
  AOI221XL U3377 ( .A0(\String[25][4] ), .A1(n2777), .B0(\String[27][4] ), 
        .B1(n2778), .C0(n2684), .Y(n2689) );
  AO22X1 U3378 ( .A0(\String[22][4] ), .A1(n2783), .B0(\String[20][4] ), .B1(
        n2784), .Y(n2685) );
  AOI221XL U3379 ( .A0(\String[21][4] ), .A1(n2781), .B0(\String[23][4] ), 
        .B1(n2782), .C0(n2685), .Y(n2688) );
  AO22X1 U3380 ( .A0(\String[18][4] ), .A1(n2787), .B0(\String[16][4] ), .B1(
        n2788), .Y(n2686) );
  AOI221XL U3381 ( .A0(\String[17][4] ), .A1(n2785), .B0(\String[19][4] ), 
        .B1(n2786), .C0(n2686), .Y(n2687) );
  NAND4X1 U3382 ( .A(n2690), .B(n2689), .C(n2688), .D(n2687), .Y(n2691) );
  AOI222XL U3383 ( .A0(\String[32][4] ), .A1(Judge_String_count[5]), .B0(n2692), .B1(n2767), .C0(n2691), .C1(n2765), .Y(n2693) );
  CLKINVX1 U3384 ( .A(n2693), .Y(N705) );
  AO22X1 U3385 ( .A0(\String[14][5] ), .A1(n2775), .B0(\String[12][5] ), .B1(
        n2776), .Y(n2694) );
  AOI221XL U3386 ( .A0(\String[13][5] ), .A1(n2773), .B0(\String[15][5] ), 
        .B1(n2774), .C0(n2694), .Y(n2701) );
  AO22X1 U3387 ( .A0(\String[10][5] ), .A1(n2779), .B0(\String[8][5] ), .B1(
        n2780), .Y(n2695) );
  AOI221XL U3388 ( .A0(\String[9][5] ), .A1(n2777), .B0(\String[11][5] ), .B1(
        n2778), .C0(n2695), .Y(n2700) );
  AO22X1 U3389 ( .A0(\String[6][5] ), .A1(n2783), .B0(\String[4][5] ), .B1(
        n2784), .Y(n2696) );
  AOI221XL U3390 ( .A0(\String[5][5] ), .A1(n2781), .B0(\String[7][5] ), .B1(
        n2782), .C0(n2696), .Y(n2699) );
  AO22X1 U3391 ( .A0(\String[2][5] ), .A1(n2787), .B0(s[5]), .B1(n2788), .Y(
        n2697) );
  AOI221XL U3392 ( .A0(\String[1][5] ), .A1(n2785), .B0(\String[3][5] ), .B1(
        n2786), .C0(n2697), .Y(n2698) );
  NAND4X1 U3393 ( .A(n2701), .B(n2700), .C(n2699), .D(n2698), .Y(n2711) );
  AO22X1 U3394 ( .A0(\String[30][5] ), .A1(n2775), .B0(\String[28][5] ), .B1(
        n2776), .Y(n2702) );
  AOI221XL U3395 ( .A0(\String[29][5] ), .A1(n2773), .B0(\String[31][5] ), 
        .B1(n2774), .C0(n2702), .Y(n2709) );
  AO22X1 U3396 ( .A0(\String[26][5] ), .A1(n2779), .B0(\String[24][5] ), .B1(
        n2780), .Y(n2703) );
  AOI221XL U3397 ( .A0(\String[25][5] ), .A1(n2777), .B0(\String[27][5] ), 
        .B1(n2778), .C0(n2703), .Y(n2708) );
  AO22X1 U3398 ( .A0(\String[22][5] ), .A1(n2783), .B0(\String[20][5] ), .B1(
        n2784), .Y(n2704) );
  AOI221XL U3399 ( .A0(\String[21][5] ), .A1(n2781), .B0(\String[23][5] ), 
        .B1(n2782), .C0(n2704), .Y(n2707) );
  AO22X1 U3400 ( .A0(\String[18][5] ), .A1(n2787), .B0(\String[16][5] ), .B1(
        n2788), .Y(n2705) );
  AOI221XL U3401 ( .A0(\String[17][5] ), .A1(n2785), .B0(\String[19][5] ), 
        .B1(n2786), .C0(n2705), .Y(n2706) );
  NAND4X1 U3402 ( .A(n2709), .B(n2708), .C(n2707), .D(n2706), .Y(n2710) );
  AOI222XL U3403 ( .A0(\String[32][5] ), .A1(Judge_String_count[5]), .B0(n2711), .B1(n2767), .C0(n2710), .C1(n2765), .Y(n2712) );
  CLKINVX1 U3404 ( .A(n2712), .Y(N704) );
  AO22X1 U3405 ( .A0(\String[14][6] ), .A1(n2775), .B0(\String[12][6] ), .B1(
        n2776), .Y(n2713) );
  AOI221XL U3406 ( .A0(\String[13][6] ), .A1(n2773), .B0(\String[15][6] ), 
        .B1(n2774), .C0(n2713), .Y(n2720) );
  AO22X1 U3407 ( .A0(\String[10][6] ), .A1(n2779), .B0(\String[8][6] ), .B1(
        n2780), .Y(n2714) );
  AOI221XL U3408 ( .A0(\String[9][6] ), .A1(n2777), .B0(\String[11][6] ), .B1(
        n2778), .C0(n2714), .Y(n2719) );
  AO22X1 U3409 ( .A0(\String[6][6] ), .A1(n2783), .B0(\String[4][6] ), .B1(
        n2784), .Y(n2715) );
  AOI221XL U3410 ( .A0(\String[5][6] ), .A1(n2781), .B0(\String[7][6] ), .B1(
        n2782), .C0(n2715), .Y(n2718) );
  AO22X1 U3411 ( .A0(\String[2][6] ), .A1(n2787), .B0(s[6]), .B1(n2788), .Y(
        n2716) );
  AOI221XL U3412 ( .A0(\String[1][6] ), .A1(n2785), .B0(\String[3][6] ), .B1(
        n2786), .C0(n2716), .Y(n2717) );
  NAND4X1 U3413 ( .A(n2720), .B(n2719), .C(n2718), .D(n2717), .Y(n2730) );
  AO22X1 U3414 ( .A0(\String[30][6] ), .A1(n2775), .B0(\String[28][6] ), .B1(
        n2776), .Y(n2721) );
  AOI221XL U3415 ( .A0(\String[29][6] ), .A1(n2773), .B0(\String[31][6] ), 
        .B1(n2774), .C0(n2721), .Y(n2728) );
  AO22X1 U3416 ( .A0(\String[26][6] ), .A1(n2779), .B0(\String[24][6] ), .B1(
        n2780), .Y(n2722) );
  AOI221XL U3417 ( .A0(\String[25][6] ), .A1(n2777), .B0(\String[27][6] ), 
        .B1(n2778), .C0(n2722), .Y(n2727) );
  AO22X1 U3418 ( .A0(\String[22][6] ), .A1(n2783), .B0(\String[20][6] ), .B1(
        n2784), .Y(n2723) );
  AOI221XL U3419 ( .A0(\String[21][6] ), .A1(n2781), .B0(\String[23][6] ), 
        .B1(n2782), .C0(n2723), .Y(n2726) );
  AO22X1 U3420 ( .A0(\String[18][6] ), .A1(n2787), .B0(\String[16][6] ), .B1(
        n2788), .Y(n2724) );
  AOI221XL U3421 ( .A0(\String[17][6] ), .A1(n2785), .B0(\String[19][6] ), 
        .B1(n2786), .C0(n2724), .Y(n2725) );
  NAND4X1 U3422 ( .A(n2728), .B(n2727), .C(n2726), .D(n2725), .Y(n2729) );
  AOI222XL U3423 ( .A0(\String[32][6] ), .A1(Judge_String_count[5]), .B0(n2730), .B1(n2767), .C0(n2729), .C1(n2765), .Y(n2731) );
  CLKINVX1 U3424 ( .A(n2731), .Y(N703) );
  AO22X1 U3425 ( .A0(\String[14][7] ), .A1(n2775), .B0(\String[12][7] ), .B1(
        n2776), .Y(n2732) );
  AOI221XL U3426 ( .A0(\String[13][7] ), .A1(n2773), .B0(\String[15][7] ), 
        .B1(n2774), .C0(n2732), .Y(n2739) );
  AO22X1 U3427 ( .A0(\String[10][7] ), .A1(n2779), .B0(\String[8][7] ), .B1(
        n2780), .Y(n2733) );
  AOI221XL U3428 ( .A0(\String[9][7] ), .A1(n2777), .B0(\String[11][7] ), .B1(
        n2778), .C0(n2733), .Y(n2738) );
  AO22X1 U3429 ( .A0(\String[6][7] ), .A1(n2783), .B0(\String[4][7] ), .B1(
        n2784), .Y(n2734) );
  AOI221XL U3430 ( .A0(\String[5][7] ), .A1(n2781), .B0(\String[7][7] ), .B1(
        n2782), .C0(n2734), .Y(n2737) );
  AO22X1 U3431 ( .A0(\String[2][7] ), .A1(n2787), .B0(s[7]), .B1(n2788), .Y(
        n2735) );
  AOI221XL U3432 ( .A0(\String[1][7] ), .A1(n2785), .B0(\String[3][7] ), .B1(
        n2786), .C0(n2735), .Y(n2736) );
  NAND4X1 U3433 ( .A(n2739), .B(n2738), .C(n2737), .D(n2736), .Y(n2766) );
  AO22X1 U3434 ( .A0(\String[30][7] ), .A1(n2775), .B0(\String[28][7] ), .B1(
        n2776), .Y(n2742) );
  AOI221XL U3435 ( .A0(\String[29][7] ), .A1(n2773), .B0(\String[31][7] ), 
        .B1(n2774), .C0(n2742), .Y(n2763) );
  AO22X1 U3436 ( .A0(\String[26][7] ), .A1(n2779), .B0(\String[24][7] ), .B1(
        n2780), .Y(n2747) );
  AOI221XL U3437 ( .A0(\String[25][7] ), .A1(n2777), .B0(\String[27][7] ), 
        .B1(n2778), .C0(n2747), .Y(n2762) );
  AO22X1 U3438 ( .A0(\String[22][7] ), .A1(n2783), .B0(\String[20][7] ), .B1(
        n2784), .Y(n2752) );
  AOI221XL U3439 ( .A0(\String[21][7] ), .A1(n2781), .B0(\String[23][7] ), 
        .B1(n2782), .C0(n2752), .Y(n2761) );
  AO22X1 U3440 ( .A0(\String[18][7] ), .A1(n2787), .B0(\String[16][7] ), .B1(
        n2788), .Y(n2757) );
  AOI221XL U3441 ( .A0(\String[17][7] ), .A1(n2785), .B0(\String[19][7] ), 
        .B1(n2786), .C0(n2757), .Y(n2760) );
  NAND4X1 U3442 ( .A(n2763), .B(n2762), .C(n2761), .D(n2760), .Y(n2764) );
  AOI222XL U3443 ( .A0(\String[32][7] ), .A1(Judge_String_count[5]), .B0(n2767), .B1(n2766), .C0(n2765), .C1(n2764), .Y(n2768) );
  CLKINVX1 U3444 ( .A(n2768), .Y(N702) );
  AO22X1 U3445 ( .A0(\Pattern[4][0] ), .A1(n2826), .B0(\p[0] ), .B1(n2825), 
        .Y(n2789) );
  AOI221XL U3446 ( .A0(\Pattern[1][0] ), .A1(n2837), .B0(\Pattern[5][0] ), 
        .B1(n2838), .C0(n2789), .Y(n2793) );
  AO22X1 U3447 ( .A0(\Pattern[6][0] ), .A1(n2826), .B0(\Pattern[2][0] ), .B1(
        n2825), .Y(n2790) );
  AOI221XL U3448 ( .A0(\Pattern[3][0] ), .A1(n2837), .B0(\Pattern[7][0] ), 
        .B1(n2838), .C0(n2790), .Y(n2792) );
  NAND2X1 U3449 ( .A(\Pattern[8][0] ), .B(Judge_Pattern_count[3]), .Y(n2791)
         );
  AO22X1 U3450 ( .A0(\Pattern[4][1] ), .A1(n2826), .B0(\p[1] ), .B1(n2825), 
        .Y(n2794) );
  AOI221XL U3451 ( .A0(\Pattern[1][1] ), .A1(n2837), .B0(\Pattern[5][1] ), 
        .B1(n2838), .C0(n2794), .Y(n2798) );
  AO22X1 U3452 ( .A0(\Pattern[6][1] ), .A1(n2826), .B0(\Pattern[2][1] ), .B1(
        n2825), .Y(n2795) );
  AOI221XL U3453 ( .A0(\Pattern[3][1] ), .A1(n2837), .B0(\Pattern[7][1] ), 
        .B1(n2838), .C0(n2795), .Y(n2797) );
  NAND2X1 U3454 ( .A(\Pattern[8][1] ), .B(Judge_Pattern_count[3]), .Y(n2796)
         );
  AO22X1 U3455 ( .A0(\Pattern[4][2] ), .A1(n2826), .B0(\p[2] ), .B1(n2825), 
        .Y(n2799) );
  AOI221XL U3456 ( .A0(\Pattern[1][2] ), .A1(n2837), .B0(\Pattern[5][2] ), 
        .B1(n2838), .C0(n2799), .Y(n2803) );
  AO22X1 U3457 ( .A0(\Pattern[6][2] ), .A1(n2826), .B0(\Pattern[2][2] ), .B1(
        n2825), .Y(n2800) );
  AOI221XL U3458 ( .A0(\Pattern[3][2] ), .A1(n2837), .B0(\Pattern[7][2] ), 
        .B1(n2838), .C0(n2800), .Y(n2802) );
  NAND2X1 U3459 ( .A(\Pattern[8][2] ), .B(Judge_Pattern_count[3]), .Y(n2801)
         );
  OAI221XL U3460 ( .A0(n2833), .A1(n2803), .B0(n2831), .B1(n2802), .C0(n2801), 
        .Y(N854) );
  AO22X1 U3461 ( .A0(\Pattern[4][3] ), .A1(n2826), .B0(\p[3] ), .B1(n2825), 
        .Y(n2804) );
  AOI221XL U3462 ( .A0(\Pattern[1][3] ), .A1(n2837), .B0(\Pattern[5][3] ), 
        .B1(n2838), .C0(n2804), .Y(n2808) );
  AO22X1 U3463 ( .A0(\Pattern[6][3] ), .A1(n2826), .B0(\Pattern[2][3] ), .B1(
        n2825), .Y(n2805) );
  AOI221XL U3464 ( .A0(\Pattern[3][3] ), .A1(n2837), .B0(\Pattern[7][3] ), 
        .B1(n2838), .C0(n2805), .Y(n2807) );
  NAND2X1 U3465 ( .A(\Pattern[8][3] ), .B(Judge_Pattern_count[3]), .Y(n2806)
         );
  OAI221XL U3466 ( .A0(n2833), .A1(n2808), .B0(n2831), .B1(n2807), .C0(n2806), 
        .Y(N853) );
  AO22X1 U3467 ( .A0(\Pattern[4][4] ), .A1(n2826), .B0(\p[4] ), .B1(n2825), 
        .Y(n2809) );
  AOI221XL U3468 ( .A0(\Pattern[1][4] ), .A1(n2837), .B0(\Pattern[5][4] ), 
        .B1(n2838), .C0(n2809), .Y(n2813) );
  AO22X1 U3469 ( .A0(\Pattern[6][4] ), .A1(n2826), .B0(\Pattern[2][4] ), .B1(
        n2825), .Y(n2810) );
  AOI221XL U3470 ( .A0(\Pattern[3][4] ), .A1(n2837), .B0(\Pattern[7][4] ), 
        .B1(n2838), .C0(n2810), .Y(n2812) );
  NAND2X1 U3471 ( .A(\Pattern[8][4] ), .B(Judge_Pattern_count[3]), .Y(n2811)
         );
  AO22X1 U3472 ( .A0(\Pattern[4][5] ), .A1(n2826), .B0(\p[5] ), .B1(n2825), 
        .Y(n2814) );
  AOI221XL U3473 ( .A0(\Pattern[1][5] ), .A1(n2837), .B0(\Pattern[5][5] ), 
        .B1(n2838), .C0(n2814), .Y(n2818) );
  AO22X1 U3474 ( .A0(\Pattern[6][5] ), .A1(n2826), .B0(\Pattern[2][5] ), .B1(
        n2825), .Y(n2815) );
  AOI221XL U3475 ( .A0(\Pattern[3][5] ), .A1(n2837), .B0(\Pattern[7][5] ), 
        .B1(n2838), .C0(n2815), .Y(n2817) );
  NAND2X1 U3476 ( .A(\Pattern[8][5] ), .B(Judge_Pattern_count[3]), .Y(n2816)
         );
  OAI221XL U3477 ( .A0(n2833), .A1(n2818), .B0(n2831), .B1(n2817), .C0(n2816), 
        .Y(N851) );
  AO22X1 U3478 ( .A0(\Pattern[4][6] ), .A1(n2826), .B0(\p[6] ), .B1(n2825), 
        .Y(n2819) );
  AOI221XL U3479 ( .A0(\Pattern[1][6] ), .A1(n2837), .B0(\Pattern[5][6] ), 
        .B1(n2838), .C0(n2819), .Y(n2823) );
  AO22X1 U3480 ( .A0(\Pattern[6][6] ), .A1(n2826), .B0(\Pattern[2][6] ), .B1(
        n2825), .Y(n2820) );
  AOI221XL U3481 ( .A0(\Pattern[3][6] ), .A1(n2837), .B0(\Pattern[7][6] ), 
        .B1(n2838), .C0(n2820), .Y(n2822) );
  NAND2X1 U3482 ( .A(\Pattern[8][6] ), .B(Judge_Pattern_count[3]), .Y(n2821)
         );
  AO22X1 U3483 ( .A0(\Pattern[4][7] ), .A1(n2826), .B0(\p[7] ), .B1(n2825), 
        .Y(n2824) );
  AOI221XL U3484 ( .A0(\Pattern[1][7] ), .A1(n2837), .B0(\Pattern[5][7] ), 
        .B1(n2838), .C0(n2824), .Y(n2834) );
  AO22X1 U3485 ( .A0(\Pattern[6][7] ), .A1(n2826), .B0(\Pattern[2][7] ), .B1(
        n2825), .Y(n2827) );
  AOI221XL U3486 ( .A0(\Pattern[3][7] ), .A1(n2837), .B0(\Pattern[7][7] ), 
        .B1(n2838), .C0(n2827), .Y(n2832) );
  NAND2X1 U3487 ( .A(\Pattern[8][7] ), .B(Judge_Pattern_count[3]), .Y(n2830)
         );
  XOR2X1 U3488 ( .A(\r518/carry [5]), .B(Judge_String_count[5]), .Y(N878) );
  XOR2X1 U3489 ( .A(\add_101/carry [5]), .B(String_count[5]), .Y(N764) );
  XOR2X1 U3490 ( .A(\add_139/carry [4]), .B(Judge_String_count[4]), .Y(N902)
         );
endmodule

