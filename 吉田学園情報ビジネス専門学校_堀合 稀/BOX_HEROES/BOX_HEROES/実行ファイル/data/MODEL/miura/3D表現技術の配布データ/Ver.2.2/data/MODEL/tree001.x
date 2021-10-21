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
 259;
 0.00000;31.77017;-16.00000;,
 4.94427;31.77017;-15.21691;,
 4.94427;29.42771;-15.21691;,
 0.00000;29.42771;-16.00000;,
 4.94427;31.77017;-15.21691;,
 9.40456;31.77017;-12.94427;,
 9.40456;29.42771;-12.94427;,
 4.94427;29.42771;-15.21691;,
 12.94427;31.77017;-9.40456;,
 12.94427;29.42771;-9.40456;,
 15.21691;31.77017;-4.94427;,
 15.21691;29.42771;-4.94427;,
 16.00000;31.77017;0.00000;,
 16.00000;29.42771;0.00000;,
 15.21691;31.77017;4.94427;,
 15.21691;29.42771;4.94427;,
 12.94427;31.77017;9.40456;,
 12.94427;29.42771;9.40456;,
 9.40456;31.77017;12.94427;,
 9.40456;29.42771;12.94427;,
 4.94427;31.77017;15.21691;,
 4.94427;29.42771;15.21691;,
 -0.00001;31.77017;16.00000;,
 -0.00001;29.42771;16.00000;,
 -4.94428;31.77017;15.21690;,
 -4.94428;29.42771;15.21690;,
 -9.40457;31.77017;12.94427;,
 -9.40457;29.42771;12.94427;,
 -12.94428;31.77017;9.40456;,
 -12.94428;29.42771;9.40456;,
 -15.21691;31.77017;4.94426;,
 -15.21691;29.42771;4.94426;,
 -16.00000;31.77017;-0.00002;,
 -16.00000;29.42771;-0.00002;,
 -15.21690;31.77017;-4.94429;,
 -15.21690;29.42771;-4.94429;,
 -12.94426;31.77017;-9.40458;,
 -12.94426;29.42771;-9.40458;,
 -9.40455;31.77017;-12.94429;,
 -9.40455;29.42771;-12.94429;,
 -4.94425;31.77017;-15.21691;,
 -4.94425;29.42771;-15.21691;,
 4.94427;27.08526;-15.21691;,
 0.00000;27.08526;-16.00000;,
 9.40456;27.08526;-12.94427;,
 4.94427;27.08526;-15.21691;,
 12.94427;27.08526;-9.40456;,
 15.21691;27.08526;-4.94427;,
 16.00000;27.08526;0.00000;,
 15.21691;27.08526;4.94427;,
 12.94427;27.08526;9.40456;,
 9.40456;27.08526;12.94427;,
 4.94427;27.08526;15.21691;,
 -0.00001;27.08526;16.00000;,
 -4.94428;27.08526;15.21690;,
 -9.40457;27.08526;12.94427;,
 -12.94428;27.08526;9.40456;,
 -15.21691;27.08526;4.94426;,
 -16.00000;27.08526;-0.00002;,
 -15.21690;27.08526;-4.94429;,
 -12.94426;27.08526;-9.40458;,
 -9.40455;27.08526;-12.94429;,
 -4.94425;27.08526;-15.21691;,
 4.94427;24.74276;-15.21691;,
 0.00000;24.74276;-16.00000;,
 9.40456;24.74276;-12.94427;,
 4.94427;24.74276;-15.21691;,
 12.94427;24.74276;-9.40456;,
 15.21691;24.74276;-4.94427;,
 16.00000;24.74276;0.00000;,
 15.21691;24.74276;4.94427;,
 12.94427;24.74276;9.40456;,
 9.40456;24.74276;12.94427;,
 4.94427;24.74276;15.21691;,
 -0.00001;24.74276;16.00000;,
 -4.94428;24.74276;15.21690;,
 -9.40457;24.74276;12.94427;,
 -12.94428;24.74276;9.40456;,
 -15.21691;24.74276;4.94426;,
 -16.00000;24.74276;-0.00002;,
 -15.21690;24.74276;-4.94429;,
 -12.94426;24.74276;-9.40458;,
 -9.40455;24.74276;-12.94429;,
 -4.94425;24.74276;-15.21691;,
 4.94427;22.40028;-15.21691;,
 0.00000;22.40028;-16.00000;,
 9.40456;22.40028;-12.94427;,
 4.94427;22.40028;-15.21691;,
 12.94427;22.40028;-9.40456;,
 15.21691;22.40028;-4.94427;,
 16.00000;22.40028;0.00000;,
 15.21691;22.40028;4.94427;,
 12.94427;22.40028;9.40456;,
 9.40456;22.40028;12.94427;,
 4.94427;22.40028;15.21691;,
 -0.00001;22.40028;16.00000;,
 -4.94428;22.40028;15.21690;,
 -9.40457;22.40028;12.94427;,
 -12.94428;22.40028;9.40456;,
 -15.21691;22.40028;4.94426;,
 -16.00000;22.40028;-0.00002;,
 -15.21690;22.40028;-4.94429;,
 -12.94426;22.40028;-9.40458;,
 -9.40455;22.40028;-12.94429;,
 -4.94425;22.40028;-15.21691;,
 4.94427;20.05658;-15.21691;,
 0.00000;20.05658;-16.00000;,
 9.40456;20.05658;-12.94427;,
 4.94427;20.05658;-15.21691;,
 12.94427;20.05658;-9.40456;,
 15.21691;20.05658;-4.94427;,
 16.00000;20.05658;0.00000;,
 15.21691;20.05658;4.94427;,
 12.94427;20.05658;9.40456;,
 9.40456;20.05658;12.94427;,
 4.94427;20.05658;15.21691;,
 -0.00001;20.05658;16.00000;,
 -4.94428;20.05658;15.21690;,
 -9.40457;20.05658;12.94427;,
 -12.94428;20.05658;9.40456;,
 -15.21691;20.05658;4.94426;,
 -16.00000;20.05658;-0.00002;,
 -15.21690;20.05658;-4.94429;,
 -12.94426;20.05658;-9.40458;,
 -9.40455;20.05658;-12.94429;,
 -4.94425;20.05658;-15.21691;,
 4.38533;15.79469;-17.35948;,
 0.05969;15.79469;-17.77165;,
 10.77093;15.79469;-14.58591;,
 4.38533;15.79469;-17.35948;,
 14.70534;14.10443;-10.51180;,
 17.10461;12.72152;-5.87561;,
 17.72085;15.79469;0.24546;,
 15.67490;15.79469;8.31858;,
 14.14593;15.79469;10.85231;,
 11.76653;15.79469;13.29121;,
 5.56689;15.79469;17.25338;,
 -0.00001;15.79469;18.47642;,
 -7.20092;15.79469;17.83500;,
 -12.44707;15.79469;14.82971;,
 -17.81906;14.72889;11.81055;,
 -16.76506;15.79469;5.61816;,
 -16.88166;15.79469;0.41189;,
 -16.82144;15.79469;-5.56592;,
 -13.18764;15.79469;-9.44796;,
 -9.67467;15.79469;-14.14531;,
 -5.42344;15.79469;-16.88309;,
 4.02543;11.40383;-19.67310;,
 0.20814;10.44595;-22.37210;,
 11.81459;11.34277;-15.72162;,
 4.02543;11.40383;-19.67310;,
 16.08595;8.71916;-10.96856;,
 19.32009;6.11676;-6.94937;,
 20.03448;8.40483;0.75960;,
 17.95183;11.15658;8.77763;,
 15.59975;11.47383;12.89495;,
 13.17045;11.44903;15.55830;,
 5.41825;11.46999;19.70150;,
 -0.48583;11.51578;21.02322;,
 -9.14978;11.53278;19.98468;,
 -16.92641;11.53278;17.29137;,
 -21.68381;10.07433;14.78530;,
 -19.15977;11.53278;6.72494;,
 -18.65568;11.53278;1.66140;,
 -17.93230;11.53278;-6.12087;,
 -14.29297;11.53278;-11.15946;,
 -9.90774;11.53278;-15.86848;,
 -3.73807;11.40382;-19.67310;,
 4.43674;7.12232;-23.68339;,
 -0.06370;5.18923;-26.05761;,
 12.33132;6.98813;-17.27172;,
 4.43674;7.12232;-23.68339;,
 17.17882;4.17720;-11.74752;,
 26.08768;2.21471;-9.73412;,
 22.24527;5.52841;-0.83423;,
 19.01486;7.02833;9.24614;,
 17.61274;7.15527;13.40305;,
 14.46475;7.12163;16.41133;,
 5.66731;7.15614;21.41057;,
 -1.01017;7.22719;24.23945;,
 -10.46867;7.27036;21.99965;,
 -23.64541;7.27089;20.98385;,
 -29.44302;4.96779;19.89254;,
 -22.02772;7.26447;8.71227;,
 -21.53213;7.26941;1.79686;,
 -19.13633;7.27089;-5.98850;,
 -15.14882;7.27089;-11.54609;,
 -10.47329;7.27089;-17.77079;,
 -4.45786;7.10617;-22.39804;,
 6.33905;2.84471;-24.50601;,
 -0.58976;1.43661;-37.60975;,
 12.83167;2.99598;-18.34809;,
 6.33905;2.84471;-24.50601;,
 20.80237;1.44025;-13.43421;,
 29.01380;0.72301;-11.26257;,
 25.95481;1.20018;-2.98127;,
 21.69617;1.86673;7.21307;,
 22.33068;1.06054;15.78094;,
 13.26285;0.78105;20.01919;,
 6.80222;0.06307;24.24229;,
 0.76082;0.83625;31.89070;,
 -11.74047;0.57853;23.96850;,
 -30.93358;2.51616;26.03334;,
 -38.68378;1.60565;27.31457;,
 -29.61916;2.98434;13.90340;,
 -29.63127;2.87535;7.73754;,
 -25.48451;3.00414;-6.20628;,
 -21.08696;2.09308;-14.99760;,
 -14.73240;3.00899;-20.39724;,
 -6.38914;3.00539;-29.24711;,
 7.25728;-1.25291;-25.03564;,
 0.00000;-1.29467;-49.97964;,
 13.20618;-1.25291;-19.81941;,
 7.25728;-1.25291;-25.03564;,
 26.11737;-1.26520;-15.92446;,
 39.94764;-1.25291;-15.90775;,
 32.45229;-1.29215;-4.64220;,
 24.74232;-1.26105;6.64082;,
 33.23519;-1.25291;18.28545;,
 13.75483;-1.27702;22.36200;,
 7.41941;-1.30947;28.72391;,
 1.85214;-1.25291;42.20011;,
 -12.86410;-1.51104;25.71674;,
 -32.81234;-1.25291;31.31270;,
 -56.94769;-1.25291;41.68737;,
 -46.62500;-1.25291;27.25092;,
 -36.83449;-1.25291;15.43275;,
 -29.31081;-1.25291;-6.98486;,
 -33.55768;-1.25291;-20.94383;,
 -20.66516;-1.34526;-26.87158;,
 -10.67077;-1.25291;-33.54117;,
 0.00000;31.77017;0.00000;,
 4.94427;31.77017;-15.21691;,
 0.00000;31.77017;-16.00000;,
 9.40456;31.77017;-12.94427;,
 12.94427;31.77017;-9.40456;,
 15.21691;31.77017;-4.94427;,
 16.00000;31.77017;0.00000;,
 15.21691;31.77017;4.94427;,
 12.94427;31.77017;9.40456;,
 9.40456;31.77017;12.94427;,
 4.94427;31.77017;15.21691;,
 -0.00001;31.77017;16.00000;,
 -4.94428;31.77017;15.21690;,
 -9.40457;31.77017;12.94427;,
 -12.94428;31.77017;9.40456;,
 -15.21691;31.77017;4.94426;,
 -16.00000;31.77017;-0.00002;,
 -15.21690;31.77017;-4.94429;,
 -12.94426;31.77017;-9.40458;,
 -9.40455;31.77017;-12.94429;,
 -4.94425;31.77017;-15.21691;,
 0.00000;-1.25291;-0.00000;,
 13.20618;-1.25291;-19.81941;,
 26.11737;-1.26520;-15.92446;,
 39.94764;-1.25291;-15.90775;,
 32.45229;-1.29215;-4.64220;,
 24.74232;-1.26105;6.64082;,
 33.23519;-1.25291;18.28545;;
 
 240;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;5,8,9,6;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;16,18,19,17;,
 4;18,20,21,19;,
 4;20,22,23,21;,
 4;22,24,25,23;,
 4;24,26,27,25;,
 4;26,28,29,27;,
 4;28,30,31,29;,
 4;30,32,33,31;,
 4;32,34,35,33;,
 4;34,36,37,35;,
 4;36,38,39,37;,
 4;38,40,41,39;,
 4;40,0,3,41;,
 4;3,2,42,43;,
 4;7,6,44,45;,
 4;6,9,46,44;,
 4;9,11,47,46;,
 4;11,13,48,47;,
 4;13,15,49,48;,
 4;15,17,50,49;,
 4;17,19,51,50;,
 4;19,21,52,51;,
 4;21,23,53,52;,
 4;23,25,54,53;,
 4;25,27,55,54;,
 4;27,29,56,55;,
 4;29,31,57,56;,
 4;31,33,58,57;,
 4;33,35,59,58;,
 4;35,37,60,59;,
 4;37,39,61,60;,
 4;39,41,62,61;,
 4;41,3,43,62;,
 4;43,42,63,64;,
 4;45,44,65,66;,
 4;44,46,67,65;,
 4;46,47,68,67;,
 4;47,48,69,68;,
 4;48,49,70,69;,
 4;49,50,71,70;,
 4;50,51,72,71;,
 4;51,52,73,72;,
 4;52,53,74,73;,
 4;53,54,75,74;,
 4;54,55,76,75;,
 4;55,56,77,76;,
 4;56,57,78,77;,
 4;57,58,79,78;,
 4;58,59,80,79;,
 4;59,60,81,80;,
 4;60,61,82,81;,
 4;61,62,83,82;,
 4;62,43,64,83;,
 4;64,63,84,85;,
 4;66,65,86,87;,
 4;65,67,88,86;,
 4;67,68,89,88;,
 4;68,69,90,89;,
 4;69,70,91,90;,
 4;70,71,92,91;,
 4;71,72,93,92;,
 4;72,73,94,93;,
 4;73,74,95,94;,
 4;74,75,96,95;,
 4;75,76,97,96;,
 4;76,77,98,97;,
 4;77,78,99,98;,
 4;78,79,100,99;,
 4;79,80,101,100;,
 4;80,81,102,101;,
 4;81,82,103,102;,
 4;82,83,104,103;,
 4;83,64,85,104;,
 4;85,84,105,106;,
 4;87,86,107,108;,
 4;86,88,109,107;,
 4;88,89,110,109;,
 4;89,90,111,110;,
 4;90,91,112,111;,
 4;91,92,113,112;,
 4;92,93,114,113;,
 4;93,94,115,114;,
 4;94,95,116,115;,
 4;95,96,117,116;,
 4;96,97,118,117;,
 4;97,98,119,118;,
 4;98,99,120,119;,
 4;99,100,121,120;,
 4;100,101,122,121;,
 4;101,102,123,122;,
 4;102,103,124,123;,
 4;103,104,125,124;,
 4;104,85,106,125;,
 4;106,105,126,127;,
 4;108,107,128,129;,
 4;107,109,130,128;,
 4;109,110,131,130;,
 4;110,111,132,131;,
 4;111,112,133,132;,
 4;112,113,134,133;,
 4;113,114,135,134;,
 4;114,115,136,135;,
 4;115,116,137,136;,
 4;116,117,138,137;,
 4;117,118,139,138;,
 4;118,119,140,139;,
 4;119,120,141,140;,
 4;120,121,142,141;,
 4;121,122,143,142;,
 4;122,123,144,143;,
 4;123,124,145,144;,
 4;124,125,146,145;,
 4;125,106,127,146;,
 4;127,126,147,148;,
 4;129,128,149,150;,
 4;128,130,151,149;,
 4;130,131,152,151;,
 4;131,132,153,152;,
 4;132,133,154,153;,
 4;133,134,155,154;,
 4;134,135,156,155;,
 4;135,136,157,156;,
 4;136,137,158,157;,
 4;137,138,159,158;,
 4;138,139,160,159;,
 4;139,140,161,160;,
 4;140,141,162,161;,
 4;141,142,163,162;,
 4;142,143,164,163;,
 4;143,144,165,164;,
 4;144,145,166,165;,
 4;145,146,167,166;,
 4;146,127,148,167;,
 4;148,147,168,169;,
 4;150,149,170,171;,
 4;149,151,172,170;,
 4;151,152,173,172;,
 4;152,153,174,173;,
 4;153,154,175,174;,
 4;154,155,176,175;,
 4;155,156,177,176;,
 4;156,157,178,177;,
 4;157,158,179,178;,
 4;158,159,180,179;,
 4;159,160,181,180;,
 4;160,161,182,181;,
 4;161,162,183,182;,
 4;162,163,184,183;,
 4;163,164,185,184;,
 4;164,165,186,185;,
 4;165,166,187,186;,
 4;166,167,188,187;,
 4;167,148,169,188;,
 4;169,168,189,190;,
 4;171,170,191,192;,
 4;170,172,193,191;,
 4;172,173,194,193;,
 4;173,174,195,194;,
 4;174,175,196,195;,
 4;175,176,197,196;,
 4;176,177,198,197;,
 4;177,178,199,198;,
 4;178,179,200,199;,
 4;179,180,201,200;,
 4;180,181,202,201;,
 4;181,182,203,202;,
 4;182,183,204,203;,
 4;183,184,205,204;,
 4;184,185,206,205;,
 4;185,186,207,206;,
 4;186,187,208,207;,
 4;187,188,209,208;,
 4;188,169,190,209;,
 4;190,189,210,211;,
 4;192,191,212,213;,
 4;191,193,214,212;,
 4;193,194,215,214;,
 4;194,195,216,215;,
 4;195,196,217,216;,
 4;196,197,218,217;,
 4;197,198,219,218;,
 4;198,199,220,219;,
 4;199,200,221,220;,
 4;200,201,222,221;,
 4;201,202,223,222;,
 4;202,203,224,223;,
 4;203,204,225,224;,
 4;204,205,226,225;,
 4;205,206,227,226;,
 4;206,207,228,227;,
 4;207,208,229,228;,
 4;208,209,230,229;,
 4;209,190,211,230;,
 3;231,232,233;,
 3;231,234,232;,
 3;231,235,234;,
 3;231,236,235;,
 3;231,237,236;,
 3;231,238,237;,
 3;231,239,238;,
 3;231,240,239;,
 3;231,241,240;,
 3;231,242,241;,
 3;231,243,242;,
 3;231,244,243;,
 3;231,245,244;,
 3;231,246,245;,
 3;231,247,246;,
 3;231,248,247;,
 3;231,249,248;,
 3;231,250,249;,
 3;231,251,250;,
 3;231,233,251;,
 3;252,211,210;,
 3;252,210,253;,
 3;252,253,254;,
 3;252,254,255;,
 3;252,255,256;,
 3;252,256,257;,
 3;252,257,258;,
 3;252,258,219;,
 3;252,219,220;,
 3;252,220,221;,
 3;252,221,222;,
 3;252,222,223;,
 3;252,223,224;,
 3;252,224,225;,
 3;252,225,226;,
 3;252,226,227;,
 3;252,227,228;,
 3;252,228,229;,
 3;252,229,230;,
 3;252,230,211;;
 
 MeshMaterialList {
  2;
  240;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
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
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
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
   TextureFilename {
    "data\\TEXTURE\\bark1col.jpg";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\TreeEnd002_2K_Color.png";
   }
  }
 }
 MeshNormals {
  185;
  0.000000;1.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  0.309017;0.000000;-0.951056;,
  0.587786;0.000000;-0.809017;,
  0.809017;0.000000;-0.587786;,
  0.951056;0.000000;-0.309017;,
  1.000000;0.000000;-0.000000;,
  0.951056;0.000000;0.309017;,
  0.809017;0.000000;0.587786;,
  0.587786;0.000000;0.809017;,
  0.309017;0.000000;0.951056;,
  -0.000001;0.000000;1.000000;,
  -0.309017;0.000000;0.951056;,
  -0.587785;0.000000;0.809017;,
  -0.809017;0.000000;0.587785;,
  -0.951057;0.000000;0.309016;,
  -1.000000;0.000000;-0.000001;,
  -0.951056;0.000000;-0.309018;,
  -0.809017;0.000000;-0.587786;,
  -0.587784;0.000000;-0.809018;,
  -0.309015;0.000000;-0.951057;,
  0.809017;0.000000;-0.587786;,
  -0.000001;0.000000;1.000000;,
  -1.000000;0.000000;-0.000001;,
  -0.951056;0.000000;-0.309018;,
  0.587786;0.000000;-0.809017;,
  1.000000;0.000000;-0.000000;,
  -0.000001;0.000000;1.000000;,
  -0.309017;0.000000;0.951056;,
  -0.587785;0.000000;0.809017;,
  -0.809017;0.000000;0.587785;,
  -0.951057;0.000000;0.309016;,
  -1.000000;0.000000;-0.000001;,
  -0.309015;0.000000;-0.951057;,
  -0.000000;0.000000;-1.000000;,
  0.309017;0.000000;-0.951056;,
  0.951056;0.000000;-0.309017;,
  1.000000;0.000000;-0.000000;,
  0.951056;0.000000;0.309017;,
  -0.000001;0.000000;1.000000;,
  -1.000000;0.000000;-0.000001;,
  -0.951056;0.000000;-0.309018;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  -0.951057;0.000000;0.309016;,
  -0.587784;0.000000;-0.809018;,
  -0.008274;0.201987;-0.979353;,
  0.288096;0.211121;-0.934039;,
  0.581276;0.207037;-0.786927;,
  0.810246;0.177637;-0.558522;,
  0.938464;0.158316;-0.306955;,
  0.985904;0.167313;0.000634;,
  0.928105;0.188640;0.320992;,
  0.787238;0.208023;0.580503;,
  0.585543;0.206456;0.783911;,
  0.319898;0.224140;0.920558;,
  0.015328;0.260018;0.965482;,
  -0.290339;0.300260;0.908596;,
  -0.547039;0.338301;0.765702;,
  -0.788175;0.323451;0.523602;,
  -0.947889;0.213141;0.236806;,
  -0.989532;0.144296;0.002321;,
  -0.938259;0.127322;-0.321649;,
  -0.796300;0.085731;-0.598796;,
  -0.608898;0.114724;-0.784909;,
  -0.316600;0.178554;-0.931602;,
  -0.014700;0.482097;-0.875995;,
  0.282943;0.433854;-0.855403;,
  0.574119;0.368277;-0.731273;,
  0.800939;0.323250;-0.503990;,
  0.900575;0.309984;-0.304755;,
  0.940295;0.340294;-0.006716;,
  0.862994;0.392716;0.317829;,
  0.720515;0.441322;0.534877;,
  0.549566;0.449555;0.704186;,
  0.317409;0.461277;0.828538;,
  0.040514;0.498959;0.865678;,
  -0.228782;0.568116;0.790508;,
  -0.420854;0.657330;0.625139;,
  -0.693547;0.650400;0.309793;,
  -0.891663;0.450890;0.040438;,
  -0.944571;0.327801;-0.018200;,
  -0.894350;0.297198;-0.334381;,
  -0.752517;0.260069;-0.605047;,
  -0.619381;0.289882;-0.729614;,
  -0.346296;0.402795;-0.847252;,
  -0.041022;0.588303;-0.807600;,
  0.338883;0.507147;-0.792440;,
  0.621914;0.363629;-0.693539;,
  0.766126;0.376688;-0.520728;,
  0.776349;0.524640;-0.349337;,
  0.870042;0.492752;-0.014898;,
  0.870307;0.396331;0.292381;,
  0.744483;0.417920;0.520661;,
  0.555285;0.421448;0.716966;,
  0.343906;0.441234;0.828880;,
  0.057281;0.503517;0.862085;,
  -0.186743;0.566759;0.802441;,
  -0.352968;0.729001;0.586491;,
  -0.664917;0.738036;0.114846;,
  -0.840443;0.530006;-0.112914;,
  -0.901023;0.426050;-0.081483;,
  -0.873093;0.328151;-0.360590;,
  -0.744403;0.296414;-0.598333;,
  -0.619025;0.363702;-0.696081;,
  -0.408962;0.479277;-0.776559;,
  0.041140;0.728212;-0.684116;,
  0.443116;0.531483;-0.721924;,
  0.641415;0.425664;-0.638277;,
  0.593066;0.589319;-0.548613;,
  0.551587;0.780143;-0.295176;,
  0.776371;0.623173;0.094356;,
  0.864655;0.447294;0.228690;,
  0.738073;0.472207;0.481943;,
  0.518201;0.401795;0.755002;,
  0.430486;0.435492;0.790587;,
  0.081173;0.544747;0.834662;,
  -0.154628;0.529340;0.834200;,
  -0.206635;0.768934;0.605015;,
  -0.519458;0.854101;0.025956;,
  -0.677323;0.720565;-0.148391;,
  -0.720672;0.684250;-0.111505;,
  -0.732165;0.593753;-0.333753;,
  -0.666413;0.543379;-0.510522;,
  -0.552814;0.601301;-0.576917;,
  -0.361957;0.703113;-0.612061;,
  0.187962;0.853402;-0.486185;,
  0.622330;0.473784;-0.623085;,
  0.583080;0.452164;-0.674956;,
  0.353703;0.743370;-0.567710;,
  0.354874;0.914592;-0.193873;,
  0.619247;0.758182;0.204191;,
  0.709964;0.689511;0.143272;,
  0.539462;0.767779;0.345681;,
  0.361293;0.676234;0.642008;,
  0.433380;0.715277;0.548234;,
  0.065083;0.803664;0.591513;,
  -0.121456;0.656488;0.744494;,
  0.015765;0.773424;0.633693;,
  -0.278844;0.954891;0.102121;,
  -0.481546;0.859267;-0.172553;,
  -0.568831;0.807065;-0.158359;,
  -0.563290;0.795982;-0.221624;,
  -0.439285;0.847249;-0.298660;,
  -0.371362;0.845231;-0.384284;,
  -0.306591;0.864786;-0.397677;,
  0.741296;0.579466;-0.338672;,
  0.716619;0.437610;-0.543097;,
  0.523571;0.447687;-0.724879;,
  0.245567;0.769830;-0.589116;,
  0.216479;0.961951;-0.166698;,
  0.447022;0.871669;0.200910;,
  0.545538;0.832847;0.093563;,
  0.361444;0.902487;0.234255;,
  0.229826;0.846971;0.479396;,
  0.333674;0.890303;0.309875;,
  0.024396;0.945785;0.323875;,
  -0.088842;0.801853;0.590880;,
  0.126840;0.783479;0.608336;,
  -0.133912;0.976464;0.169072;,
  -0.433000;0.877233;-0.207299;,
  -0.607176;0.763082;-0.221456;,
  -0.595051;0.781652;-0.186908;,
  -0.376058;0.899832;-0.221095;,
  -0.290899;0.897496;-0.331480;,
  -0.350729;0.867276;-0.353301;,
  -0.000263;-1.000000;-0.000886;,
  -0.363513;0.873763;-0.323104;,
  0.000128;-1.000000;0.000836;,
  0.001441;-0.999999;0.000418;,
  -0.000396;-1.000000;-0.000264;,
  0.000047;-1.000000;0.000849;,
  -0.000500;-0.999999;-0.001257;,
  -0.001395;-0.999998;-0.001300;,
  -0.000773;-0.999998;0.001654;,
  0.000127;-1.000000;-0.000231;,
  0.001697;-0.999996;-0.002122;,
  -0.003344;-0.999994;-0.001106;,
  0.004631;-0.999989;-0.000203;,
  0.000062;-0.999950;-0.010006;,
  -0.009162;-0.999912;-0.009600;,
  0.000000;-1.000000;-0.000000;,
  -0.002062;-0.999992;0.003304;,
  0.001749;-0.999996;0.002092;,
  0.002498;-0.999997;-0.000795;;
  240;
  4;1,2,2,1;,
  4;2,3,3,2;,
  4;3,4,21,3;,
  4;4,5,5,21;,
  4;5,6,6,5;,
  4;6,7,7,6;,
  4;7,8,8,7;,
  4;8,9,9,8;,
  4;9,10,10,9;,
  4;10,11,22,10;,
  4;11,12,12,22;,
  4;12,13,13,12;,
  4;13,14,14,13;,
  4;14,15,15,14;,
  4;15,16,23,15;,
  4;16,17,24,23;,
  4;17,18,18,24;,
  4;18,19,19,18;,
  4;19,20,20,19;,
  4;20,1,1,20;,
  4;1,2,2,1;,
  4;2,3,25,2;,
  4;3,21,21,25;,
  4;21,5,5,21;,
  4;5,6,26,5;,
  4;6,7,7,26;,
  4;7,8,8,7;,
  4;8,9,9,8;,
  4;9,10,10,9;,
  4;10,22,27,10;,
  4;22,12,28,27;,
  4;12,13,29,28;,
  4;13,14,30,29;,
  4;14,15,31,30;,
  4;15,23,32,31;,
  4;23,24,24,32;,
  4;24,18,18,24;,
  4;18,19,19,18;,
  4;19,20,33,19;,
  4;20,1,1,33;,
  4;1,2,35,34;,
  4;2,25,25,35;,
  4;25,21,21,25;,
  4;21,5,36,21;,
  4;5,26,37,36;,
  4;26,7,38,37;,
  4;7,8,8,38;,
  4;8,9,9,8;,
  4;9,10,10,9;,
  4;10,27,39,10;,
  4;27,28,12,39;,
  4;28,29,13,12;,
  4;29,30,14,13;,
  4;30,31,31,14;,
  4;31,32,40,31;,
  4;32,24,41,40;,
  4;24,18,18,41;,
  4;18,19,19,18;,
  4;19,33,33,19;,
  4;33,1,34,33;,
  4;34,35,2,42;,
  4;35,25,25,2;,
  4;25,21,21,25;,
  4;21,36,5,21;,
  4;36,37,43,5;,
  4;37,38,7,43;,
  4;38,8,8,7;,
  4;8,9,9,8;,
  4;9,10,10,9;,
  4;10,39,39,10;,
  4;39,12,12,39;,
  4;12,13,13,12;,
  4;13,14,14,13;,
  4;14,31,44,14;,
  4;31,40,23,44;,
  4;40,41,24,23;,
  4;41,18,18,24;,
  4;18,19,45,18;,
  4;19,33,33,45;,
  4;33,34,42,33;,
  4;42,2,47,46;,
  4;2,25,48,47;,
  4;25,21,49,48;,
  4;21,5,50,49;,
  4;5,43,51,50;,
  4;43,7,52,51;,
  4;7,8,53,52;,
  4;8,9,54,53;,
  4;9,10,55,54;,
  4;10,39,56,55;,
  4;39,12,57,56;,
  4;12,13,58,57;,
  4;13,14,59,58;,
  4;14,44,60,59;,
  4;44,23,61,60;,
  4;23,24,62,61;,
  4;24,18,63,62;,
  4;18,45,64,63;,
  4;45,33,65,64;,
  4;33,42,46,65;,
  4;46,47,67,66;,
  4;47,48,68,67;,
  4;48,49,69,68;,
  4;49,50,70,69;,
  4;50,51,71,70;,
  4;51,52,72,71;,
  4;52,53,73,72;,
  4;53,54,74,73;,
  4;54,55,75,74;,
  4;55,56,76,75;,
  4;56,57,77,76;,
  4;57,58,78,77;,
  4;58,59,79,78;,
  4;59,60,80,79;,
  4;60,61,81,80;,
  4;61,62,82,81;,
  4;62,63,83,82;,
  4;63,64,84,83;,
  4;64,65,85,84;,
  4;65,46,66,85;,
  4;66,67,87,86;,
  4;67,68,88,87;,
  4;68,69,89,88;,
  4;69,70,90,89;,
  4;70,71,91,90;,
  4;71,72,92,91;,
  4;72,73,93,92;,
  4;73,74,94,93;,
  4;74,75,95,94;,
  4;75,76,96,95;,
  4;76,77,97,96;,
  4;77,78,98,97;,
  4;78,79,99,98;,
  4;79,80,100,99;,
  4;80,81,101,100;,
  4;81,82,102,101;,
  4;82,83,103,102;,
  4;83,84,104,103;,
  4;84,85,105,104;,
  4;85,66,86,105;,
  4;86,87,107,106;,
  4;87,88,108,107;,
  4;88,89,109,108;,
  4;89,90,110,109;,
  4;90,91,111,110;,
  4;91,92,112,111;,
  4;92,93,113,112;,
  4;93,94,114,113;,
  4;94,95,115,114;,
  4;95,96,116,115;,
  4;96,97,117,116;,
  4;97,98,118,117;,
  4;98,99,119,118;,
  4;99,100,120,119;,
  4;100,101,121,120;,
  4;101,102,122,121;,
  4;102,103,123,122;,
  4;103,104,124,123;,
  4;104,105,125,124;,
  4;105,86,106,125;,
  4;106,107,127,126;,
  4;107,108,128,127;,
  4;108,109,129,128;,
  4;109,110,130,129;,
  4;110,111,131,130;,
  4;111,112,132,131;,
  4;112,113,133,132;,
  4;113,114,134,133;,
  4;114,115,135,134;,
  4;115,116,136,135;,
  4;116,117,137,136;,
  4;117,118,138,137;,
  4;118,119,139,138;,
  4;119,120,140,139;,
  4;120,121,141,140;,
  4;121,122,142,141;,
  4;122,123,143,142;,
  4;123,124,144,143;,
  4;124,125,145,144;,
  4;125,106,126,145;,
  4;126,127,147,146;,
  4;127,128,148,147;,
  4;128,129,149,148;,
  4;129,130,150,149;,
  4;130,131,151,150;,
  4;131,132,152,151;,
  4;132,133,153,152;,
  4;133,134,154,153;,
  4;134,135,155,154;,
  4;135,136,156,155;,
  4;136,137,157,156;,
  4;137,138,158,157;,
  4;138,139,159,158;,
  4;139,140,160,159;,
  4;140,141,161,160;,
  4;141,142,162,161;,
  4;142,143,163,162;,
  4;143,144,164,163;,
  4;144,145,165,164;,
  4;145,126,167,165;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;166,168,169;,
  3;166,169,170;,
  3;166,170,171;,
  3;166,171,172;,
  3;166,172,173;,
  3;166,173,174;,
  3;166,174,175;,
  3;166,175,176;,
  3;166,176,177;,
  3;166,177,178;,
  3;166,178,179;,
  3;166,179,180;,
  3;166,180,181;,
  3;166,181,181;,
  3;166,181,181;,
  3;166,181,181;,
  3;166,181,182;,
  3;166,182,183;,
  3;166,183,184;,
  3;166,184,168;;
 }
 MeshTextureCoords {
  259;
  0.994889;0.327893;,
  1.040161;0.327893;,
  1.040161;0.347524;,
  0.994889;0.347524;,
  0.040161;0.327893;,
  0.086735;0.327893;,
  0.086735;0.347524;,
  0.040161;0.347524;,
  0.135419;0.327893;,
  0.135419;0.347524;,
  0.186615;0.327893;,
  0.186615;0.347524;,
  0.240060;0.327893;,
  0.240060;0.347524;,
  0.294773;0.327893;,
  0.294773;0.347524;,
  0.349420;0.327893;,
  0.349420;0.347524;,
  0.402934;0.327893;,
  0.402934;0.347524;,
  0.454939;0.327893;,
  0.454939;0.347524;,
  0.505733;0.327893;,
  0.505733;0.347524;,
  0.555975;0.327893;,
  0.555975;0.347524;,
  0.606328;0.327893;,
  0.606328;0.347524;,
  0.657149;0.327893;,
  0.657149;0.347524;,
  0.708316;0.327893;,
  0.708316;0.347524;,
  0.759257;0.327893;,
  0.759257;0.347524;,
  0.809224;0.327893;,
  0.809224;0.347524;,
  0.857662;0.327893;,
  0.857662;0.347524;,
  0.904455;0.327893;,
  0.904455;0.347524;,
  0.949959;0.327893;,
  0.949959;0.347524;,
  1.040161;0.367156;,
  0.994889;0.367156;,
  0.086735;0.367156;,
  0.040161;0.367156;,
  0.135419;0.367156;,
  0.186615;0.367156;,
  0.240060;0.367156;,
  0.294773;0.367156;,
  0.349420;0.367156;,
  0.402934;0.367156;,
  0.454939;0.367156;,
  0.505733;0.367156;,
  0.555975;0.367156;,
  0.606328;0.367156;,
  0.657149;0.367156;,
  0.708316;0.367156;,
  0.759257;0.367156;,
  0.809224;0.367156;,
  0.857662;0.367156;,
  0.904455;0.367156;,
  0.949959;0.367156;,
  1.040161;0.386788;,
  0.994889;0.386788;,
  0.086735;0.386788;,
  0.040161;0.386788;,
  0.135419;0.386788;,
  0.186615;0.386788;,
  0.240060;0.386788;,
  0.294773;0.386788;,
  0.349420;0.386788;,
  0.402934;0.386788;,
  0.454939;0.386788;,
  0.505733;0.386788;,
  0.555975;0.386788;,
  0.606328;0.386788;,
  0.657149;0.386788;,
  0.708316;0.386788;,
  0.759257;0.386788;,
  0.809224;0.386788;,
  0.857662;0.386788;,
  0.904455;0.386788;,
  0.949959;0.386788;,
  1.040161;0.406420;,
  0.994889;0.406420;,
  0.086735;0.406420;,
  0.040161;0.406420;,
  0.135419;0.406420;,
  0.186615;0.406420;,
  0.240060;0.406420;,
  0.294773;0.406420;,
  0.349420;0.406420;,
  0.402934;0.406420;,
  0.454939;0.406420;,
  0.505733;0.406420;,
  0.555975;0.406420;,
  0.606328;0.406420;,
  0.657149;0.406420;,
  0.708316;0.406420;,
  0.759257;0.406420;,
  0.809224;0.406420;,
  0.857662;0.406420;,
  0.904455;0.406420;,
  0.949959;0.406420;,
  1.040161;0.426063;,
  0.994889;0.426063;,
  0.086735;0.426063;,
  0.040161;0.426063;,
  0.135419;0.426063;,
  0.186615;0.426063;,
  0.240060;0.426063;,
  0.294773;0.426063;,
  0.349420;0.426063;,
  0.402934;0.426063;,
  0.454939;0.426063;,
  0.505733;0.426063;,
  0.555975;0.426063;,
  0.606328;0.426063;,
  0.657149;0.426063;,
  0.708316;0.426063;,
  0.759257;0.426063;,
  0.809224;0.426063;,
  0.857662;0.426063;,
  0.904455;0.426063;,
  0.949959;0.426063;,
  1.031190;0.461781;,
  0.995856;0.461781;,
  0.089002;0.461781;,
  0.031190;0.461781;,
  0.137873;0.475947;,
  0.185110;0.487537;,
  0.243444;0.461781;,
  0.325698;0.461781;,
  0.354361;0.461781;,
  0.386888;0.461781;,
  0.454941;0.461781;,
  0.504925;0.461781;,
  0.565580;0.461781;,
  0.615768;0.461781;,
  0.661371;0.470713;,
  0.705814;0.461781;,
  0.754849;0.461781;,
  0.809440;0.461781;,
  0.856603;0.461781;,
  0.908593;0.461781;,
  0.950655;0.461781;,
  1.025187;0.498580;,
  0.997639;0.506608;,
  0.090926;0.499092;,
  0.025187;0.498580;,
  0.142095;0.521080;,
  0.183885;0.542890;,
  0.248639;0.523714;,
  0.320622;0.500652;,
  0.360983;0.497994;,
  0.390814;0.498201;,
  0.461688;0.498026;,
  0.507954;0.497642;,
  0.571874;0.497499;,
  0.626314;0.497499;,
  0.657710;0.509723;,
  0.702249;0.497499;,
  0.743534;0.497499;,
  0.810540;0.497499;,
  0.862500;0.497499;,
  0.914708;0.497499;,
  0.968722;0.498580;,
  1.023615;0.534463;,
  0.996436;0.550664;,
  0.087761;0.535588;,
  0.023615;0.534463;,
  0.142452;0.559146;,
  0.184187;0.575593;,
  0.236508;0.547821;,
  0.320532;0.535251;,
  0.354445;0.534187;,
  0.387591;0.534469;,
  0.463028;0.534180;,
  0.510253;0.533584;,
  0.573561;0.533222;,
  0.635957;0.533218;,
  0.656652;0.552520;,
  0.694645;0.533272;,
  0.743351;0.533230;,
  0.806173;0.533218;,
  0.860580;0.533218;,
  0.918485;0.533218;,
  0.967789;0.534598;,
  1.033830;0.570313;,
  0.995438;0.582114;,
  0.086641;0.569045;,
  0.033830;0.570313;,
  0.148022;0.582084;,
  0.182680;0.588095;,
  0.224521;0.584096;,
  0.298313;0.578509;,
  0.349107;0.585266;,
  0.410286;0.587608;,
  0.460391;0.593626;,
  0.499073;0.587146;,
  0.574823;0.589306;,
  0.638994;0.573067;,
  0.652072;0.580697;,
  0.682420;0.569143;,
  0.712911;0.570056;,
  0.794542;0.568977;,
  0.854678;0.576612;,
  0.904627;0.568936;,
  0.965609;0.568966;,
  1.038251;0.604655;,
  0.998301;0.605005;,
  0.083605;0.604655;,
  0.038251;0.604655;,
  0.153548;0.604758;,
  0.182811;0.604655;,
  0.221143;0.604984;,
  0.288822;0.604723;,
  0.331114;0.604655;,
  0.415772;0.604857;,
  0.463371;0.605129;,
  0.495304;0.604655;,
  0.575742;0.606818;,
  0.628493;0.604655;,
  0.648088;0.604655;,
  0.665580;0.604655;,
  0.688361;0.604655;,
  0.793155;0.604655;,
  0.844316;0.604655;,
  0.899953;0.605429;,
  0.952104;0.604655;,
  0.490375;0.522514;,
  0.631976;0.934320;,
  0.496671;0.957543;,
  0.753420;0.870786;,
  0.849116;0.773160;,
  0.909696;0.651000;,
  0.929229;0.516263;,
  0.905805;0.382137;,
  0.841716;0.261753;,
  0.743234;0.166893;,
  0.620002;0.106844;,
  0.484080;0.087484;,
  0.348775;0.110708;,
  0.227331;0.174242;,
  0.131635;0.271867;,
  0.071055;0.394028;,
  0.051522;0.528765;,
  0.074946;0.662891;,
  0.139036;0.783275;,
  0.237517;0.878135;,
  0.360750;0.938183;,
  0.914919;0.604655;,
  1.083605;0.604655;,
  1.153548;0.604758;,
  1.182811;0.604655;,
  1.221143;0.604984;,
  1.288822;0.604723;,
  1.331114;0.604655;;
 }
}
