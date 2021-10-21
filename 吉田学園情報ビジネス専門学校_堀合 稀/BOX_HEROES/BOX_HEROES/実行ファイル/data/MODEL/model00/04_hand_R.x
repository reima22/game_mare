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
 135;
 -1.09938;-10.36841;-1.18405;,
 -0.36228;-10.40143;-3.28556;,
 -1.75901;-8.26075;-1.27774;,
 -0.07615;-12.74664;-2.85178;,
 -0.32725;-12.96501;-1.67100;,
 -0.66721;-8.45816;-4.70285;,
 -0.84358;-5.77565;-4.20275;,
 -2.17293;-5.70855;-1.30459;,
 -0.28552;-7.91125;-7.54401;,
 -1.31922;-10.43244;-7.78650;,
 -2.00193;-10.46519;-6.78946;,
 -1.49099;-10.26562;-4.87330;,
 -3.18382;-13.08837;-5.80191;,
 -3.23616;-13.25372;-4.57950;,
 0.50782;-19.54801;-7.89898;,
 0.52996;-19.36979;-8.82331;,
 -1.93174;-16.03944;-6.86099;,
 -0.05789;-19.40697;-9.20004;,
 -2.86600;-16.18211;-7.18270;,
 0.78457;-20.32498;-9.55520;,
 1.17755;-20.37530;-8.68266;,
 -4.44125;-8.01608;-6.83066;,
 -4.63265;-10.22951;-7.41622;,
 -5.07743;-10.17032;-3.38031;,
 -5.02052;-8.07888;-3.17792;,
 -5.08898;-12.79028;-6.69201;,
 -4.23470;-5.61702;-5.80082;,
 -4.93878;-5.60481;-2.91942;,
 -2.65139;-10.36642;-7.82715;,
 -2.08113;-5.70519;-6.59764;,
 -3.53062;-13.17574;-2.87258;,
 -1.67715;-13.09990;-1.84074;,
 -4.50702;-12.71016;-8.31637;,
 -0.28552;-7.91125;-7.54401;,
 -1.28096;-7.55116;-8.55019;,
 0.79705;-10.24574;-10.50177;,
 -2.57959;-8.78336;-8.83767;,
 1.35592;-12.59045;-11.58500;,
 0.36582;-12.86490;-11.64634;,
 -0.70037;-11.13999;-10.44916;,
 -2.07427;-18.56947;-10.69128;,
 -3.84105;-15.82818;-9.26916;,
 -2.84856;-15.66633;-9.04325;,
 -1.27959;-19.33623;-11.00656;,
 -1.27183;-18.25570;-10.43128;,
 -1.31922;-10.43244;-7.78650;,
 0.50782;-19.54801;-7.89898;,
 -1.62412;-16.16854;-5.99182;,
 -3.14207;-16.69936;-5.99720;,
 -0.50427;-19.76543;-8.15196;,
 1.17755;-20.37530;-8.68266;,
 0.78457;-20.32498;-9.55520;,
 -0.05789;-19.40697;-9.20004;,
 0.43816;-13.35464;-11.11069;,
 -0.38404;-11.80328;-9.38028;,
 1.23888;-13.50576;-11.69467;,
 -0.38404;-11.80328;-9.38028;,
 1.45470;-13.20552;-10.76590;,
 0.95032;-11.18644;-9.33062;,
 0.43816;-13.35464;-11.11069;,
 1.23888;-13.50576;-11.69467;,
 1.45470;-13.20552;-10.76590;,
 0.95032;-11.18644;-9.33062;,
 -1.55769;-18.68746;-9.46429;,
 -2.97217;-15.99006;-7.87471;,
 -4.24757;-16.29792;-8.14730;,
 -2.65139;-10.36642;-7.82715;,
 -1.27959;-19.33623;-11.00656;,
 -1.27183;-18.25570;-10.43128;,
 -0.92946;-19.40456;-10.08225;,
 -1.55769;-18.68746;-9.46429;,
 -2.84856;-15.66633;-9.04325;,
 -2.33721;-18.74449;-9.80534;,
 -0.92946;-19.40456;-10.08225;,
 1.71158;-19.19062;-6.09395;,
 -0.66197;-16.27700;-4.22131;,
 -2.10581;-16.69748;-4.21512;,
 2.47618;-20.07965;-6.70410;,
 0.87168;-19.86490;-6.47769;,
 1.71158;-19.19062;-6.09395;,
 2.33285;-18.94529;-7.27772;,
 -0.31599;-15.78912;-5.30238;,
 2.47618;-20.07965;-6.70410;,
 1.17728;-19.04218;-7.41836;,
 -1.24954;-16.28987;-5.72366;,
 2.04107;-19.97697;-7.85053;,
 2.04107;-19.97697;-7.85053;,
 -1.24954;-16.28987;-5.72366;,
 1.17728;-19.04218;-7.41836;,
 2.22721;-17.72784;-4.12452;,
 0.95193;-15.81168;-2.75329;,
 -0.19573;-16.43698;-2.85364;,
 2.60475;-18.36762;-4.66177;,
 1.39000;-18.16925;-4.31136;,
 2.53429;-17.31151;-4.87987;,
 1.80675;-17.60395;-5.14293;,
 0.32998;-15.95917;-3.95905;,
 2.42599;-18.20939;-5.49242;,
 0.92200;-15.42489;-3.67371;,
 0.32998;-15.95917;-3.95905;,
 1.80675;-17.60395;-5.14293;,
 2.42599;-18.20939;-5.49242;,
 -2.08113;-5.70519;-6.59764;,
 -1.16365;-0.49144;-3.71303;,
 -1.21668;-4.10431;-3.95127;,
 -2.34363;-3.94701;-6.16564;,
 -2.08113;-5.70519;-6.59764;,
 -2.48845;-0.47868;-5.97278;,
 -4.15968;-3.90017;-5.68406;,
 -4.93878;-5.60481;-2.91942;,
 -4.86967;-4.05492;-2.78037;,
 -2.17293;-5.70855;-1.30459;,
 -2.23977;-3.74354;-1.37988;,
 -4.23470;-5.61702;-5.80082;,
 -4.12909;-0.41105;-5.47818;,
 -4.78981;-2.37123;-2.60471;,
 -4.62821;-0.39252;-2.37841;,
 -2.44551;-0.49023;-1.02475;,
 -0.84358;-5.77565;-4.20275;,
 -1.21668;-4.10431;-3.95127;,
 -1.16365;-0.49144;-3.71303;,
 -1.49810;-12.72223;-4.28546;,
 -3.75958;-13.19507;-6.49216;,
 -1.62412;-16.16854;-5.99182;,
 -4.59320;-12.93887;-4.69049;,
 -3.23616;-13.25372;-4.57950;,
 -1.33277;-13.28043;-2.98626;,
 -3.36138;-12.86490;-8.02703;,
 -2.86600;-16.18211;-7.18270;,
 -3.75958;-13.19507;-6.49216;,
 -2.97217;-15.99006;-7.87471;,
 -3.36138;-12.86490;-8.02703;,
 -0.66197;-16.27700;-4.22131;,
 -1.33277;-13.28043;-2.98626;,
 -0.84358;-5.77565;-4.20275;;
 
 179;
 3;0,1,2;,
 3;1,0,3;,
 3;0,4,3;,
 3;1,5,2;,
 3;2,5,6;,
 3;6,7,2;,
 3;8,6,5;,
 3;9,8,5;,
 3;5,10,9;,
 3;11,10,5;,
 3;11,12,10;,
 3;1,11,5;,
 3;11,13,12;,
 3;14,15,16;,
 3;15,17,18;,
 3;17,15,19;,
 3;15,20,19;,
 3;15,14,20;,
 3;21,22,23;,
 3;23,24,21;,
 3;22,25,23;,
 3;26,21,24;,
 3;24,27,26;,
 3;2,24,23;,
 3;27,24,2;,
 3;2,7,27;,
 3;23,0,2;,
 3;22,21,28;,
 3;21,26,29;,
 3;0,23,30;,
 3;0,30,31;,
 3;22,32,25;,
 3;29,33,34;,
 3;34,33,35;,
 3;34,36,21;,
 3;21,29,34;,
 3;37,38,39;,
 3;40,41,42;,
 3;43,40,44;,
 3;36,28,21;,
 3;36,45,28;,
 3;46,47,48;,
 3;49,46,48;,
 3;50,46,49;,
 3;51,50,49;,
 3;49,52,51;,
 3;52,49,48;,
 3;45,36,39;,
 3;53,54,39;,
 3;53,38,55;,
 3;38,37,55;,
 3;8,9,56;,
 3;57,58,56;,
 3;57,59,60;,
 3;61,37,35;,
 3;33,62,35;,
 3;37,61,55;,
 3;63,64,65;,
 3;9,10,66;,
 3;67,68,69;,
 3;68,70,69;,
 3;70,68,71;,
 3;40,43,72;,
 3;40,72,65;,
 3;43,73,72;,
 3;73,63,72;,
 3;74,75,76;,
 3;77,74,78;,
 3;79,80,81;,
 3;80,79,82;,
 3;80,83,84;,
 3;85,83,80;,
 3;85,80,82;,
 3;77,78,86;,
 3;78,76,87;,
 3;78,88,86;,
 3;89,90,91;,
 3;92,89,93;,
 3;0,31,4;,
 3;94,95,96;,
 3;97,95,94;,
 3;89,92,94;,
 3;89,94,98;,
 3;93,91,99;,
 3;93,100,101;,
 3;8,102,6;,
 3;97,94,92;,
 3;103,104,105;,
 3;106,105,104;,
 3;107,105,108;,
 3;109,110,108;,
 3;111,112,110;,
 3;106,113,105;,
 3;114,108,115;,
 3;115,116,114;,
 3;115,112,117;,
 3;117,116,115;,
 3;111,118,119;,
 3;120,117,112;,
 3;92,93,101;,
 3;98,3,4;,
 3;121,11,1;,
 3;12,122,10;,
 3;123,16,12;,
 3;12,13,123;,
 3;16,123,14;,
 3;18,16,15;,
 3;16,18,122;,
 3;25,124,23;,
 3;30,23,124;,
 3;30,124,125;,
 3;30,126,31;,
 3;127,32,28;,
 3;32,22,28;,
 3;25,32,41;,
 3;42,41,32;,
 3;41,65,25;,
 3;39,36,34;,
 3;35,39,34;,
 3;39,35,37;,
 3;65,41,40;,
 3;42,44,40;,
 3;48,125,124;,
 3;48,128,52;,
 3;48,124,128;,
 3;39,54,45;,
 3;39,38,53;,
 3;56,58,8;,
 3;56,59,57;,
 3;35,62,61;,
 3;65,64,129;,
 3;130,71,131;,
 3;71,130,70;,
 3;131,66,10;,
 3;131,122,130;,
 3;32,127,42;,
 3;65,72,63;,
 3;30,76,75;,
 3;76,78,74;,
 3;132,81,121;,
 3;81,132,79;,
 3;121,133,132;,
 3;81,84,13;,
 3;84,81,80;,
 3;121,13,11;,
 3;87,88,78;,
 3;87,76,30;,
 3;31,91,90;,
 3;91,93,89;,
 3;90,4,31;,
 3;4,90,98;,
 3;98,90,89;,
 3;96,98,94;,
 3;98,96,133;,
 3;3,133,1;,
 3;99,100,93;,
 3;91,31,126;,
 3;105,107,103;,
 3;104,134,106;,
 3;105,113,108;,
 3;108,113,109;,
 3;110,109,111;,
 3;110,112,115;,
 3;108,110,115;,
 3;108,114,107;,
 3;119,112,111;,
 3;112,119,120;,
 3;133,121,1;,
 3;122,131,10;,
 3;122,12,16;,
 3;129,124,25;,
 3;125,48,47;,
 3;129,128,124;,
 3;129,25,65;,
 3;126,30,75;,
 3;13,121,81;,
 3;133,3,98;,
 3;126,99,91;,
 3;125,87,30;;
 
 MeshMaterialList {
  2;
  179;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.320000;0.592800;0.336800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\model\\allegorica_d.tga";
   }
  }
  Material {
   0.460800;0.356000;0.363200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\model\\body_d.tga";
   }
  }
 }
 MeshNormals {
  198;
  0.926568;0.235120;0.293582;,
  0.997104;0.074694;0.014319;,
  0.923883;0.199519;0.326544;,
  0.935277;0.226396;0.272032;,
  0.934136;0.291564;0.205864;,
  0.970977;-0.232260;0.057086;,
  0.967973;0.233364;0.092567;,
  0.911841;0.111936;0.394990;,
  0.958192;-0.104294;0.266440;,
  0.761688;-0.520791;0.385497;,
  0.761295;-0.626334;-0.167737;,
  0.808223;-0.369200;-0.458766;,
  0.956623;-0.018272;-0.290756;,
  0.998659;-0.035144;0.038009;,
  0.821822;0.569350;0.021192;,
  0.637744;0.653660;-0.407445;,
  0.669529;0.557793;-0.490507;,
  0.374665;0.661270;-0.649883;,
  0.275101;0.541950;-0.794109;,
  0.627762;0.571926;-0.528030;,
  0.842577;0.527363;-0.109331;,
  -0.870836;0.214846;-0.442138;,
  -0.976251;0.111314;-0.185858;,
  -0.996093;-0.066764;0.057805;,
  -0.979771;0.082915;-0.182138;,
  -0.979972;-0.044533;-0.194090;,
  -0.806543;0.119381;-0.578996;,
  -0.969891;0.059857;-0.236068;,
  -0.196395;-0.061142;-0.978617;,
  -0.373750;0.379385;-0.846391;,
  -0.365764;-0.276213;0.888776;,
  -0.153550;-0.248971;0.956261;,
  -0.941166;-0.011374;-0.337752;,
  0.618682;0.696932;-0.362655;,
  0.924504;0.379267;-0.038076;,
  -0.334571;0.533796;-0.776610;,
  -0.105653;0.341364;-0.933974;,
  -0.033077;0.330170;-0.943342;,
  -0.208546;0.434235;-0.876327;,
  0.097196;0.496075;-0.862823;,
  0.136113;0.418629;-0.897899;,
  0.157104;0.431029;-0.888556;,
  0.102032;0.466927;-0.878390;,
  0.090673;0.487636;-0.868326;,
  0.135149;-0.395686;0.908387;,
  0.010610;-0.451941;0.891985;,
  -0.146691;-0.808417;0.570039;,
  -0.804113;-0.526467;-0.276107;,
  -0.874996;-0.482439;-0.040424;,
  -0.517929;-0.665008;-0.538065;,
  0.052191;-0.786943;0.614814;,
  0.189134;-0.478187;0.857651;,
  -0.179507;-0.654471;0.734469;,
  -0.066015;-0.494093;0.866899;,
  -0.163601;-0.526574;0.834239;,
  0.954127;0.296648;0.040515;,
  -0.579390;-0.795492;0.177480;,
  0.079692;-0.513448;0.854413;,
  0.088073;-0.384361;0.918972;,
  0.096890;-0.442536;0.891501;,
  0.046863;-0.537531;0.841941;,
  0.051218;-0.541399;0.839204;,
  0.942314;0.240604;0.232712;,
  0.838909;0.321921;0.438861;,
  0.060989;0.514316;-0.855429;,
  0.094415;0.523521;-0.846766;,
  0.067764;0.469587;-0.880282;,
  0.148108;-0.550010;0.821920;,
  0.058193;-0.382411;0.922158;,
  0.124996;-0.446048;0.886238;,
  0.133358;-0.590003;0.796311;,
  0.127013;-0.581148;0.803825;,
  0.024064;0.559324;-0.828599;,
  0.059080;0.582347;-0.810791;,
  0.029079;0.505927;-0.862086;,
  0.076004;0.555659;-0.827929;,
  0.891345;0.366940;0.266193;,
  0.998986;0.014669;-0.042554;,
  0.992151;0.121075;-0.031247;,
  0.879573;0.105904;-0.463827;,
  -0.270521;0.051012;-0.961362;,
  -0.264947;0.059570;-0.962421;,
  -0.970004;0.067294;-0.233591;,
  -0.473336;-0.059339;0.878881;,
  -0.980958;0.059753;-0.184799;,
  -0.977530;0.063306;-0.201064;,
  -0.982400;0.098389;-0.158774;,
  -0.506221;-0.089560;0.857740;,
  0.840994;-0.136588;-0.523520;,
  0.811204;-0.545297;-0.211187;,
  -0.848177;-0.498608;0.178845;,
  -0.039655;-0.988796;0.143909;,
  0.488958;0.068486;-0.869615;,
  0.503887;-0.244130;-0.828552;,
  -0.500004;-0.082164;0.862117;,
  -0.505088;-0.071335;0.860115;,
  -0.491543;-0.095121;0.865643;,
  -0.505009;-0.066923;0.860516;,
  -0.494287;-0.036654;0.868526;,
  -0.393850;-0.136110;0.909041;,
  -0.174146;0.297434;-0.938726;,
  -0.242268;0.333566;-0.911065;,
  -0.304006;0.397771;-0.865655;,
  0.780619;0.476394;-0.404578;,
  0.633355;0.690551;-0.349285;,
  -0.354206;0.508466;-0.784857;,
  -0.598411;-0.576116;-0.556771;,
  -0.027099;-0.860311;-0.509049;,
  0.016355;-0.583923;0.811644;,
  -0.184473;-0.883465;0.430651;,
  -0.576406;-0.788357;-0.215055;,
  -0.770405;-0.426420;-0.473965;,
  -0.781664;-0.436971;-0.445038;,
  -0.847067;-0.357036;-0.393703;,
  -0.824533;-0.564276;-0.041690;,
  -0.864228;-0.495958;-0.084469;,
  -0.733416;-0.548112;-0.402087;,
  0.029586;0.115185;-0.992903;,
  0.247205;-0.544619;0.801424;,
  -0.033360;-0.877747;0.477962;,
  0.038342;-0.953394;0.299282;,
  0.993241;0.110109;-0.036720;,
  0.995382;0.056899;-0.077312;,
  0.963777;0.254869;0.078587;,
  0.975750;-0.101536;-0.193915;,
  -0.047404;-0.996746;-0.065201;,
  0.925203;0.173132;-0.337675;,
  0.936624;0.307427;0.168000;,
  0.873541;0.351555;0.336654;,
  0.930200;0.271604;0.246897;,
  -0.808552;-0.455809;-0.372132;,
  -0.591823;-0.795659;-0.129121;,
  -0.881256;-0.275486;-0.384050;,
  -0.331059;-0.864618;0.377936;,
  0.802544;0.364401;0.472371;,
  0.983873;0.162320;0.075146;,
  0.062477;0.532551;-0.844089;,
  0.931102;-0.063942;-0.359110;,
  -0.137617;-0.989816;-0.036422;,
  -0.614771;-0.654423;-0.440212;,
  -0.490849;-0.796490;-0.353089;,
  -0.772649;-0.346215;-0.532116;,
  -0.812737;-0.246484;-0.527924;,
  -0.829195;-0.343629;-0.440857;,
  -0.741293;-0.367098;-0.561894;,
  -0.089499;-0.299620;0.949851;,
  0.865333;0.326000;0.380687;,
  0.987873;0.091770;0.125238;,
  0.945823;0.185309;0.266605;,
  -0.681841;-0.529094;-0.505126;,
  -0.848473;-0.320808;-0.420923;,
  -0.791381;-0.297092;-0.534278;,
  -0.738399;-0.324914;-0.590929;,
  -0.507351;-0.752768;-0.419446;,
  0.978246;0.022681;-0.206203;,
  -0.282006;0.099270;-0.954263;,
  -0.972011;0.053533;-0.228756;,
  -0.480107;-0.035804;0.876479;,
  -0.491760;-0.083159;0.866751;,
  -0.528023;-0.053807;0.847524;,
  0.902591;0.010099;0.430381;,
  0.920869;0.005813;0.389829;,
  -0.199253;-0.969631;-0.141821;,
  0.856047;0.504953;-0.110484;,
  0.467936;0.402712;-0.786676;,
  -0.411643;-0.911295;0.009523;,
  -0.226428;-0.974013;0.005436;,
  -0.586235;-0.807591;-0.064237;,
  0.131163;0.264059;-0.955546;,
  -0.908963;-0.162117;-0.384063;,
  -0.261638;0.386069;-0.884588;,
  -0.017596;-0.380851;0.924469;,
  -0.881213;-0.295480;-0.368991;,
  0.163022;-0.424360;0.890698;,
  -0.169405;-0.442976;0.880383;,
  0.955998;0.209340;0.205535;,
  0.978506;-0.094938;0.183066;,
  0.823704;-0.191370;-0.533749;,
  0.952213;0.132014;0.275433;,
  0.919318;0.284523;0.271847;,
  0.896706;0.217871;0.385294;,
  0.987303;-0.054687;-0.149137;,
  0.095772;0.450367;-0.887692;,
  0.157198;0.191047;-0.968912;,
  -0.843421;-0.143902;-0.517623;,
  0.898186;0.414955;0.145170;,
  0.008475;0.397931;-0.917376;,
  0.083648;0.178059;-0.980458;,
  0.078466;0.065889;-0.994737;,
  -0.914441;-0.338703;-0.221536;,
  -0.867993;-0.328317;-0.372553;,
  0.861066;0.064005;-0.504449;,
  -0.285908;0.058943;-0.956442;,
  -0.291446;-0.956587;0.001178;,
  -0.902321;-0.179310;-0.392001;,
  -0.259212;-0.422513;0.868500;,
  0.030053;-0.375128;0.926486;,
  0.057049;0.333959;-0.940860;;
  179;
  3;0,1,2;,
  3;1,0,3;,
  3;0,4,3;,
  3;1,5,2;,
  3;2,5,6;,
  3;6,7,2;,
  3;8,6,5;,
  3;9,8,5;,
  3;5,10,9;,
  3;11,10,5;,
  3;11,12,10;,
  3;93,11,5;,
  3;11,13,12;,
  3;14,15,16;,
  3;15,17,18;,
  3;17,15,19;,
  3;15,20,19;,
  3;15,14,20;,
  3;21,22,23;,
  3;23,24,21;,
  3;22,25,23;,
  3;26,21,24;,
  3;24,27,26;,
  3;94,95,96;,
  3;97,95,94;,
  3;94,98,97;,
  3;96,99,94;,
  3;100,101,28;,
  3;101,102,29;,
  3;99,96,30;,
  3;99,30,31;,
  3;22,32,25;,
  3;103,104,33;,
  3;33,104,34;,
  3;105,35,21;,
  3;21,29,105;,
  3;36,37,38;,
  3;39,40,41;,
  3;42,39,43;,
  3;106,28,21;,
  3;106,107,28;,
  3;108,44,45;,
  3;46,108,45;,
  3;109,108,46;,
  3;110,109,46;,
  3;111,112,110;,
  3;112,111,113;,
  3;114,106,115;,
  3;47,48,115;,
  3;47,116,49;,
  3;37,36,117;,
  3;8,9,118;,
  3;50,51,118;,
  3;50,119,120;,
  3;121,122,34;,
  3;8,123,34;,
  3;122,121,124;,
  3;52,53,54;,
  3;107,10,125;,
  3;126,127,55;,
  3;127,128,55;,
  3;128,127,129;,
  3;130,131,56;,
  3;130,56,132;,
  3;131,133,56;,
  3;133,52,56;,
  3;57,58,59;,
  3;60,57,61;,
  3;134,62,63;,
  3;62,134,135;,
  3;136,64,65;,
  3;66,64,136;,
  3;137,62,135;,
  3;138,139,140;,
  3;141,142,143;,
  3;139,144,140;,
  3;67,68,69;,
  3;70,67,71;,
  3;99,31,145;,
  3;72,73,74;,
  3;75,73,72;,
  3;146,147,148;,
  3;146,148,76;,
  3;149,150,151;,
  3;149,152,153;,
  3;104,103,6;,
  3;154,148,147;,
  3;77,78,79;,
  3;103,79,78;,
  3;80,155,81;,
  3;27,82,156;,
  3;98,83,157;,
  3;29,26,155;,
  3;84,156,85;,
  3;85,86,84;,
  3;158,83,87;,
  3;87,159,158;,
  3;7,6,78;,
  3;77,160,161;,
  3;162,149,153;,
  3;76,3,4;,
  3;88,11,1;,
  3;12,89,10;,
  3;163,16,12;,
  3;12,13,163;,
  3;16,163,14;,
  3;18,16,15;,
  3;16,18,164;,
  3;25,90,23;,
  3;30,23,90;,
  3;165,166,167;,
  3;165,91,91;,
  3;92,168,28;,
  3;168,100,28;,
  3;25,32,169;,
  3;41,40,168;,
  3;169,132,25;,
  3;38,35,105;,
  3;170,38,105;,
  3;38,170,36;,
  3;132,169,130;,
  3;41,43,39;,
  3;45,171,90;,
  3;113,172,112;,
  3;113,90,172;,
  3;115,48,114;,
  3;115,116,47;,
  3;118,51,173;,
  3;118,119,50;,
  3;34,123,121;,
  3;54,53,174;,
  3;175,129,176;,
  3;129,175,128;,
  3;92,177,10;,
  3;176,178,175;,
  3;168,92,41;,
  3;54,56,52;,
  3;30,59,58;,
  3;59,61,57;,
  3;179,63,180;,
  3;63,179,134;,
  3;88,181,179;,
  3;182,65,183;,
  3;65,182,136;,
  3;88,183,11;,
  3;143,144,139;,
  3;143,142,184;,
  3;31,69,68;,
  3;69,71,67;,
  3;68,145,31;,
  3;4,185,76;,
  3;76,185,146;,
  3;74,186,72;,
  3;186,74,187;,
  3;188,187,93;,
  3;151,152,149;,
  3;150,189,190;,
  3;79,191,77;,
  3;78,6,103;,
  3;155,26,81;,
  3;156,26,27;,
  3;157,97,98;,
  3;157,83,158;,
  3;156,82,85;,
  3;81,192,80;,
  3;78,161,7;,
  3;161,78,77;,
  3;181,88,1;,
  3;89,176,10;,
  3;164,12,16;,
  3;193,90,193;,
  3;171,45,44;,
  3;194,172,90;,
  3;174,195,54;,
  3;196,30,58;,
  3;183,197,182;,
  3;187,188,186;,
  3;190,151,150;,
  3;167,143,165;;
 }
 MeshTextureCoords {
  135;
  0.932240;0.842550;,
  0.928120;0.825030;,
  0.950020;0.840620;,
  0.910860;0.833260;,
  0.911910;0.843340;,
  0.945900;0.804610;,
  0.977800;0.812230;,
  0.977800;0.845790;,
  0.956330;0.769390;,
  0.937490;0.769390;,
  0.925660;0.783410;,
  0.925310;0.806800;,
  0.901390;0.793830;,
  0.898150;0.806010;,
  0.834100;0.796900;,
  0.832530;0.791550;,
  0.870900;0.792690;,
  0.832530;0.787090;,
  0.873000;0.783960;,
  0.821830;0.789800;,
  0.823760;0.796640;,
  0.956420;0.901960;,
  0.944850;0.905020;,
  0.943190;0.874090;,
  0.956770;0.870850;,
  0.928910;0.902040;,
  0.977800;0.898710;,
  0.977800;0.869540;,
  0.945820;0.926580;,
  0.977800;0.914830;,
  0.918480;0.869360;,
  0.914360;0.855250;,
  0.930310;0.913520;,
  0.977800;0.937180;,
  0.968070;0.930340;,
  0.962460;0.959520;,
  0.958080;0.928070;,
  0.960270;0.972310;,
  0.956070;0.971170;,
  0.953620;0.958820;,
  0.898680;0.950500;,
  0.913830;0.930080;,
  0.918650;0.939280;,
  0.893680;0.955840;,
  0.902270;0.955490;,
  0.946170;0.939630;,
  0.867400;0.917640;,
  0.889740;0.895300;,
  0.897540;0.900730;,
  0.872830;0.919740;,
  0.861700;0.925530;,
  0.865560;0.931220;,
  0.873350;0.927370;,
  0.953090;0.972890;,
  0.949380;0.959670;,
  0.958180;0.975910;,
  0.931620;0.744590;,
  0.937840;0.726010;,
  0.940910;0.742930;,
  0.930750;0.726980;,
  0.934070;0.720670;,
  0.963540;0.974620;,
  0.969750;0.962290;,
  0.891750;0.943310;,
  0.905160;0.921850;,
  0.911290;0.923160;,
  0.925750;0.769390;,
  0.839180;0.769390;,
  0.849520;0.769390;,
  0.842070;0.776660;,
  0.851800;0.778150;,
  0.878260;0.769390;,
  0.896490;0.944100;,
  0.888340;0.950930;,
  0.861790;0.891270;,
  0.886760;0.873390;,
  0.892890;0.877680;,
  0.855220;0.898890;,
  0.865120;0.895730;,
  0.858200;0.822750;,
  0.852330;0.816880;,
  0.885270;0.815470;,
  0.846370;0.822920;,
  0.854520;0.810480;,
  0.884920;0.806450;,
  0.844350;0.814950;,
  0.859860;0.906070;,
  0.890350;0.887940;,
  0.867660;0.902220;,
  0.866080;0.843860;,
  0.887460;0.842640;,
  0.888600;0.850700;,
  0.859950;0.845790;,
  0.868620;0.850000;,
  0.861880;0.839040;,
  0.853900;0.831770;,
  0.884050;0.828440;,
  0.854430;0.844390;,
  0.885970;0.833880;,
  0.884830;0.859630;,
  0.865210;0.857270;,
  0.858990;0.854380;,
  0.977800;0.769390;,
  0.836280;0.053660;,
  0.836280;0.030140;,
  0.868700;0.027470;,
  0.865030;0.014440;,
  0.868550;0.053660;,
  0.895600;0.026620;,
  0.930080;0.014440;,
  0.927130;0.026600;,
  0.961180;0.014440;,
  0.957930;0.031640;,
  0.895380;0.014440;,
  0.893690;0.053660;,
  0.925740;0.039080;,
  0.925590;0.053660;,
  0.955340;0.053660;,
  0.987480;0.014440;,
  0.987480;0.030140;,
  0.987480;0.053660;,
  0.908400;0.816180;,
  0.899550;0.781220;,
  0.870280;0.801850;,
  0.924350;0.885660;,
  0.912870;0.881450;,
  0.905600;0.863310;,
  0.935300;0.927280;,
  0.898980;0.908010;,
  0.916810;0.901080;,
  0.881940;0.779900;,
  0.903580;0.769390;,
  0.886940;0.824240;,
  0.908230;0.825640;,
  0.836280;0.014440;;
 }
}
