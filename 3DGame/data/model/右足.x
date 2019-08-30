xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 273;
 0.89906;0.25037;1.86010;,
 0.11181;0.16937;2.21210;,
 0.06426;-1.02753;1.77555;,
 0.83186;-0.96658;1.46585;,
 -0.32754;-4.41838;-3.00100;,
 0.04766;-4.41528;-3.09795;,
 0.00656;-4.50733;-2.90100;,
 -0.47934;-4.47543;-2.84005;,
 -0.72069;-4.55473;-2.49200;,
 -0.05029;-4.60218;-2.59085;,
 -1.56079;1.73592;0.43165;,
 -1.06599;1.85647;-0.38310;,
 -1.05039;0.74052;-0.45605;,
 -1.50914;0.60537;0.29030;,
 1.39166;1.81032;1.14230;,
 0.98286;1.50107;2.16620;,
 1.30656;0.43102;1.02110;,
 1.06011;-2.50203;0.26125;,
 1.15126;-1.72923;0.49535;,
 0.76511;-1.84753;1.16055;,
 0.69431;-2.60113;0.89690;,
 1.23236;-0.81813;0.73620;,
 -0.26719;0.79542;-0.76795;,
 -0.29449;-0.46888;-0.82280;,
 -1.03214;-0.52098;-0.56670;,
 -1.39839;0.42632;1.23445;,
 -0.76154;0.26082;1.96780;,
 -0.73799;1.55997;2.31765;,
 -1.46204;1.87627;1.42780;,
 0.00581;-2.65748;1.16725;,
 -0.05774;-3.49488;0.92260;,
 0.61506;-3.43593;0.62800;,
 -1.34634;-0.84983;0.93140;,
 -0.75974;-0.98373;1.56535;,
 1.39166;1.81032;1.14230;,
 1.20421;1.71162;0.09650;,
 1.22056;2.02247;0.10325;,
 1.23841;2.33392;0.09695;,
 -1.57714;2.04492;0.46625;,
 0.03771;-1.90238;1.43945;,
 -0.11929;-4.27183;0.67565;,
 0.50821;-4.21398;0.37635;,
 -0.72979;-1.89518;1.25425;,
 -0.70454;-2.67173;0.99125;,
 1.15096;0.62922;0.04100;,
 0.54506;0.75947;-0.59575;,
 0.59121;1.85982;-0.59290;,
 1.08461;-0.64663;-0.10300;,
 0.49266;-0.51733;-0.64725;,
 -1.00509;-4.19188;0.02785;,
 -0.70239;-4.27898;0.48365;,
 -0.71669;-3.51153;0.73330;,
 -1.11559;-3.43743;0.25290;,
 -1.19434;-2.59838;0.47550;,
 -1.27479;-1.79698;0.69000;,
 1.01321;-1.57908;-0.25730;,
 0.44796;-1.45173;-0.74655;,
 -1.29619;-2.42643;-0.22455;,
 -1.19894;-3.26558;-0.43030;,
 -1.45304;-0.66983;0.09650;,
 -0.30219;-1.39928;-0.91295;,
 -0.29724;-2.13353;-1.07500;,
 0.41356;-2.22458;-0.90120;,
 0.43296;-3.79033;-1.44445;,
 0.75871;-3.94898;-0.86120;,
 0.68401;-4.49498;-1.10805;,
 0.62131;-4.33888;-1.78730;,
 0.95561;-3.33603;-0.00350;,
 -0.24054;1.90307;-0.74785;,
 0.93441;-2.36378;-0.43130;,
 -0.99604;-1.45483;-0.69575;,
 -1.38149;-1.62083;-0.06200;,
 -0.08884;-4.78723;-1.94395;,
 -0.12939;-4.97503;-1.21995;,
 -0.85289;-4.89898;-1.03110;,
 -0.97764;-4.71733;-1.73635;,
 -0.95869;-2.23488;-0.86175;,
 0.50821;-4.21398;0.37635;,
 -0.11929;-4.27183;0.67565;,
 -0.14529;-4.84523;0.39685;,
 0.35446;-4.79738;0.16440;,
 -0.14384;-5.17963;0.10090;,
 0.23976;-5.05353;0.00415;,
 0.39206;-3.01688;-1.11875;,
 -0.28669;-2.80938;-1.34570;,
 -0.26594;-3.32728;-1.66870;,
 0.43296;-3.79033;-1.44445;,
 -0.93654;-3.03528;-1.08325;,
 -0.95564;-3.81878;-1.39675;,
 -0.11929;-4.27183;0.67565;,
 -0.70239;-4.27898;0.48365;,
 -0.59764;-4.83843;0.24530;,
 -0.14529;-4.84523;0.39685;,
 -1.10139;-4.01933;-0.65130;,
 0.81896;-4.10103;-0.25425;,
 -0.60929;-5.06928;-0.37135;,
 -0.49034;-5.08038;0.07345;,
 -0.82954;-4.73938;-0.19395;,
 -1.00509;-4.19188;0.02785;,
 0.58926;-4.33398;-2.15935;,
 0.42586;-4.01253;-1.94770;,
 0.60466;-4.63303;-2.05090;,
 0.56901;-4.56583;-2.36380;,
 0.51546;-4.51508;-2.62215;,
 0.55096;-4.35163;-2.49540;,
 0.43256;-4.12398;-2.36785;,
 -0.95564;-3.81878;-1.39675;,
 -0.26594;-3.32728;-1.66870;,
 -0.22974;-3.58958;-1.99035;,
 -0.85369;-4.02483;-1.87795;,
 -0.14384;-5.17963;0.10090;,
 0.60466;-4.63303;-2.05090;,
 0.54086;-4.83153;-1.28280;,
 0.54086;-4.83153;-1.28280;,
 -1.10139;-4.01933;-0.65130;,
 -1.01519;-4.56873;-0.85960;,
 0.81896;-4.10103;-0.25425;,
 0.63106;-4.66678;-0.44650;,
 0.23976;-5.05353;0.00415;,
 -0.14384;-5.17963;0.10090;,
 -0.10669;-5.15808;-0.51220;,
 0.40521;-5.01953;-0.55650;,
 0.40521;-5.01953;-0.55650;,
 -0.15714;-3.76973;-2.37035;,
 -0.68259;-4.12913;-2.34125;,
 0.01611;-4.13053;-3.01940;,
 -0.05589;-3.97648;-2.76290;,
 0.41896;-4.21868;-2.71515;,
 0.37366;-4.26323;-2.89505;,
 -0.45609;-4.21778;-2.76010;,
 0.50421;-4.36308;-2.77615;,
 0.46291;-4.46808;-2.85525;,
 0.40086;-4.42263;-2.97355;,
 0.43046;-4.35628;-2.96810;,
 -0.49034;-5.08038;0.07345;,
 -0.60929;-5.06928;-0.37135;,
 -0.31784;-4.25753;-2.95455;,
 -0.07674;-4.69523;-2.27440;,
 -0.90009;-4.63483;-2.11575;,
 0.05001;-4.27943;-3.13340;,
 0.04766;-4.41528;-3.09795;,
 0.40086;-4.42263;-2.97355;,
 0.46291;-4.46808;-2.85525;,
 0.51546;-4.51508;-2.62215;,
 0.84586;-3.19618;-0.63410;,
 0.56901;-4.56583;-2.36380;,
 -0.53614;-4.36573;-2.78915;,
 -0.33309;-4.34673;-3.02980;,
 -0.32754;-4.41838;-3.00100;,
 -0.47934;-4.47543;-2.84005;,
 -0.72069;-4.55473;-2.49200;,
 -0.80039;-4.37343;-2.39220;,
 -0.99504;-4.37108;-1.95905;,
 -1.07169;-4.39068;-1.56045;,
 -0.90009;-4.63483;-2.11575;,
 -0.97764;-4.71733;-1.73635;,
 -0.85289;-4.89898;-1.03110;,
 0.75871;-3.94898;-0.86120;,
 1.15126;-1.72923;0.49535;,
 1.06011;-2.50203;0.26125;,
 -1.59654;2.35427;0.49525;,
 1.30656;0.43102;1.02110;,
 1.23236;-0.81813;0.73620;,
 0.18336;1.42392;2.57705;,
 0.95561;-3.33603;-0.00350;,
 0.81896;-4.10103;-0.25425;,
 -0.23359;2.21567;-0.74460;,
 0.60496;2.17202;-0.59530;,
 -0.22669;2.52827;-0.74145;,
 0.61951;2.48417;-0.60225;,
 -1.07264;2.16777;-0.36450;,
 -1.07929;2.47917;-0.34595;,
 0.19801;1.62787;2.62230;,
 -0.73229;1.76492;2.36260;,
 1.00081;1.70742;2.20045;,
 1.00081;1.70742;2.20045;,
 -0.14779;1.09672;0.22870;,
 0.18291;1.09127;0.70685;,
 -0.14779;1.06517;0.81300;,
 -0.14779;1.09672;0.22870;,
 0.38736;1.15962;0.42900;,
 -0.14779;1.09672;0.22870;,
 0.38736;1.24412;0.08555;,
 -0.14779;1.09672;0.22870;,
 0.18291;1.31252;-0.19235;,
 -0.14779;1.09672;0.22870;,
 -0.14779;1.33862;-0.29845;,
 -0.14779;1.09672;0.22870;,
 -0.47854;1.31252;-0.19235;,
 -0.14779;1.09672;0.22870;,
 -0.68294;1.24412;0.08555;,
 -0.14779;1.09672;0.22870;,
 -0.68294;1.15962;0.42900;,
 -0.14779;1.09672;0.22870;,
 -0.47854;1.09127;0.70685;,
 -0.14779;1.09672;0.22870;,
 -0.14779;1.06517;0.81300;,
 0.46331;1.29697;1.16945;,
 -0.14779;1.24872;1.36555;,
 0.84101;1.42332;0.65600;,
 0.84101;1.57942;0.02135;,
 0.46331;1.70577;-0.49210;,
 -0.14779;1.75402;-0.68820;,
 -0.75894;1.70577;-0.49210;,
 -1.13664;1.57947;0.02135;,
 -1.13664;1.42332;0.65600;,
 -0.75894;1.29697;1.16945;,
 -0.14779;1.24872;1.36555;,
 0.65066;1.68252;1.54595;,
 -0.14779;1.61947;1.80220;,
 1.14416;1.84757;0.87515;,
 1.14416;2.05157;0.04590;,
 0.61951;2.48417;-0.60225;,
 -0.22669;2.52827;-0.74145;,
 -1.07929;2.47917;-0.34595;,
 -1.43974;1.84757;0.87515;,
 -1.07929;2.47917;-0.34595;,
 -0.94629;1.68252;1.54595;,
 -0.14779;1.61947;1.80220;,
 0.71646;2.18922;1.77910;,
 -0.14779;2.12097;2.05645;,
 1.25061;2.36787;1.05300;,
 1.23841;2.33392;0.09695;,
 0.58386;2.76737;-0.57065;,
 -0.14779;2.83557;-0.70570;,
 -1.01209;2.76737;-0.35010;,
 -1.54619;2.36787;1.05300;,
 -1.48529;2.77482;0.33785;,
 -1.01209;2.18922;1.77910;,
 -0.14779;2.12097;2.05645;,
 0.65066;2.73992;1.83340;,
 -0.14779;2.67687;2.08965;,
 1.14416;2.90497;1.16260;,
 1.17416;3.11052;0.06970;,
 0.56876;3.27057;-0.34905;,
 -0.14779;3.33707;-0.59370;,
 -0.94629;3.27407;-0.33745;,
 -1.37454;3.10902;0.33335;,
 -1.43974;2.90497;1.16260;,
 -0.94629;2.73992;1.83340;,
 -0.14779;2.67687;2.08965;,
 0.46331;3.25082;1.70060;,
 -0.14779;3.20257;1.89670;,
 0.84101;3.37712;1.18715;,
 0.56116;3.79577;0.23585;,
 0.32486;3.64727;0.00300;,
 -0.14779;3.70787;-0.15705;,
 -0.68254;3.68622;-0.05175;,
 -1.09384;3.53327;0.55250;,
 -1.13664;3.37712;1.18715;,
 -0.75894;3.25082;1.70060;,
 -0.14779;3.20257;1.89670;,
 0.18291;3.64407;1.40085;,
 -0.14779;3.61797;1.50695;,
 0.38736;3.71242;1.12295;,
 0.38736;3.79692;0.77950;,
 -0.27059;3.94952;0.28315;,
 -0.68294;3.70372;0.77950;,
 -0.27059;3.94952;0.28315;,
 -0.66534;3.66507;1.11120;,
 -0.47854;3.64407;1.40085;,
 -0.14779;3.61797;1.50695;,
 -0.14779;3.85987;0.97980;,
 -0.14779;3.85987;0.97980;,
 -0.14779;3.85987;0.97980;,
 -0.14779;3.85987;0.97980;,
 -0.14779;3.85987;0.97980;,
 -0.14779;3.85987;0.97980;,
 -0.14779;3.85987;0.97980;,
 -0.14779;3.85987;0.97980;,
 -0.27059;3.94952;0.28315;,
 -0.27059;3.94952;0.28315;,
 -1.07929;2.47917;-0.34595;;
 
 212;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,7,6,9;,
 4;10,11,12,13;,
 4;14,15,0,16;,
 4;17,18,19,20;,
 4;3,19,18,21;,
 4;12,22,23,24;,
 4;25,26,27,28;,
 4;20,29,30,31;,
 4;32,33,26,25;,
 3;34,35,36;,
 3;34,36,37;,
 3;10,28,38;,
 4;3,2,39,19;,
 4;31,30,40,41;,
 4;2,33,42,39;,
 4;19,39,29,20;,
 4;39,42,43,29;,
 4;2,1,26,33;,
 4;35,44,45,46;,
 4;45,44,47,48;,
 4;3,21,16,0;,
 4;49,50,51,52;,
 4;52,51,43,53;,
 4;23,22,45,48;,
 4;32,54,42,33;,
 4;47,55,56,48;,
 4;57,58,52,53;,
 4;25,13,59,32;,
 4;23,48,56,60;,
 4;61,60,56,62;,
 4;63,64,65,66;,
 4;43,42,54,53;,
 4;17,20,31,67;,
 4;46,45,22,68;,
 4;56,55,69,62;,
 4;24,70,71,59;,
 4;72,73,74,75;,
 4;71,70,76,57;,
 4;77,78,79,80;,
 4;24,23,60,70;,
 4;80,79,81,82;,
 4;61,62,83,84;,
 4;70,60,61,76;,
 4;85,84,83,86;,
 4;76,61,84,87;,
 4;29,43,51,30;,
 4;87,84,85,88;,
 4;89,90,91,92;,
 4;30,51,50,40;,
 4;52,58,93,49;,
 4;94,67,31,41;,
 4;95,96,91,97;,
 4;97,91,90,98;,
 4;99,100,63,66;,
 4;99,66,101,102;,
 4;99,102,103,104;,
 4;99,104,105,100;,
 4;106,107,108,109;,
 4;92,91,96,110;,
 4;72,111,112,73;,
 4;66,65,113,101;,
 4;114,115,97,98;,
 4;116,77,80,117;,
 4;118,119,120,121;,
 4;117,80,82,122;,
 4;123,124,109,108;,
 4;125,126,127,128;,
 4;123,126,129,124;,
 4;127,126,123,105;,
 4;130,131,132,133;,
 4;130,133,128,127;,
 4;130,127,105,104;,
 4;130,104,103,131;,
 4;119,134,135,120;,
 4;129,126,125,136;,
 4;8,9,137,138;,
 4;125,128,133,139;,
 4;138,137,72,75;,
 4;140,139,133,132;,
 4;5,141,142,6;,
 4;9,6,142,143;,
 4;62,69,144,83;,
 4;9,143,145,137;,
 4;72,137,145,111;,
 4;107,63,100,108;,
 4;146,147,148,149;,
 4;146,149,150,151;,
 4;146,151,124,129;,
 4;146,129,136,147;,
 4;152,153,106,109;,
 4;152,109,124,151;,
 4;152,151,150,154;,
 4;152,154,155,153;,
 4;97,115,156,95;,
 4;105,123,108,100;,
 4;136,125,139,147;,
 4;86,83,144,157;,
 4;148,147,139,140;,
 4;69,55,158,159;,
 4;106,153,115,114;,
 3;38,28,160;,
 4;47,44,161,162;,
 4;57,53,54,71;,
 4;27,26,1,163;,
 4;157,144,164,165;,
 4;71,54,32,59;,
 4;122,113,65,117;,
 4;164,144,69,159;,
 4;120,135,74,73;,
 4;117,65,64,116;,
 4;155,156,115,153;,
 4;57,76,87,58;,
 4;88,93,58,87;,
 4;73,112,121,120;,
 4;158,55,47,162;,
 4;24,59,13,12;,
 4;46,68,166,167;,
 4;167,166,168,169;,
 4;68,11,170,166;,
 4;166,170,171,168;,
 4;10,13,25,28;,
 4;161,44,35,34;,
 4;160,171,170,38;,
 4;38,170,11,10;,
 4;35,46,167,36;,
 4;36,167,169,37;,
 4;68,22,12,11;,
 4;27,163,172,173;,
 4;163,15,174,172;,
 3;28,27,173;,
 3;15,14,175;,
 4;163,1,0,15;,
 3;176,177,178;,
 3;179,180,177;,
 3;181,182,180;,
 3;183,184,182;,
 3;185,186,184;,
 3;187,188,186;,
 3;189,190,188;,
 3;191,192,190;,
 3;193,194,192;,
 3;195,196,194;,
 4;178,177,197,198;,
 4;177,180,199,197;,
 4;180,182,200,199;,
 4;182,184,201,200;,
 4;184,186,202,201;,
 4;186,188,203,202;,
 4;188,190,204,203;,
 4;190,192,205,204;,
 4;192,194,206,205;,
 4;194,196,207,206;,
 4;198,197,208,209;,
 4;197,199,210,208;,
 4;199,200,211,210;,
 4;200,201,212,211;,
 4;201,202,213,212;,
 4;202,203,214,213;,
 4;204,205,215,216;,
 4;205,206,217,215;,
 4;206,207,218,217;,
 4;209,208,219,220;,
 4;208,210,221,219;,
 4;210,211,222,221;,
 4;211,212,223,222;,
 4;212,213,224,223;,
 4;213,214,225,224;,
 4;216,215,226,227;,
 4;215,217,228,226;,
 4;217,218,229,228;,
 4;220,219,230,231;,
 4;219,221,232,230;,
 4;221,222,233,232;,
 4;222,223,234,233;,
 4;223,224,235,234;,
 4;224,225,236,235;,
 4;225,227,237,236;,
 4;227,226,238,237;,
 4;226,228,239,238;,
 4;228,229,240,239;,
 4;231,230,241,242;,
 4;230,232,243,241;,
 4;232,233,244,243;,
 4;233,234,245,244;,
 4;234,235,246,245;,
 4;235,236,247,246;,
 4;236,237,248,247;,
 4;237,238,249,248;,
 4;238,239,250,249;,
 4;239,240,251,250;,
 4;242,241,252,253;,
 4;241,243,254,252;,
 4;243,244,255,254;,
 4;244,245,256,255;,
 4;247,248,257,258;,
 4;248,249,259,257;,
 4;249,250,260,259;,
 4;250,251,261,260;,
 3;253,252,262;,
 3;252,254,263;,
 3;254,255,264;,
 3;255,256,265;,
 3;258,257,266;,
 3;257,259,267;,
 3;259,260,268;,
 3;260,261,269;,
 3;270,246,247;,
 3;271,245,246;,
 3;272,203,204;,
 3;272,227,225;;
 
 MeshMaterialList {
  1;
  212;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  213;
  0.958708;0.250655;-0.134357;,
  0.926246;0.221260;-0.305143;,
  -0.777140;0.186212;-0.601148;,
  -0.935551;0.127209;-0.329487;,
  0.955906;0.236626;-0.173927;,
  -0.852094;0.184691;-0.489719;,
  0.483292;0.011878;-0.875378;,
  -0.644824;0.043692;-0.763081;,
  0.703855;-0.230131;0.672032;,
  -0.545430;-0.230891;0.805726;,
  0.073560;-0.301662;0.950573;,
  -0.086682;0.036981;-0.995549;,
  -0.497818;-0.294074;0.815903;,
  0.467053;0.116901;-0.876468;,
  0.650314;-0.295867;0.699681;,
  0.070817;-0.346168;0.935496;,
  -0.045171;0.152618;-0.987252;,
  -0.630992;0.097078;-0.769692;,
  0.597706;0.266846;-0.756003;,
  0.671293;-0.297172;0.679010;,
  -0.542672;-0.265121;0.797006;,
  0.075563;-0.311461;0.947250;,
  -0.032160;0.389407;-0.920504;,
  -0.747317;0.206305;-0.631629;,
  0.656294;-0.516602;0.549910;,
  0.695708;0.261324;-0.669104;,
  -0.578074;-0.545987;0.606406;,
  -0.549972;0.171071;-0.817475;,
  0.070614;-0.554681;0.829061;,
  0.007172;-0.936799;-0.349794;,
  0.017661;-0.966606;-0.255659;,
  -0.120914;-0.956850;-0.264232;,
  -0.107636;-0.923980;-0.366981;,
  0.068891;0.229006;-0.970984;,
  -0.991401;-0.045285;-0.122775;,
  0.982564;0.124369;-0.138204;,
  0.723987;0.647991;-0.236539;,
  -0.573874;0.686175;-0.447026;,
  -0.586325;0.626474;-0.513570;,
  -0.736955;0.554088;-0.387150;,
  0.991415;-0.000732;-0.130751;,
  0.927513;-0.171938;-0.331899;,
  -0.916960;-0.117130;0.381397;,
  -0.975656;-0.015735;-0.218741;,
  -0.977210;-0.042625;-0.207949;,
  -0.898597;-0.184245;0.398218;,
  -0.913940;-0.193329;0.356845;,
  -0.990341;-0.053664;-0.127847;,
  0.003299;0.889892;-0.456160;,
  0.635335;0.720548;-0.277777;,
  -0.859984;-0.454912;0.231262;,
  -0.953301;-0.295762;0.061166;,
  0.902790;-0.410700;0.127656;,
  0.979989;-0.175246;-0.094392;,
  0.975544;-0.174755;0.133319;,
  0.910857;0.037636;-0.411003;,
  0.979308;-0.145208;0.140963;,
  0.873096;0.017441;-0.487237;,
  0.988228;-0.093902;0.120781;,
  0.891822;-0.015869;-0.452107;,
  0.011903;-0.963109;-0.268847;,
  -0.110435;-0.951303;-0.287795;,
  0.039701;-0.647838;-0.760743;,
  -0.394674;-0.519623;-0.757776;,
  0.686698;0.696157;-0.209312;,
  -0.518428;0.732247;-0.441641;,
  -0.657228;0.607037;-0.446718;,
  0.979687;-0.077302;-0.185035;,
  -0.629451;0.063144;-0.774470;,
  0.067768;-0.340458;0.937814;,
  0.469981;0.053949;-0.881026;,
  0.669020;-0.272571;0.691460;,
  -0.061214;0.076985;-0.995151;,
  -0.518078;-0.277139;0.809190;,
  -0.669139;0.149728;-0.727897;,
  0.074739;-0.321388;0.943994;,
  0.502821;0.188618;-0.843561;,
  0.653290;-0.293568;0.697875;,
  -0.037427;0.257870;-0.965454;,
  -0.504737;-0.273397;0.818838;,
  -0.863151;0.317635;-0.392528;,
  0.073155;-0.382564;0.921028;,
  0.781271;0.427482;-0.454835;,
  0.681589;-0.363169;0.635252;,
  -0.027434;0.665219;-0.746144;,
  -0.583579;-0.353281;0.731183;,
  -0.136699;-0.959679;-0.245621;,
  0.056457;-0.912607;0.404922;,
  0.992153;-0.099391;-0.075857;,
  0.536846;-0.772948;0.338155;,
  0.018364;-0.969374;-0.244900;,
  -0.461006;-0.814058;0.353246;,
  0.521745;-0.498605;-0.692225;,
  0.549030;0.715724;-0.431630;,
  -0.481418;0.625907;-0.613577;,
  0.033867;0.783133;-0.620932;,
  -0.975480;-0.024514;-0.218717;,
  -0.907111;-0.153195;0.392023;,
  -0.982559;-0.047434;-0.179799;,
  -0.901101;-0.187059;0.391185;,
  -0.995621;-0.089858;-0.025770;,
  -0.913147;-0.272414;0.303238;,
  -0.591350;-0.802253;-0.081821;,
  -0.548809;-0.834975;0.040307;,
  0.013000;-0.972750;-0.231491;,
  0.021748;-0.992973;-0.116329;,
  0.880022;0.003743;-0.474917;,
  0.983598;-0.116887;0.137373;,
  0.880785;0.030888;-0.472508;,
  0.977655;-0.157947;0.138719;,
  0.964727;0.022173;-0.262318;,
  0.959657;-0.246298;0.135631;,
  0.597358;-0.801974;-0.001412;,
  0.464222;-0.868874;-0.171919;,
  -0.658199;0.028776;-0.752294;,
  -0.663661;0.021147;-0.747734;,
  0.488665;-0.012440;-0.872383;,
  0.485468;-0.026601;-0.873850;,
  -0.111071;0.018874;-0.993633;,
  -0.125816;0.012482;-0.991975;,
  -0.975007;-0.035992;-0.219240;,
  -0.975853;-0.022736;-0.217241;,
  -0.975444;-0.031689;-0.217956;,
  0.897877;-0.035684;-0.438798;,
  0.898231;-0.049912;-0.436681;,
  0.736560;-0.192761;0.648323;,
  0.748847;-0.181867;0.637301;,
  0.087505;-0.243274;0.966002;,
  0.095163;-0.214230;0.972136;,
  -0.567057;-0.158751;0.808235;,
  -0.562800;-0.179654;0.806834;,
  -0.943238;-0.091415;0.319289;,
  0.995572;-0.085108;0.039923;,
  0.000000;-0.970930;-0.239362;,
  0.000007;-0.991285;0.131738;,
  0.218265;-0.973754;0.064521;,
  0.354252;-0.928406;-0.112109;,
  0.356169;-0.873262;-0.332503;,
  0.221387;-0.829216;-0.513214;,
  0.000007;-0.812503;-0.582957;,
  -0.221394;-0.829221;-0.513203;,
  -0.356179;-0.873261;-0.332493;,
  -0.354248;-0.928404;-0.112136;,
  -0.218256;-0.973757;0.064504;,
  0.000009;-0.872515;0.488587;,
  0.407898;-0.837994;0.362471;,
  0.661046;-0.749634;0.032658;,
  0.671122;-0.626947;-0.395643;,
  0.413635;-0.492898;-0.765479;,
  -0.037144;-0.414018;-0.909510;,
  -0.479152;-0.447421;-0.755134;,
  -0.727095;-0.545318;-0.417087;,
  -0.702652;-0.711501;0.006804;,
  -0.407896;-0.837998;0.362464;,
  0.000009;-0.620593;0.784133;,
  0.541446;-0.573497;0.614766;,
  0.865588;-0.468593;0.176574;,
  0.869468;-0.290908;-0.399246;,
  0.486513;-0.068886;-0.870953;,
  -0.107599;0.016173;-0.994063;,
  -0.740296;-0.055485;-0.669988;,
  -0.906950;-0.411924;0.088090;,
  -0.541455;-0.573491;0.614764;,
  0.000009;-0.261452;0.965216;,
  0.593015;-0.210524;0.777183;,
  0.950523;-0.111707;0.289876;,
  0.915855;-0.003561;-0.401493;,
  0.489201;0.161168;-0.857151;,
  -0.081262;0.181263;-0.980072;,
  -0.624011;0.171345;-0.762398;,
  -0.927624;0.108109;-0.357529;,
  -0.970558;-0.071293;0.230074;,
  -0.593026;-0.210522;0.777175;,
  0.000009;0.146981;0.989139;,
  0.548233;0.191838;0.814026;,
  0.880094;0.315296;0.354997;,
  0.827517;0.445114;-0.342184;,
  0.442824;0.494033;-0.748224;,
  -0.002239;0.517911;-0.855432;,
  -0.578135;0.463897;-0.671237;,
  -0.882282;0.426566;-0.199050;,
  -0.880334;0.327789;0.342880;,
  -0.548242;0.191832;0.814022;,
  0.000009;0.526695;0.850054;,
  0.415146;0.558849;0.717873;,
  0.656004;0.659497;0.367046;,
  0.544966;0.821166;-0.169405;,
  0.295567;0.819028;-0.491766;,
  0.049073;0.821013;-0.568796;,
  -0.401469;0.824294;-0.399201;,
  -0.646796;0.762224;-0.025867;,
  -0.657883;0.673329;0.337370;,
  -0.423073;0.569561;0.704706;,
  0.000007;0.812504;0.582955;,
  0.221427;0.829227;0.513179;,
  0.357745;0.873296;0.330714;,
  0.281213;0.957817;0.059210;,
  -0.064945;0.983070;-0.171332;,
  -0.400410;0.909623;0.110716;,
  -0.398440;0.882613;0.249479;,
  -0.259760;0.841218;0.474213;,
  -0.055183;0.962205;0.266678;,
  0.172976;-0.955671;-0.238269;,
  0.975635;-0.213039;-0.052456;,
  0.497719;0.827018;-0.261374;,
  0.121986;-0.936834;-0.327814;,
  0.134053;-0.960021;-0.245741;,
  0.155892;-0.957637;-0.242134;,
  0.541048;0.773313;-0.330536;,
  -0.771345;-0.140959;-0.620610;,
  -0.858453;-0.107011;-0.501605;,
  -0.933601;-0.150822;-0.325026;,
  -0.954085;-0.283502;-0.096693;;
  212;
  4;8,10,69,71;,
  4;63,62,29,32;,
  4;61,32,29,60;,
  4;121,114,7,43;,
  4;132,125,8,58;,
  4;109,56,14,77;,
  4;71,14,56,107;,
  4;7,11,72,68;,
  4;42,9,130,131;,
  4;77,75,21,19;,
  4;97,73,9,42;,
  3;132,123,124;,
  3;132,124,166;,
  3;121,131,122;,
  4;71,69,15,14;,
  4;19,21,81,83;,
  4;69,73,12,15;,
  4;14,15,75,77;,
  4;15,12,79,75;,
  4;69,10,9,73;,
  4;123,59,6,116;,
  4;6,59,106,70;,
  4;71,107,58,8;,
  4;101,85,20,46;,
  4;46,20,79,99;,
  4;72,11,6,70;,
  4;97,45,12,73;,
  4;106,57,13,70;,
  4;98,47,46,99;,
  4;42,43,96,97;,
  4;72,70,13,16;,
  4;78,16,13,76;,
  4;82,110,53,35;,
  4;79,12,45,99;,
  4;109,77,19,54;,
  4;116,6,11,118;,
  4;13,57,108,76;,
  4;68,17,44,96;,
  4;90,104,102,86;,
  4;44,17,74,98;,
  4;83,81,28,24;,
  4;68,72,16,17;,
  4;24,28,87,89;,
  4;78,76,18,22;,
  4;17,16,78,74;,
  4;84,22,18,82;,
  4;74,78,22,23;,
  4;75,79,20,21;,
  4;23,22,84,80;,
  4;81,85,26,28;,
  4;21,20,85,81;,
  4;46,47,100,101;,
  4;111,54,19,83;,
  4;103,91,26,50;,
  4;50,26,85,101;,
  4;0,36,82,35;,
  4;0,35,88,40;,
  4;0,40,67,4;,
  4;0,4,64,36;,
  4;80,84,37,39;,
  4;28,26,91,87;,
  4;90,202,113,104;,
  4;35,53,203,88;,
  4;100,51,50,101;,
  4;111,83,24,52;,
  4;89,87,105,112;,
  4;52,24,89,112;,
  4;65,66,39,37;,
  4;95,48,49,93;,
  4;65,48,38,66;,
  4;49,48,204,64;,
  4;1,41,92,25;,
  4;1,25,93,49;,
  4;1,49,64,4;,
  4;1,4,67,41;,
  4;87,91,103,105;,
  4;38,48,95,94;,
  4;61,60,30,31;,
  4;95,93,25,33;,
  4;31,30,90,86;,
  4;62,33,25,92;,
  4;62,92,205,29;,
  4;60,29,205,206;,
  4;76,108,55,18;,
  4;60,206,207,30;,
  4;90,30,207,202;,
  4;84,82,36,208;,
  4;2,27,63,209;,
  4;2,209,210,5;,
  4;2,5,66,38;,
  4;2,38,94,27;,
  4;3,34,80,39;,
  4;3,39,66,5;,
  4;3,5,210,211;,
  4;3,211,212,34;,
  4;50,51,102,103;,
  4;64,204,208,36;,
  4;94,95,33,27;,
  4;82,18,55,110;,
  4;63,27,33,62;,
  4;108,57,56,109;,
  4;80,34,51,100;,
  3;122,131,120;,
  4;106,59,58,107;,
  4;98,99,45,44;,
  4;130,9,10,127;,
  4;110,55,54,111;,
  4;44,45,97,96;,
  4;112,113,53,52;,
  4;54,55,108,109;,
  4;105,103,102,104;,
  4;52,53,110,111;,
  4;212,102,51,34;,
  4;98,74,23,47;,
  4;80,100,47,23;,
  4;104,113,112,105;,
  4;56,57,106,107;,
  4;68,96,43,7;,
  4;116,118,119,117;,
  4;117,119,159,158;,
  4;118,114,115,119;,
  4;119,115,160,159;,
  4;121,43,42,131;,
  4;58,59,123,132;,
  4;120,160,115,122;,
  4;122,115,114,121;,
  4;123,116,117,124;,
  4;124,117,158,166;,
  4;118,11,7,114;,
  4;130,127,128,129;,
  4;127,125,126,128;,
  3;131,130,129;,
  3;125,132,126;,
  4;127,10,8,125;,
  3;133,135,134;,
  3;133,136,135;,
  3;133,137,136;,
  3;133,138,137;,
  3;133,139,138;,
  3;133,140,139;,
  3;133,141,140;,
  3;133,142,141;,
  3;133,143,142;,
  3;133,134,143;,
  4;134,135,145,144;,
  4;135,136,146,145;,
  4;136,137,147,146;,
  4;137,138,148,147;,
  4;138,139,149,148;,
  4;139,140,150,149;,
  4;140,141,151,150;,
  4;141,142,152,151;,
  4;142,143,153,152;,
  4;143,134,144,153;,
  4;144,145,155,154;,
  4;145,146,156,155;,
  4;146,147,157,156;,
  4;147,148,158,157;,
  4;148,149,159,158;,
  4;149,150,160,159;,
  4;151,152,161,160;,
  4;152,153,162,161;,
  4;153,144,154,162;,
  4;154,155,164,163;,
  4;155,156,165,164;,
  4;156,157,166,165;,
  4;157,158,167,166;,
  4;158,159,168,167;,
  4;159,160,169,168;,
  4;160,161,171,170;,
  4;161,162,172,171;,
  4;162,154,163,172;,
  4;163,164,174,173;,
  4;164,165,175,174;,
  4;165,166,176,175;,
  4;166,167,177,176;,
  4;167,168,178,177;,
  4;168,169,179,178;,
  4;169,170,180,179;,
  4;170,171,181,180;,
  4;171,172,182,181;,
  4;172,163,173,182;,
  4;173,174,184,183;,
  4;174,175,185,184;,
  4;175,176,186,185;,
  4;176,177,187,186;,
  4;177,178,188,187;,
  4;178,179,189,188;,
  4;179,180,190,189;,
  4;180,181,191,190;,
  4;181,182,192,191;,
  4;182,173,183,192;,
  4;183,184,194,193;,
  4;184,185,195,194;,
  4;185,186,196,195;,
  4;186,187,197,196;,
  4;189,190,198,197;,
  4;190,191,199,198;,
  4;191,192,200,199;,
  4;192,183,193,200;,
  3;193,194,201;,
  3;194,195,201;,
  3;195,196,201;,
  3;196,197,201;,
  3;197,198,201;,
  3;198,199,201;,
  3;199,200,201;,
  3;200,193,201;,
  3;197,188,189;,
  3;197,187,188;,
  3;160,150,151;,
  3;160,170,169;;
 }
 MeshTextureCoords {
  273;
  0.830390;0.147700;,
  0.803930;0.152320;,
  0.797520;0.115820;,
  0.823030;0.111250;,
  0.292710;0.670380;,
  0.274900;0.654330;,
  0.288940;0.645800;,
  0.306590;0.664010;,
  0.319830;0.657890;,
  0.301970;0.638000;,
  0.713120;0.196070;,
  0.681530;0.194710;,
  0.684930;0.159710;,
  0.714270;0.160560;,
  0.868510;0.169450;,
  0.839920;0.184430;,
  0.858390;0.141000;,
  0.836490;0.054910;,
  0.841350;0.077850;,
  0.817730;0.084180;,
  0.813540;0.060650;,
  0.848340;0.104800;,
  0.656990;0.157430;,
  0.662530;0.116890;,
  0.689000;0.119460;,
  0.745520;0.159750;,
  0.776170;0.156860;,
  0.782140;0.196980;,
  0.745370;0.204720;,
  0.789910;0.063910;,
  0.785830;0.037590;,
  0.809510;0.034820;,
  0.743530;0.119790;,
  0.771100;0.118410;,
  0.561750;0.177600;,
  0.595600;0.179680;,
  0.594000;0.189110;,
  0.592660;0.198470;,
  0.712760;0.205760;,
  0.793320;0.088170;,
  0.781430;0.010250;,
  0.805560;0.007820;,
  0.768260;0.089360;,
  0.766230;0.064180;,
  0.601520;0.146900;,
  0.629800;0.153460;,
  0.624670;0.187590;,
  0.609270;0.107850;,
  0.635760;0.112950;,
  0.743520;0.009140;,
  0.760620;0.009670;,
  0.763580;0.037340;,
  0.743130;0.036630;,
  0.742850;0.063600;,
  0.742810;0.089530;,
  0.614810;0.078670;,
  0.640130;0.082200;,
  0.719260;0.063350;,
  0.720740;0.035900;,
  0.715580;0.120220;,
  0.666490;0.085780;,
  0.669330;0.060130;,
  0.643930;0.057210;,
  0.358510;0.540470;,
  0.334240;0.542540;,
  0.325220;0.523370;,
  0.346380;0.513800;,
  0.832840;0.030710;,
  0.652110;0.192060;,
  0.619260;0.054890;,
  0.692280;0.088730;,
  0.717390;0.089640;,
  0.324190;0.625570;,
  0.352740;0.611350;,
  0.371650;0.634870;,
  0.343860;0.646810;,
  0.694850;0.062300;,
  0.282950;0.575390;,
  0.254620;0.593130;,
  0.246240;0.571710;,
  0.274220;0.551590;,
  0.237850;0.550290;,
  0.265490;0.527790;,
  0.648180;0.033970;,
  0.671510;0.035970;,
  0.673360;0.012550;,
  0.652660;0.011600;,
  0.696800;0.034990;,
  0.698440;0.007230;,
  0.472080;0.639270;,
  0.463120;0.620490;,
  0.474310;0.611840;,
  0.485420;0.633390;,
  0.722030;0.007870;,
  0.829800;0.005890;,
  0.474410;0.576950;,
  0.485500;0.603190;,
  0.462810;0.588610;,
  0.451200;0.600270;,
  0.355470;0.507050;,
  0.365920;0.527010;,
  0.336180;0.490820;,
  0.345740;0.482900;,
  0.357140;0.474540;,
  0.365070;0.497880;,
  0.373640;0.516940;,
  0.421140;0.554130;,
  0.388950;0.551320;,
  0.391180;0.543620;,
  0.420830;0.539510;,
  0.498760;0.627510;,
  0.307140;0.601290;,
  0.334370;0.587200;,
  0.316190;0.504190;,
  0.437500;0.575840;,
  0.450180;0.564580;,
  0.307800;0.556680;,
  0.299170;0.536200;,
  0.395430;0.574290;,
  0.406050;0.590230;,
  0.380850;0.599260;,
  0.365250;0.576580;,
  0.290530;0.515710;,
  0.394660;0.531630;,
  0.419630;0.527730;,
  0.407140;0.489150;,
  0.400670;0.511060;,
  0.382320;0.501220;,
  0.389590;0.488040;,
  0.419950;0.510180;,
  0.376560;0.485750;,
  0.372170;0.466210;,
  0.388350;0.459870;,
  0.388910;0.475410;,
  0.413010;0.606540;,
  0.397280;0.621030;,
  0.420640;0.496470;,
  0.312960;0.631660;,
  0.331780;0.652290;,
  0.412000;0.473130;,
  0.416070;0.460060;,
  0.264780;0.633350;,
  0.275970;0.623170;,
  0.286720;0.614130;,
  0.623730;0.032070;,
  0.296580;0.607380;,
  0.428840;0.503980;,
  0.426310;0.488520;,
  0.433520;0.480680;,
  0.437440;0.495620;,
  0.440480;0.510070;,
  0.430460;0.519880;,
  0.433490;0.531240;,
  0.437910;0.541100;,
  0.445120;0.520970;,
  0.450740;0.530710;,
  0.462860;0.553330;,
  0.628220;0.009710;,
  0.589810;0.075150;,
  0.595390;0.052760;,
  0.712310;0.215460;,
  0.570590;0.138010;,
  0.581910;0.101840;,
  0.811980;0.190330;,
  0.599730;0.029460;,
  0.603450;0.005720;,
  0.650730;0.201830;,
  0.623220;0.197280;,
  0.649360;0.211380;,
  0.621770;0.206740;,
  0.680580;0.204480;,
  0.679690;0.214120;,
  0.813470;0.196550;,
  0.783120;0.203380;,
  0.841850;0.190420;,
  0.841070;0.187190;,
  0.050000;0.000000;,
  0.100000;0.125000;,
  0.000000;0.125000;,
  0.150000;0.000000;,
  0.200000;0.125000;,
  0.250000;0.000000;,
  0.300000;0.125000;,
  0.350000;0.000000;,
  0.400000;0.125000;,
  0.450000;0.000000;,
  0.500000;0.125000;,
  0.550000;0.000000;,
  0.600000;0.125000;,
  0.650000;0.000000;,
  0.700000;0.125000;,
  0.750000;0.000000;,
  0.800000;0.125000;,
  0.850000;0.000000;,
  0.900000;0.125000;,
  0.950000;0.000000;,
  1.000000;0.125000;,
  0.100000;0.250000;,
  0.000000;0.250000;,
  0.200000;0.250000;,
  0.300000;0.250000;,
  0.400000;0.250000;,
  0.500000;0.250000;,
  0.600000;0.250000;,
  0.700000;0.250000;,
  0.800000;0.250000;,
  0.900000;0.250000;,
  1.000000;0.250000;,
  0.100000;0.375000;,
  0.000000;0.375000;,
  0.200000;0.375000;,
  0.300000;0.375000;,
  0.400000;0.375000;,
  0.500000;0.375000;,
  0.600000;0.375000;,
  0.800000;0.375000;,
  0.700000;0.375000;,
  0.900000;0.375000;,
  1.000000;0.375000;,
  0.100000;0.500000;,
  0.000000;0.500000;,
  0.200000;0.500000;,
  0.300000;0.500000;,
  0.400000;0.500000;,
  0.500000;0.500000;,
  0.600000;0.500000;,
  0.800000;0.500000;,
  0.700000;0.500000;,
  0.900000;0.500000;,
  1.000000;0.500000;,
  0.100000;0.625000;,
  0.000000;0.625000;,
  0.200000;0.625000;,
  0.300000;0.625000;,
  0.400000;0.625000;,
  0.500000;0.625000;,
  0.600000;0.625000;,
  0.700000;0.625000;,
  0.800000;0.625000;,
  0.900000;0.625000;,
  1.000000;0.625000;,
  0.100000;0.750000;,
  0.000000;0.750000;,
  0.200000;0.750000;,
  0.300000;0.750000;,
  0.400000;0.750000;,
  0.500000;0.750000;,
  0.600000;0.750000;,
  0.700000;0.750000;,
  0.800000;0.750000;,
  0.900000;0.750000;,
  1.000000;0.750000;,
  0.100000;0.875000;,
  0.000000;0.875000;,
  0.200000;0.875000;,
  0.300000;0.875000;,
  0.400000;0.875000;,
  0.700000;0.875000;,
  0.600000;0.875000;,
  0.800000;0.875000;,
  0.900000;0.875000;,
  1.000000;0.875000;,
  0.050000;1.000000;,
  0.150000;1.000000;,
  0.250000;1.000000;,
  0.350000;1.000000;,
  0.650000;1.000000;,
  0.750000;1.000000;,
  0.850000;1.000000;,
  0.950000;1.000000;,
  0.550000;0.875000;,
  0.450000;0.875000;,
  0.650000;0.375000;;
 }
}
