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
 125;
 25.29747;-4.10957;-4.02402;,
 28.66091;2.28335;-6.87557;,
 23.05433;0.00000;2.52943;,
 25.51322;4.06988;2.53388;,
 22.91121;-4.99622;-12.98791;,
 23.97017;1.27984;-13.58633;,
 25.83598;8.58025;-15.28376;,
 31.65956;8.58025;-9.23856;,
 30.87825;8.58025;0.86149;,
 14.93676;-7.24829;-17.73150;,
 16.64116;3.02975;-17.48510;,
 8.75831;-1.91817;-19.79461;,
 10.76226;1.57634;-26.42373;,
 17.58636;8.58025;-21.14869;,
 10.42744;8.58025;-25.31612;,
 16.50937;14.08382;-17.31014;,
 21.44186;16.43130;-11.49162;,
 9.18991;14.29803;-21.22233;,
 8.14411;18.12154;-17.76283;,
 13.76639;19.16885;-13.90243;,
 18.64943;20.21084;-9.82995;,
 30.07237;15.73458;4.74953;,
 29.53406;14.46348;-8.33266;,
 21.03263;18.95637;-2.86436;,
 25.30631;19.92393;2.53352;,
 13.99548;22.32923;2.51302;,
 14.71202;19.76534;11.48414;,
 10.22023;22.49004;-3.58398;,
 1.92230;20.64083;2.53327;,
 5.93820;19.90342;7.95289;,
 11.09697;18.18176;14.91486;,
 5.57433;21.83067;-9.26196;,
 1.37301;20.29743;-16.32980;,
 -2.58714;21.56910;-3.55239;,
 -5.87304;17.42487;-7.98685;,
 -9.94478;20.39587;2.51179;,
 -7.58687;26.35471;9.57949;,
 -13.61619;17.75179;-2.78777;,
 -21.25213;17.98193;2.49131;,
 -19.36634;20.50211;9.39199;,
 -18.19492;22.69396;17.52387;,
 2.93148;18.47703;18.53370;,
 -1.75876;23.19827;16.96468;,
 -10.48911;16.59946;19.50677;,
 -3.45895;16.64669;22.58894;,
 -12.73452;13.05480;22.49152;,
 -4.95479;13.02863;25.28275;,
 -21.76752;13.74632;20.17113;,
 -21.13979;7.53199;19.70020;,
 -13.25830;7.53199;23.00217;,
 -3.97953;7.53199;26.02914;,
 -23.46223;12.97898;12.48307;,
 -23.32006;12.82027;4.35078;,
 -30.43829;7.53199;15.91412;,
 -21.84534;7.53199;2.49023;,
 -25.89151;-0.47856;13.06313;,
 -20.26996;1.25065;18.97758;,
 -24.75056;1.34735;2.48498;,
 -21.92987;-4.33207;3.77975;,
 -16.64220;-3.55347;8.58860;,
 -16.81269;-5.57227;16.41576;,
 -3.50052;1.93498;24.44459;,
 -14.30822;1.44879;24.58073;,
 -7.63953;-1.77882;17.45739;,
 -3.37726;-0.72648;20.06426;,
 -1.49655;-5.27286;13.84284;,
 2.43653;-2.47303;16.65420;,
 -7.79656;-9.36423;9.73487;,
 1.92230;-6.76250;2.53327;,
 5.84233;-5.71737;7.82352;,
 9.42083;-3.18570;12.65284;,
 -12.31045;-8.01522;2.50750;,
 -13.02299;-2.30222;-2.59214;,
 -2.92911;-7.65929;-4.01389;,
 -7.23122;-4.08453;-9.81977;,
 6.08734;-6.68112;-10.95904;,
 11.00565;-10.02118;-4.16596;,
 1.41470;-2.02607;-14.53080;,
 8.75831;-1.91817;-19.79461;,
 14.93676;-7.24829;-17.73150;,
 22.91121;-4.99622;-12.98791;,
 22.01896;-4.55415;9.30938;,
 16.56842;-7.24324;2.51769;,
 25.29747;-4.10957;-4.02402;,
 23.05433;0.00000;2.52943;,
 1.41470;-2.02607;-14.53080;,
 -1.06811;2.02212;-21.27900;,
 -7.23122;-4.08453;-9.81977;,
 -7.98601;2.35917;-10.83840;,
 -7.41293;7.53199;-9.74149;,
 -0.03772;8.58025;-22.91361;,
 -13.02299;-2.30222;-2.59214;,
 -18.24827;1.48217;-6.60598;,
 -21.92987;-4.33207;3.77975;,
 -24.75056;1.34735;2.48498;,
 -16.21889;7.53199;-5.77851;,
 -21.84534;7.53199;2.49023;,
 -19.99305;14.09321;-7.43215;,
 -9.43803;13.39770;-12.79795;,
 -23.32006;12.82027;4.35078;,
 -21.25213;17.98193;2.49131;,
 -13.61619;17.75179;-2.78777;,
 -5.87304;17.42487;-7.98685;,
 0.79484;15.38100;-19.16648;,
 1.37301;20.29743;-16.32980;,
 2.43653;-2.47303;16.65420;,
 6.46676;4.08048;23.83648;,
 -3.37726;-0.72648;20.06426;,
 -3.50052;1.93498;24.44459;,
 9.42083;-3.18570;12.65284;,
 11.38030;3.65771;15.29722;,
 15.70353;8.61564;15.24012;,
 5.99288;7.53199;20.02903;,
 -3.97953;7.53199;26.02914;,
 22.01896;-4.55415;9.30938;,
 20.38300;2.69850;16.09225;,
 23.58506;8.58025;9.66839;,
 19.89739;14.17051;15.39677;,
 13.75611;14.65807;16.78675;,
 14.71202;19.76534;11.48414;,
 11.09697;18.18176;14.91486;,
 -4.95479;13.02863;25.28275;,
 5.62502;13.63258;24.04699;,
 2.93148;18.47703;18.53370;,
 -3.45895;16.64669;22.58894;;
 
 192;
 3;0,1,2;,
 3;2,1,3;,
 3;4,5,0;,
 3;0,5,1;,
 3;5,6,1;,
 3;1,6,7;,
 3;1,7,3;,
 3;3,7,8;,
 3;4,9,5;,
 3;5,9,10;,
 3;9,11,10;,
 3;10,11,12;,
 3;10,12,13;,
 3;13,12,14;,
 3;5,10,6;,
 3;6,10,13;,
 3;13,15,6;,
 3;6,15,16;,
 3;14,17,13;,
 3;13,17,15;,
 3;17,18,15;,
 3;15,18,19;,
 3;15,19,16;,
 3;16,19,20;,
 3;8,7,21;,
 3;21,7,22;,
 3;7,6,22;,
 3;22,6,16;,
 3;22,16,23;,
 3;23,16,20;,
 3;21,22,24;,
 3;24,22,23;,
 3;23,25,24;,
 3;24,25,26;,
 3;20,27,23;,
 3;23,27,25;,
 3;27,28,25;,
 3;25,28,29;,
 3;25,29,26;,
 3;26,29,30;,
 3;20,19,27;,
 3;27,19,31;,
 3;19,18,31;,
 3;31,18,32;,
 3;31,32,33;,
 3;33,32,34;,
 3;27,31,28;,
 3;28,31,33;,
 3;33,35,28;,
 3;28,35,36;,
 3;34,37,33;,
 3;33,37,35;,
 3;37,38,35;,
 3;35,38,39;,
 3;35,39,36;,
 3;36,39,40;,
 3;30,29,41;,
 3;41,29,42;,
 3;29,28,42;,
 3;42,28,36;,
 3;42,36,43;,
 3;43,36,40;,
 3;41,42,44;,
 3;44,42,43;,
 3;43,45,44;,
 3;44,45,46;,
 3;40,47,43;,
 3;43,47,45;,
 3;47,48,45;,
 3;45,48,49;,
 3;45,49,46;,
 3;46,49,50;,
 3;40,39,47;,
 3;47,39,51;,
 3;39,38,51;,
 3;51,38,52;,
 3;51,52,53;,
 3;53,52,54;,
 3;47,51,48;,
 3;48,51,53;,
 3;53,55,48;,
 3;48,55,56;,
 3;54,57,53;,
 3;53,57,55;,
 3;57,58,55;,
 3;55,58,59;,
 3;55,59,56;,
 3;56,59,60;,
 3;50,49,61;,
 3;61,49,62;,
 3;49,48,62;,
 3;62,48,56;,
 3;62,56,63;,
 3;63,56,60;,
 3;61,62,64;,
 3;64,62,63;,
 3;63,65,64;,
 3;64,65,66;,
 3;60,67,63;,
 3;63,67,65;,
 3;67,68,65;,
 3;65,68,69;,
 3;65,69,66;,
 3;66,69,70;,
 3;60,59,67;,
 3;67,59,71;,
 3;59,58,71;,
 3;71,58,72;,
 3;71,72,73;,
 3;73,72,74;,
 3;67,71,68;,
 3;68,71,73;,
 3;73,75,68;,
 3;68,75,76;,
 3;74,77,73;,
 3;73,77,75;,
 3;77,78,75;,
 3;75,78,79;,
 3;75,79,76;,
 3;76,79,80;,
 3;70,69,81;,
 3;81,69,82;,
 3;69,68,82;,
 3;82,68,76;,
 3;82,76,83;,
 3;83,76,80;,
 3;81,82,84;,
 3;84,82,83;,
 3;85,86,11;,
 3;11,86,12;,
 3;87,88,85;,
 3;85,88,86;,
 3;88,89,86;,
 3;86,89,90;,
 3;86,90,12;,
 3;12,90,14;,
 3;87,91,88;,
 3;88,91,92;,
 3;91,93,92;,
 3;92,93,94;,
 3;92,94,95;,
 3;95,94,96;,
 3;88,92,89;,
 3;89,92,95;,
 3;95,97,89;,
 3;89,97,98;,
 3;96,99,95;,
 3;95,99,97;,
 3;99,100,97;,
 3;97,100,101;,
 3;97,101,98;,
 3;98,101,102;,
 3;14,90,17;,
 3;17,90,103;,
 3;90,89,103;,
 3;103,89,98;,
 3;103,98,104;,
 3;104,98,102;,
 3;17,103,18;,
 3;18,103,104;,
 3;105,106,107;,
 3;107,106,108;,
 3;109,110,105;,
 3;105,110,106;,
 3;110,111,106;,
 3;106,111,112;,
 3;106,112,108;,
 3;108,112,113;,
 3;109,114,110;,
 3;110,114,115;,
 3;114,2,115;,
 3;115,2,3;,
 3;115,3,116;,
 3;116,3,8;,
 3;110,115,111;,
 3;111,115,116;,
 3;116,117,111;,
 3;111,117,118;,
 3;8,21,116;,
 3;116,21,117;,
 3;21,24,117;,
 3;117,24,119;,
 3;117,119,118;,
 3;118,119,120;,
 3;113,112,121;,
 3;121,112,122;,
 3;112,111,122;,
 3;122,111,118;,
 3;122,118,123;,
 3;123,118,120;,
 3;121,122,124;,
 3;124,122,123;;
 
 MeshMaterialList {
  1;
  192;
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
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  130;
  0.863086;-0.426994;0.269739;,
  0.296190;-0.026228;-0.954769;,
  0.396656;0.913390;0.091552;,
  0.157123;0.754369;-0.637370;,
  -0.052331;0.682741;0.728784;,
  -0.635421;0.738547;-0.225362;,
  0.060195;-0.837789;0.542666;,
  -0.502353;-0.834389;-0.226796;,
  0.185173;0.848414;0.495887;,
  -0.822876;0.166786;-0.543192;,
  -0.740504;-0.646678;-0.182922;,
  0.113164;-0.056302;0.991980;,
  -0.507594;-0.605440;-0.613018;,
  0.203423;-0.706082;0.678282;,
  0.800384;-0.189286;-0.568821;,
  0.134967;0.391399;-0.910270;,
  0.421048;0.860881;-0.285663;,
  0.838678;-0.415366;0.352264;,
  -0.452621;0.807199;-0.378900;,
  -0.731207;0.677756;-0.077349;,
  0.637638;-0.143155;-0.756918;,
  0.047012;0.998812;-0.012822;,
  -0.556475;0.014189;0.830743;,
  0.039309;-0.994433;0.097768;,
  -0.623318;-0.059797;-0.779678;,
  0.531494;-0.348678;0.771970;,
  0.885644;-0.459399;-0.067730;,
  0.510506;-0.284573;-0.811419;,
  0.418175;0.618021;-0.665717;,
  0.600233;0.697360;-0.391674;,
  0.060153;0.995946;0.066876;,
  0.036389;0.986269;-0.161089;,
  -0.198747;0.925933;-0.321167;,
  0.333376;0.867805;0.368476;,
  -0.293791;0.390359;0.872529;,
  -0.836178;0.515922;0.186095;,
  -0.360367;-0.697771;0.619073;,
  -0.371738;0.131535;0.918972;,
  0.133089;-0.874452;0.466499;,
  -0.175936;-0.976233;0.126553;,
  -0.298933;-0.889760;-0.344913;,
  0.312932;-0.919751;0.236923;,
  -0.387659;-0.719624;-0.576075;,
  -0.372564;-0.738775;-0.561612;,
  -0.723016;-0.343403;-0.599436;,
  -0.349152;0.526503;-0.775170;,
  0.413806;-0.761738;0.498517;,
  -0.118336;-0.336266;0.934303;,
  0.502031;-0.276248;0.819544;,
  0.432886;-0.352309;0.829751;,
  0.687849;-0.284405;-0.667815;,
  0.590363;0.177922;-0.787283;,
  0.494145;0.688937;-0.530270;,
  0.948412;-0.124809;-0.291440;,
  0.087201;0.992520;-0.085445;,
  -0.237557;0.959442;-0.151785;,
  -0.090326;0.919577;-0.382386;,
  0.122444;0.970645;0.207017;,
  -0.143619;0.312610;0.938961;,
  -0.662358;0.747995;0.042250;,
  -0.525467;-0.611658;0.591404;,
  -0.290018;0.098143;0.951976;,
  0.036909;-0.931014;0.363113;,
  -0.197059;-0.927249;-0.318397;,
  0.067408;-0.997700;-0.007073;,
  0.087230;-0.938853;0.333086;,
  -0.603022;-0.305854;-0.736762;,
  -0.735524;-0.006894;-0.677464;,
  -0.392714;-0.527959;-0.753018;,
  -0.494312;0.255470;-0.830898;,
  0.310979;-0.525751;0.791756;,
  0.734717;-0.193423;0.650214;,
  0.392468;0.471865;0.789501;,
  0.222583;0.597179;0.770606;,
  0.752414;-0.653869;0.079548;,
  0.434897;-0.084253;-0.896530;,
  0.702586;-0.402076;-0.587118;,
  0.127411;0.613908;-0.779027;,
  0.260925;0.823713;-0.503403;,
  0.370909;0.905933;-0.204233;,
  0.896388;0.286850;0.337944;,
  0.818723;-0.472061;0.326880;,
  -0.305572;0.825799;-0.474005;,
  -0.258233;0.879523;-0.399693;,
  -0.669184;0.729790;-0.139996;,
  -0.137656;0.646327;0.750541;,
  0.334940;0.780095;0.528457;,
  0.173242;0.860141;0.479735;,
  -0.936192;0.156332;-0.314809;,
  -0.889726;-0.059190;-0.452641;,
  -0.339087;-0.911364;0.233314;,
  -0.018271;-0.782745;0.622074;,
  0.109656;-0.451555;0.885480;,
  -0.039645;0.207143;0.977507;,
  -0.425072;-0.706505;-0.565830;,
  -0.349600;-0.752727;-0.557837;,
  0.030755;-0.773156;0.633469;,
  0.288736;-0.778711;0.556993;,
  0.889280;-0.291108;0.352757;,
  0.565846;-0.787549;-0.244100;,
  -0.170067;-0.860071;-0.480994;,
  0.482639;0.574503;-0.661065;,
  -0.367030;0.714874;0.595185;,
  -0.027804;0.717036;0.696482;,
  0.154601;0.476979;0.865211;,
  -0.952831;0.271316;0.136017;,
  -0.894885;-0.251761;-0.368507;,
  -0.331311;-0.477646;0.813688;,
  -0.873745;-0.454682;-0.172724;,
  -0.903172;-0.410509;-0.125552;,
  -0.057701;-0.917895;0.392607;,
  0.125756;-0.533720;0.836258;,
  -0.514504;-0.827538;-0.224647;,
  -0.382986;-0.641277;-0.664895;,
  -0.139865;-0.936540;-0.321450;,
  0.353761;-0.933750;-0.054447;,
  0.942703;-0.325211;-0.074486;,
  -0.327036;-0.315728;-0.890710;,
  -0.847417;0.111239;-0.519144;,
  -0.534136;0.281352;-0.797208;,
  -0.204449;0.885640;-0.416944;,
  -0.408582;0.771598;-0.487541;,
  -0.373193;-0.526782;-0.763693;,
  0.059203;0.743245;0.666394;,
  0.237264;0.476012;0.846829;,
  -0.115677;0.728709;0.674983;,
  0.364123;-0.414891;0.833834;,
  0.908221;-0.024654;0.417764;,
  0.354595;0.734108;0.579093;,
  0.197736;0.727925;0.656526;;
  192;
  3;74,26,0;,
  3;0,26,81;,
  3;14,50,74;,
  3;74,50,26;,
  3;50,20,26;,
  3;26,20,53;,
  3;26,98,81;,
  3;81,53,17;,
  3;14,75,50;,
  3;50,75,27;,
  3;75,1,27;,
  3;99,100,76;,
  3;27,76,51;,
  3;51,76,15;,
  3;50,27,20;,
  3;20,27,51;,
  3;51,28,101;,
  3;101,28,52;,
  3;15,77,51;,
  3;51,77,28;,
  3;77,3,28;,
  3;28,3,78;,
  3;28,78,52;,
  3;52,78,16;,
  3;17,53,80;,
  3;80,53,29;,
  3;53,20,29;,
  3;29,20,52;,
  3;29,52,79;,
  3;79,52,16;,
  3;80,29,2;,
  3;2,29,79;,
  3;79,30,2;,
  3;2,30,87;,
  3;16,54,79;,
  3;79,54,30;,
  3;54,21,30;,
  3;30,21,57;,
  3;30,57,87;,
  3;87,57,8;,
  3;16,78,54;,
  3;54,78,31;,
  3;78,3,31;,
  3;31,3,82;,
  3;31,82,55;,
  3;55,82,18;,
  3;54,31,21;,
  3;21,31,55;,
  3;55,32,21;,
  3;21,32,56;,
  3;18,83,55;,
  3;55,83,32;,
  3;83,5,32;,
  3;32,5,84;,
  3;32,84,56;,
  3;56,84,19;,
  3;8,57,86;,
  3;86,57,33;,
  3;57,21,33;,
  3;33,21,56;,
  3;102,103,85;,
  3;85,103,104;,
  3;86,33,4;,
  3;4,33,85;,
  3;85,34,4;,
  3;4,34,93;,
  3;104,58,85;,
  3;85,58,34;,
  3;58,22,34;,
  3;34,22,61;,
  3;34,61,93;,
  3;93,61,11;,
  3;19,84,105;,
  3;105,84,35;,
  3;84,5,35;,
  3;35,5,88;,
  3;35,88,59;,
  3;106,88,9;,
  3;105,35,22;,
  3;22,35,59;,
  3;107,36,22;,
  3;22,36,60;,
  3;9,89,59;,
  3;106,89,108;,
  3;89,7,108;,
  3;36,7,90;,
  3;36,90,60;,
  3;60,109,10;,
  3;11,61,92;,
  3;92,61,37;,
  3;61,22,37;,
  3;37,22,60;,
  3;110,60,91;,
  3;91,60,111;,
  3;92,110,6;,
  3;6,110,91;,
  3;91,38,6;,
  3;6,38,97;,
  3;111,62,91;,
  3;91,62,38;,
  3;62,23,38;,
  3;38,23,65;,
  3;38,65,97;,
  3;97,65,13;,
  3;10,90,112;,
  3;62,90,39;,
  3;90,7,39;,
  3;113,7,94;,
  3;113,94,63;,
  3;63,94,12;,
  3;62,39,23;,
  3;23,39,63;,
  3;63,40,23;,
  3;23,40,64;,
  3;12,95,63;,
  3;63,95,40;,
  3;95,100,40;,
  3;40,100,114;,
  3;40,114,64;,
  3;64,114,115;,
  3;13,65,96;,
  3;96,65,41;,
  3;65,23,41;,
  3;41,23,64;,
  3;41,64,74;,
  3;74,64,115;,
  3;116,41,0;,
  3;0,41,74;,
  3;95,42,100;,
  3;100,42,117;,
  3;12,66,95;,
  3;95,66,42;,
  3;66,24,118;,
  3;118,24,69;,
  3;42,69,117;,
  3;117,69,15;,
  3;12,94,66;,
  3;66,94,43;,
  3;94,7,43;,
  3;43,7,89;,
  3;119,89,67;,
  3;67,89,9;,
  3;66,119,24;,
  3;24,119,67;,
  3;67,44,24;,
  3;24,44,68;,
  3;9,88,67;,
  3;67,88,44;,
  3;88,5,44;,
  3;120,5,83;,
  3;120,83,121;,
  3;121,83,18;,
  3;15,69,77;,
  3;77,69,45;,
  3;69,24,45;,
  3;122,24,68;,
  3;45,121,82;,
  3;82,121,18;,
  3;77,45,3;,
  3;3,45,82;,
  3;97,46,6;,
  3;6,46,92;,
  3;13,70,97;,
  3;97,70,46;,
  3;70,25,46;,
  3;123,124,73;,
  3;123,73,125;,
  3;92,126,11;,
  3;13,96,70;,
  3;70,96,47;,
  3;116,0,127;,
  3;127,0,81;,
  3;127,81,71;,
  3;71,81,17;,
  3;70,47,124;,
  3;124,127,71;,
  3;71,48,25;,
  3;25,48,72;,
  3;17,80,71;,
  3;71,80,48;,
  3;80,2,128;,
  3;128,2,87;,
  3;128,87,72;,
  3;72,87,8;,
  3;11,73,93;,
  3;93,126,49;,
  3;126,25,49;,
  3;49,25,72;,
  3;129,72,86;,
  3;86,72,8;,
  3;93,129,4;,
  3;4,129,86;;
 }
 MeshTextureCoords {
  125;
  0.437500;0.000000;,
  0.437500;0.062500;,
  0.375000;0.000000;,
  0.375000;0.062500;,
  0.500000;0.000000;,
  0.500000;0.062500;,
  0.500000;0.125000;,
  0.437500;0.125000;,
  0.375000;0.125000;,
  0.562500;0.000000;,
  0.562500;0.062500;,
  0.625000;0.000000;,
  0.625000;0.062500;,
  0.562500;0.125000;,
  0.625000;0.125000;,
  0.562500;0.187500;,
  0.500000;0.187500;,
  0.625000;0.187500;,
  0.625000;0.250000;,
  0.562500;0.250000;,
  0.500000;0.250000;,
  0.375000;0.187500;,
  0.437500;0.187500;,
  0.437500;0.250000;,
  0.375000;0.250000;,
  0.437500;0.312500;,
  0.375000;0.312500;,
  0.500000;0.312500;,
  0.500000;0.375000;,
  0.437500;0.375000;,
  0.375000;0.375000;,
  0.562500;0.312500;,
  0.625000;0.312500;,
  0.562500;0.375000;,
  0.625000;0.375000;,
  0.562500;0.437500;,
  0.500000;0.437500;,
  0.625000;0.437500;,
  0.625000;0.500000;,
  0.562500;0.500000;,
  0.500000;0.500000;,
  0.375000;0.437500;,
  0.437500;0.437500;,
  0.437500;0.500000;,
  0.375000;0.500000;,
  0.437500;0.562500;,
  0.375000;0.562500;,
  0.500000;0.562500;,
  0.500000;0.625000;,
  0.437500;0.625000;,
  0.375000;0.625000;,
  0.562500;0.562500;,
  0.625000;0.562500;,
  0.562500;0.625000;,
  0.625000;0.625000;,
  0.562500;0.687500;,
  0.500000;0.687500;,
  0.625000;0.687500;,
  0.625000;0.750000;,
  0.562500;0.750000;,
  0.500000;0.750000;,
  0.375000;0.687500;,
  0.437500;0.687500;,
  0.437500;0.750000;,
  0.375000;0.750000;,
  0.437500;0.812500;,
  0.375000;0.812500;,
  0.500000;0.812500;,
  0.500000;0.875000;,
  0.437500;0.875000;,
  0.375000;0.875000;,
  0.562500;0.812500;,
  0.625000;0.812500;,
  0.562500;0.875000;,
  0.625000;0.875000;,
  0.562500;0.937500;,
  0.500000;0.937500;,
  0.625000;0.937500;,
  0.625000;1.000000;,
  0.562500;1.000000;,
  0.500000;1.000000;,
  0.375000;0.937500;,
  0.437500;0.937500;,
  0.437500;1.000000;,
  0.375000;1.000000;,
  0.687500;0.000000;,
  0.687500;0.062500;,
  0.750000;0.000000;,
  0.750000;0.062500;,
  0.750000;0.125000;,
  0.687500;0.125000;,
  0.812500;0.000000;,
  0.812500;0.062500;,
  0.875000;0.000000;,
  0.875000;0.062500;,
  0.812500;0.125000;,
  0.875000;0.125000;,
  0.812500;0.187500;,
  0.750000;0.187500;,
  0.875000;0.187500;,
  0.875000;0.250000;,
  0.812500;0.250000;,
  0.750000;0.250000;,
  0.687500;0.187500;,
  0.687500;0.250000;,
  0.187500;0.000000;,
  0.187500;0.062500;,
  0.125000;0.000000;,
  0.125000;0.062500;,
  0.250000;0.000000;,
  0.250000;0.062500;,
  0.250000;0.125000;,
  0.187500;0.125000;,
  0.125000;0.125000;,
  0.312500;0.000000;,
  0.312500;0.062500;,
  0.312500;0.125000;,
  0.312500;0.187500;,
  0.250000;0.187500;,
  0.312500;0.250000;,
  0.250000;0.250000;,
  0.125000;0.187500;,
  0.187500;0.187500;,
  0.187500;0.250000;,
  0.125000;0.250000;;
 }
}
