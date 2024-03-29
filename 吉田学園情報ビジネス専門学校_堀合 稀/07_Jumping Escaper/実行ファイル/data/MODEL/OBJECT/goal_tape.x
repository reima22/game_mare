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
 494;
 -11.48027;2.09919;12.43073;,
 -11.48027;2.09919;-12.35319;,
 -11.48027;-0.11793;-12.35319;,
 -11.48027;-0.11793;12.43073;,
 -11.48027;2.09919;-12.35319;,
 11.40273;2.09919;-12.35319;,
 11.40273;-0.11793;-12.35319;,
 -11.48027;-0.11793;-12.35319;,
 11.40273;2.09919;-12.35319;,
 11.40273;2.09919;12.43073;,
 11.40273;-0.11793;12.43073;,
 11.40273;-0.11793;-12.35319;,
 11.40273;2.09919;12.43073;,
 -11.48027;2.09919;12.43073;,
 -11.48027;-0.11793;12.43073;,
 11.40273;-0.11793;12.43073;,
 -11.48027;2.09919;-12.35319;,
 -11.48027;2.09919;12.43073;,
 -11.48027;-0.11793;12.43073;,
 -11.48027;-0.11793;-12.35319;,
 -11.48027;2.09919;12.43073;,
 -11.48027;2.09919;-12.35319;,
 -11.48027;-0.11793;-12.35319;,
 -11.48027;-0.11793;12.43073;,
 11.40273;2.09919;-12.35319;,
 11.40273;2.09919;12.43073;,
 11.40273;-0.11793;12.43073;,
 11.40273;-0.11793;-12.35319;,
 11.40273;2.09919;12.43073;,
 -11.48027;2.09919;12.43073;,
 -11.48027;-0.11793;12.43073;,
 11.40273;-0.11793;12.43073;,
 11.40273;2.09919;-12.35319;,
 -11.48027;2.09919;-12.35319;,
 -11.48027;2.09919;12.43073;,
 -11.48027;-0.11793;12.43073;,
 -11.48027;-0.11793;-12.35319;,
 11.40273;-0.11793;-12.35319;,
 -34.38957;2.09919;12.43073;,
 -34.38957;2.09919;-12.35319;,
 -34.38957;-0.11793;-12.35319;,
 -34.38957;-0.11793;12.43073;,
 -34.38957;2.09919;-12.35319;,
 -11.50655;2.09919;-12.35319;,
 -11.50655;-0.11793;-12.35319;,
 -34.38957;-0.11793;-12.35319;,
 -11.50655;2.09919;-12.35319;,
 -11.50655;2.09919;12.43073;,
 -11.50655;-0.11793;12.43073;,
 -11.50655;-0.11793;-12.35319;,
 -11.50655;2.09919;12.43073;,
 -34.38957;2.09919;12.43073;,
 -34.38957;-0.11793;12.43073;,
 -11.50655;-0.11793;12.43073;,
 -34.38957;2.09919;-12.35319;,
 -34.38957;2.09919;12.43073;,
 -34.38957;-0.11793;12.43073;,
 -34.38957;-0.11793;-12.35319;,
 -34.38957;2.09919;12.43073;,
 -34.38957;2.09919;-12.35319;,
 -34.38957;-0.11793;-12.35319;,
 -34.38957;-0.11793;12.43073;,
 -11.50655;2.09919;-12.35319;,
 -11.50655;2.09919;12.43073;,
 -11.50655;-0.11793;12.43073;,
 -11.50655;-0.11793;-12.35319;,
 -11.50655;2.09919;12.43073;,
 -34.38957;2.09919;12.43073;,
 -34.38957;-0.11793;12.43073;,
 -11.50655;-0.11793;12.43073;,
 -11.50655;2.09919;-12.35319;,
 -34.38957;2.09919;-12.35319;,
 -34.38957;2.09919;12.43073;,
 -34.38957;-0.11793;12.43073;,
 -34.38957;-0.11793;-12.35319;,
 -11.50655;-0.11793;-12.35319;,
 11.43134;2.09919;12.43073;,
 11.43134;2.09919;-12.35319;,
 11.43134;-0.11793;-12.35319;,
 11.43134;-0.11793;12.43073;,
 11.43134;2.09919;-12.35319;,
 34.31433;2.09919;-12.35319;,
 34.31433;-0.11793;-12.35319;,
 11.43134;-0.11793;-12.35319;,
 34.31433;2.09919;-12.35319;,
 34.31433;2.09919;12.43073;,
 34.31433;-0.11793;12.43073;,
 34.31433;-0.11793;-12.35319;,
 34.31433;2.09919;12.43073;,
 11.43134;2.09919;12.43073;,
 11.43134;-0.11793;12.43073;,
 34.31433;-0.11793;12.43073;,
 11.43134;2.09919;-12.35319;,
 11.43134;2.09919;12.43073;,
 11.43134;-0.11793;12.43073;,
 11.43134;-0.11793;-12.35319;,
 11.43134;2.09919;12.43073;,
 11.43134;2.09919;-12.35319;,
 11.43134;-0.11793;-12.35319;,
 11.43134;-0.11793;12.43073;,
 34.31433;2.09919;-12.35319;,
 34.31433;2.09919;12.43073;,
 34.31433;-0.11793;12.43073;,
 34.31433;-0.11793;-12.35319;,
 34.31433;2.09919;12.43073;,
 11.43134;2.09919;12.43073;,
 11.43134;-0.11793;12.43073;,
 34.31433;-0.11793;12.43073;,
 34.31433;2.09919;-12.35319;,
 11.43134;2.09919;-12.35319;,
 11.43134;2.09919;12.43073;,
 11.43134;-0.11793;12.43073;,
 11.43134;-0.11793;-12.35319;,
 34.31433;-0.11793;-12.35319;,
 34.32544;2.09919;12.43073;,
 34.32544;2.09919;-12.35319;,
 34.32544;-0.11793;-12.35319;,
 34.32544;-0.11793;12.43073;,
 34.32544;2.09919;-12.35319;,
 57.20845;2.09919;-12.35319;,
 57.20845;-0.11793;-12.35319;,
 34.32544;-0.11793;-12.35319;,
 57.20845;2.09919;-12.35319;,
 57.20845;2.09919;12.43073;,
 57.20845;-0.11793;12.43073;,
 57.20845;-0.11793;-12.35319;,
 57.20845;2.09919;12.43073;,
 34.32544;2.09919;12.43073;,
 34.32544;-0.11793;12.43073;,
 57.20845;-0.11793;12.43073;,
 34.32544;2.09919;-12.35319;,
 34.32544;2.09919;12.43073;,
 34.32544;-0.11793;12.43073;,
 34.32544;-0.11793;-12.35319;,
 34.32544;2.09919;12.43073;,
 34.32544;2.09919;-12.35319;,
 34.32544;-0.11793;-12.35319;,
 34.32544;-0.11793;12.43073;,
 57.20845;2.09919;-12.35319;,
 57.20845;2.09919;12.43073;,
 57.20845;-0.11793;12.43073;,
 57.20845;-0.11793;-12.35319;,
 57.20845;2.09919;12.43073;,
 34.32544;2.09919;12.43073;,
 34.32544;-0.11793;12.43073;,
 57.20845;-0.11793;12.43073;,
 57.20845;2.09919;-12.35319;,
 34.32544;2.09919;-12.35319;,
 34.32544;2.09919;12.43073;,
 34.32544;-0.11793;12.43073;,
 34.32544;-0.11793;-12.35319;,
 57.20845;-0.11793;-12.35319;,
 -57.28961;2.09919;12.43073;,
 -57.28961;2.09919;-12.35319;,
 -57.28961;-0.11793;-12.35319;,
 -57.28961;-0.11793;12.43073;,
 -57.28961;2.09919;-12.35319;,
 -34.40662;2.09919;-12.35319;,
 -34.40662;-0.11793;-12.35319;,
 -57.28961;-0.11793;-12.35319;,
 -34.40662;2.09919;-12.35319;,
 -34.40662;2.09919;12.43073;,
 -34.40662;-0.11793;12.43073;,
 -34.40662;-0.11793;-12.35319;,
 -34.40662;2.09919;12.43073;,
 -57.28961;2.09919;12.43073;,
 -57.28961;-0.11793;12.43073;,
 -34.40662;-0.11793;12.43073;,
 -57.28961;2.09919;-12.35319;,
 -57.28961;2.09919;12.43073;,
 -57.28961;-0.11793;12.43073;,
 -57.28961;-0.11793;-12.35319;,
 -57.28961;2.09919;12.43073;,
 -57.28961;2.09919;-12.35319;,
 -57.28961;-0.11793;-12.35319;,
 -57.28961;-0.11793;12.43073;,
 -34.40662;2.09919;-12.35319;,
 -34.40662;2.09919;12.43073;,
 -34.40662;-0.11793;12.43073;,
 -34.40662;-0.11793;-12.35319;,
 -34.40662;2.09919;12.43073;,
 -57.28961;2.09919;12.43073;,
 -57.28961;-0.11793;12.43073;,
 -34.40662;-0.11793;12.43073;,
 -34.40662;2.09919;-12.35319;,
 -57.28961;2.09919;-12.35319;,
 -57.28961;2.09919;12.43073;,
 -57.28961;-0.11793;12.43073;,
 -57.28961;-0.11793;-12.35319;,
 -34.40662;-0.11793;-12.35319;,
 -80.19750;2.09919;12.43073;,
 -80.19750;2.09919;-12.35319;,
 -80.19750;-0.11793;-12.35319;,
 -80.19750;-0.11793;12.43073;,
 -80.19750;2.09919;-12.35319;,
 -57.31450;2.09919;-12.35319;,
 -57.31450;-0.11793;-12.35319;,
 -80.19750;-0.11793;-12.35319;,
 -57.31450;2.09919;-12.35319;,
 -57.31450;2.09919;12.43073;,
 -57.31450;-0.11793;12.43073;,
 -57.31450;-0.11793;-12.35319;,
 -57.31450;2.09919;12.43073;,
 -80.19750;2.09919;12.43073;,
 -80.19750;-0.11793;12.43073;,
 -57.31450;-0.11793;12.43073;,
 -80.19750;2.09919;-12.35319;,
 -80.19750;2.09919;12.43073;,
 -80.19750;-0.11793;12.43073;,
 -80.19750;-0.11793;-12.35319;,
 -80.19750;2.09919;12.43073;,
 -80.19750;2.09919;-12.35319;,
 -80.19750;-0.11793;-12.35319;,
 -80.19750;-0.11793;12.43073;,
 -57.31450;2.09919;-12.35319;,
 -57.31450;2.09919;12.43073;,
 -57.31450;-0.11793;12.43073;,
 -57.31450;-0.11793;-12.35319;,
 -57.31450;2.09919;12.43073;,
 -80.19750;2.09919;12.43073;,
 -80.19750;-0.11793;12.43073;,
 -57.31450;-0.11793;12.43073;,
 -57.31450;2.09919;-12.35319;,
 -80.19750;2.09919;-12.35319;,
 -80.19750;2.09919;12.43073;,
 -80.19750;-0.11793;12.43073;,
 -80.19750;-0.11793;-12.35319;,
 -57.31450;-0.11793;-12.35319;,
 57.25112;2.09919;12.43073;,
 57.25112;2.09919;-12.35319;,
 57.25112;-0.11793;-12.35319;,
 57.25112;-0.11793;12.43073;,
 57.25112;2.09919;-12.35319;,
 80.13417;2.09919;-12.35319;,
 80.13417;-0.11793;-12.35319;,
 57.25112;-0.11793;-12.35319;,
 80.13417;2.09919;-12.35319;,
 80.13417;2.09919;12.43073;,
 80.13417;-0.11793;12.43073;,
 80.13417;-0.11793;-12.35319;,
 80.13417;2.09919;12.43073;,
 57.25112;2.09919;12.43073;,
 57.25112;-0.11793;12.43073;,
 80.13417;-0.11793;12.43073;,
 57.25112;2.09919;-12.35319;,
 57.25112;2.09919;12.43073;,
 57.25112;-0.11793;12.43073;,
 57.25112;-0.11793;-12.35319;,
 57.25112;2.09919;12.43073;,
 57.25112;2.09919;-12.35319;,
 57.25112;-0.11793;-12.35319;,
 57.25112;-0.11793;12.43073;,
 80.13417;2.09919;-12.35319;,
 80.13417;2.09919;12.43073;,
 80.13417;-0.11793;12.43073;,
 80.13417;-0.11793;-12.35319;,
 80.13417;2.09919;12.43073;,
 57.25112;2.09919;12.43073;,
 57.25112;-0.11793;12.43073;,
 80.13417;-0.11793;12.43073;,
 80.13417;2.09919;-12.35319;,
 57.25112;2.09919;-12.35319;,
 57.25112;2.09919;12.43073;,
 57.25112;-0.11793;12.43073;,
 57.25112;-0.11793;-12.35319;,
 80.13417;-0.11793;-12.35319;,
 -103.12863;2.09919;12.43073;,
 -103.12863;2.09919;-12.35319;,
 -103.12863;-0.11793;-12.35319;,
 -103.12863;-0.11793;12.43073;,
 -103.12863;2.09919;-12.35319;,
 -80.24561;2.09919;-12.35319;,
 -80.24561;-0.11793;-12.35319;,
 -103.12863;-0.11793;-12.35319;,
 -80.24561;2.09919;-12.35319;,
 -80.24561;2.09919;12.43073;,
 -80.24561;-0.11793;12.43073;,
 -80.24561;-0.11793;-12.35319;,
 -80.24561;2.09919;12.43073;,
 -103.12863;2.09919;12.43073;,
 -103.12863;-0.11793;12.43073;,
 -80.24561;-0.11793;12.43073;,
 -103.12863;2.09919;-12.35319;,
 -103.12863;2.09919;12.43073;,
 -103.12863;-0.11793;12.43073;,
 -103.12863;-0.11793;-12.35319;,
 -103.12863;2.09919;12.43073;,
 -103.12863;2.09919;-12.35319;,
 -103.12863;-0.11793;-12.35319;,
 -103.12863;-0.11793;12.43073;,
 -80.24561;2.09919;-12.35319;,
 -80.24561;2.09919;12.43073;,
 -80.24561;-0.11793;12.43073;,
 -80.24561;-0.11793;-12.35319;,
 -80.24561;2.09919;12.43073;,
 -103.12863;2.09919;12.43073;,
 -103.12863;-0.11793;12.43073;,
 -80.24561;-0.11793;12.43073;,
 -80.24561;2.09919;-12.35319;,
 -103.12863;2.09919;-12.35319;,
 -103.12863;2.09919;12.43073;,
 -103.12863;-0.11793;12.43073;,
 -103.12863;-0.11793;-12.35319;,
 -80.24561;-0.11793;-12.35319;,
 80.19075;2.09919;12.43073;,
 80.19075;2.09919;-12.35319;,
 80.19075;-0.11793;-12.35319;,
 80.19075;-0.11793;12.43073;,
 80.19075;2.09919;-12.35319;,
 103.07376;2.09919;-12.35320;,
 103.07376;-0.11793;-12.35320;,
 80.19075;-0.11793;-12.35319;,
 103.07376;2.09919;-12.35320;,
 103.07376;2.09919;12.43073;,
 103.07376;-0.11793;12.43073;,
 103.07376;-0.11793;-12.35320;,
 103.07376;2.09919;12.43073;,
 80.19075;2.09919;12.43073;,
 80.19075;-0.11793;12.43073;,
 103.07376;-0.11793;12.43073;,
 80.19075;2.09919;-12.35319;,
 80.19075;2.09919;12.43073;,
 80.19075;-0.11793;12.43073;,
 80.19075;-0.11793;-12.35319;,
 80.19075;2.09919;12.43073;,
 80.19075;2.09919;-12.35319;,
 80.19075;-0.11793;-12.35319;,
 80.19075;-0.11793;12.43073;,
 103.07376;2.09919;-12.35320;,
 103.07376;2.09919;12.43073;,
 103.07376;-0.11793;12.43073;,
 103.07376;-0.11793;-12.35320;,
 103.07376;2.09919;12.43073;,
 80.19075;2.09919;12.43073;,
 80.19075;-0.11793;12.43073;,
 103.07376;-0.11793;12.43073;,
 103.07376;2.09919;-12.35320;,
 80.19075;2.09919;-12.35319;,
 80.19075;2.09919;12.43073;,
 80.19075;-0.11793;12.43073;,
 80.19075;-0.11793;-12.35319;,
 103.07376;-0.11793;-12.35320;,
 -126.09956;2.09919;12.43074;,
 -126.09956;2.09919;-12.35319;,
 -126.09956;-0.11793;-12.35319;,
 -126.09956;-0.11793;12.43074;,
 -126.09956;2.09919;-12.35319;,
 -103.21655;2.09919;-12.35319;,
 -103.21655;-0.11793;-12.35319;,
 -126.09956;-0.11793;-12.35319;,
 -103.21655;2.09919;-12.35319;,
 -103.21655;2.09919;12.43073;,
 -103.21655;-0.11793;12.43073;,
 -103.21655;-0.11793;-12.35319;,
 -103.21655;2.09919;12.43073;,
 -126.09956;2.09919;12.43074;,
 -126.09956;-0.11793;12.43074;,
 -103.21655;-0.11793;12.43073;,
 -126.09956;2.09919;-12.35319;,
 -126.09956;2.09919;12.43074;,
 -126.09956;-0.11793;12.43074;,
 -126.09956;-0.11793;-12.35319;,
 -126.09956;2.09919;12.43074;,
 -126.09956;2.09919;-12.35319;,
 -126.09956;-0.11793;-12.35319;,
 -126.09956;-0.11793;12.43074;,
 -103.21655;2.09919;-12.35319;,
 -103.21655;2.09919;12.43073;,
 -103.21655;-0.11793;12.43073;,
 -103.21655;-0.11793;-12.35319;,
 -103.21655;2.09919;12.43073;,
 -126.09956;2.09919;12.43074;,
 -126.09956;-0.11793;12.43074;,
 -103.21655;-0.11793;12.43073;,
 -103.21655;2.09919;-12.35319;,
 -126.09956;2.09919;-12.35319;,
 -126.09956;2.09919;12.43074;,
 -126.09956;-0.11793;12.43074;,
 -126.09956;-0.11793;-12.35319;,
 -103.21655;-0.11793;-12.35319;,
 -149.02300;2.09919;12.43074;,
 -149.02300;2.09919;-12.35318;,
 -149.02300;-0.11793;-12.35318;,
 -149.02300;-0.11793;12.43074;,
 -149.02300;2.09919;-12.35318;,
 -126.13999;2.09919;-12.35319;,
 -126.13999;-0.11793;-12.35319;,
 -149.02300;-0.11793;-12.35318;,
 -126.13999;2.09919;-12.35319;,
 -126.13999;2.09919;12.43074;,
 -126.13999;-0.11793;12.43074;,
 -126.13999;-0.11793;-12.35319;,
 -126.13999;2.09919;12.43074;,
 -149.02300;2.09919;12.43074;,
 -149.02300;-0.11793;12.43074;,
 -126.13999;-0.11793;12.43074;,
 -149.02300;2.09919;-12.35318;,
 -149.02300;2.09919;12.43074;,
 -149.02300;-0.11793;12.43074;,
 -149.02300;-0.11793;-12.35318;,
 -149.02300;2.09919;12.43074;,
 -149.02300;2.09919;-12.35318;,
 -149.02300;-0.11793;-12.35318;,
 -149.02300;-0.11793;12.43074;,
 -126.13999;2.09919;-12.35319;,
 -126.13999;2.09919;12.43074;,
 -126.13999;-0.11793;12.43074;,
 -126.13999;-0.11793;-12.35319;,
 -126.13999;2.09919;12.43074;,
 -149.02300;2.09919;12.43074;,
 -149.02300;-0.11793;12.43074;,
 -126.13999;-0.11793;12.43074;,
 -126.13999;2.09919;-12.35319;,
 -149.02300;2.09919;-12.35318;,
 -149.02300;2.09919;12.43074;,
 -149.02300;-0.11793;12.43074;,
 -149.02300;-0.11793;-12.35318;,
 -126.13999;-0.11793;-12.35319;,
 103.20036;2.09919;12.43073;,
 103.20036;2.09919;-12.35320;,
 103.20036;-0.11793;-12.35320;,
 103.20036;-0.11793;12.43073;,
 103.20036;2.09919;-12.35320;,
 126.08342;2.09919;-12.35320;,
 126.08342;-0.11793;-12.35320;,
 103.20036;-0.11793;-12.35320;,
 126.08342;2.09919;-12.35320;,
 126.08342;2.09919;12.43072;,
 126.08342;-0.11793;12.43072;,
 126.08342;-0.11793;-12.35320;,
 126.08342;2.09919;12.43072;,
 103.20036;2.09919;12.43073;,
 103.20036;-0.11793;12.43073;,
 126.08342;-0.11793;12.43072;,
 103.20036;2.09919;-12.35320;,
 103.20036;2.09919;12.43073;,
 103.20036;-0.11793;12.43073;,
 103.20036;-0.11793;-12.35320;,
 103.20036;2.09919;12.43073;,
 103.20036;2.09919;-12.35320;,
 103.20036;-0.11793;-12.35320;,
 103.20036;-0.11793;12.43073;,
 126.08342;2.09919;-12.35320;,
 126.08342;2.09919;12.43072;,
 126.08342;-0.11793;12.43072;,
 126.08342;-0.11793;-12.35320;,
 126.08342;2.09919;12.43072;,
 103.20036;2.09919;12.43073;,
 103.20036;-0.11793;12.43073;,
 126.08342;-0.11793;12.43072;,
 126.08342;2.09919;-12.35320;,
 103.20036;2.09919;-12.35320;,
 103.20036;2.09919;12.43073;,
 103.20036;-0.11793;12.43073;,
 103.20036;-0.11793;-12.35320;,
 126.08342;-0.11793;-12.35320;,
 126.13999;2.09919;12.43072;,
 126.13999;2.09919;-12.35320;,
 126.13999;-0.11793;-12.35320;,
 126.13999;-0.11793;12.43072;,
 126.13999;2.09919;-12.35320;,
 149.02300;2.09919;-12.35320;,
 149.02300;-0.11793;-12.35320;,
 126.13999;-0.11793;-12.35320;,
 149.02300;2.09919;-12.35320;,
 149.02300;2.09919;12.43072;,
 149.02300;-0.11793;12.43072;,
 149.02300;-0.11793;-12.35320;,
 149.02300;2.09919;12.43072;,
 126.13999;2.09919;12.43072;,
 126.13999;-0.11793;12.43072;,
 149.02300;-0.11793;12.43072;,
 126.13999;2.09919;-12.35320;,
 126.13999;2.09919;12.43072;,
 126.13999;-0.11793;12.43072;,
 126.13999;-0.11793;-12.35320;,
 126.13999;2.09919;12.43072;,
 126.13999;2.09919;-12.35320;,
 126.13999;-0.11793;-12.35320;,
 126.13999;-0.11793;12.43072;,
 149.02300;2.09919;-12.35320;,
 149.02300;2.09919;12.43072;,
 149.02300;-0.11793;12.43072;,
 149.02300;-0.11793;-12.35320;,
 149.02300;2.09919;12.43072;,
 126.13999;2.09919;12.43072;,
 126.13999;-0.11793;12.43072;,
 149.02300;-0.11793;12.43072;,
 149.02300;2.09919;-12.35320;,
 126.13999;2.09919;-12.35320;,
 126.13999;2.09919;12.43072;,
 126.13999;-0.11793;12.43072;,
 126.13999;-0.11793;-12.35320;,
 149.02300;-0.11793;-12.35320;;
 
 143;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;12,5,16,17;,
 4;18,19,6,15;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;28,29,30,31;,
 4;28,32,33,34;,
 4;35,36,37,31;,
 4;38,39,40,41;,
 4;42,43,44,45;,
 4;46,47,48,49;,
 4;50,51,52,53;,
 4;50,43,54,55;,
 4;56,57,44,53;,
 4;58,59,60,61;,
 4;62,63,64,65;,
 4;66,67,68,69;,
 4;66,70,71,72;,
 4;73,74,75,69;,
 4;76,77,78,79;,
 4;80,81,82,83;,
 4;84,85,86,87;,
 4;88,89,90,91;,
 4;88,81,92,93;,
 4;94,95,82,91;,
 4;96,97,98,99;,
 4;100,101,102,103;,
 4;104,105,106,107;,
 4;104,108,109,110;,
 4;111,112,113,107;,
 4;114,115,116,117;,
 4;118,119,120,121;,
 4;122,123,124,125;,
 4;126,127,128,129;,
 4;126,119,130,131;,
 4;132,133,120,129;,
 4;134,135,136,137;,
 4;138,139,140,141;,
 4;142,143,144,145;,
 4;142,146,147,148;,
 4;149,150,151,145;,
 4;152,153,154,155;,
 4;156,157,158,159;,
 4;160,161,162,163;,
 4;164,165,166,167;,
 4;164,157,168,169;,
 4;170,171,158,167;,
 4;172,173,174,175;,
 4;176,177,178,179;,
 4;180,181,182,183;,
 4;180,184,185,186;,
 4;187,188,189,183;,
 4;190,191,192,193;,
 4;194,195,196,197;,
 4;198,199,200,201;,
 4;202,203,204,205;,
 4;202,195,206,207;,
 4;208,209,196,205;,
 4;210,211,212,213;,
 4;214,215,216,217;,
 4;218,219,220,221;,
 4;218,222,223,224;,
 4;225,226,227,221;,
 4;228,229,230,231;,
 4;232,233,234,235;,
 4;236,237,238,239;,
 4;240,241,242,243;,
 4;240,233,244,245;,
 4;246,247,234,243;,
 4;248,249,250,251;,
 4;252,253,254,255;,
 4;256,257,258,259;,
 4;256,260,261,262;,
 4;263,264,265,259;,
 4;266,267,268,269;,
 4;270,271,272,273;,
 4;274,275,276,277;,
 4;278,279,280,281;,
 4;278,271,282,283;,
 4;284,285,272,281;,
 4;286,287,288,289;,
 4;290,291,292,293;,
 4;294,295,296,297;,
 4;294,298,299,300;,
 4;301,302,303,297;,
 4;304,305,306,307;,
 4;308,309,310,311;,
 4;312,313,314,315;,
 4;316,317,318,319;,
 4;316,309,320,321;,
 4;322,323,310,319;,
 4;324,325,326,327;,
 4;328,329,330,331;,
 4;332,333,334,335;,
 4;332,336,337,338;,
 4;339,340,341,335;,
 4;342,343,344,345;,
 4;346,347,348,349;,
 4;350,351,352,353;,
 4;354,355,356,357;,
 4;354,347,358,359;,
 4;360,361,348,357;,
 4;362,363,364,365;,
 4;366,367,368,369;,
 4;370,371,372,373;,
 4;370,374,375,376;,
 4;377,378,379,373;,
 4;380,381,382,383;,
 4;384,385,386,387;,
 4;388,389,390,391;,
 4;392,393,394,395;,
 4;392,385,396,397;,
 4;398,399,386,395;,
 4;400,401,402,403;,
 4;404,405,406,407;,
 4;408,409,410,411;,
 4;408,412,413,414;,
 4;415,416,417,411;,
 4;418,419,420,421;,
 4;422,423,424,425;,
 4;426,427,428,429;,
 4;430,431,432,433;,
 4;430,423,434,435;,
 4;436,437,424,433;,
 4;438,439,440,441;,
 4;442,443,444,445;,
 4;446,447,448,449;,
 4;446,450,451,452;,
 4;453,454,455,449;,
 4;456,457,458,459;,
 4;460,461,462,463;,
 4;464,465,466,467;,
 4;468,469,470,471;,
 4;468,461,472,473;,
 4;474,475,462,471;,
 4;476,477,478,479;,
 4;480,481,482,483;,
 4;484,485,486,487;,
 4;484,488,489,490;,
 4;491,492,493,487;;
 
 MeshMaterialList {
  3;
  143;
  1,
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
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\ゲーム制作用\\goal.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\ゲーム制作用フォルダ\\チーム制作用\\TAME_3 チーム制作\\テクスチャ\\goal.png";
   }
  }
  Material {
   0.800000;0.009600;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  79;
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;-0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;-0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;-0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;0.000000;1.000000;;
  143;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;6,6,6,6;,
  4;7,7,7,7;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;10,10,10,10;,
  4;11,11,11,11;,
  4;12,12,12,12;,
  4;13,13,13,13;,
  4;14,14,14,14;,
  4;15,15,15,15;,
  4;16,16,16,16;,
  4;11,11,11,11;,
  4;13,13,13,13;,
  4;14,14,14,14;,
  4;15,15,15,15;,
  4;16,16,16,16;,
  4;17,17,17,17;,
  4;18,18,18,18;,
  4;19,19,19,19;,
  4;20,20,20,20;,
  4;21,21,21,21;,
  4;22,22,22,22;,
  4;17,17,17,17;,
  4;19,19,19,19;,
  4;20,20,20,20;,
  4;21,21,21,21;,
  4;22,22,22,22;,
  4;23,23,23,23;,
  4;24,24,24,24;,
  4;25,25,25,25;,
  4;26,26,26,26;,
  4;27,27,27,27;,
  4;28,28,28,28;,
  4;23,23,23,23;,
  4;25,25,25,25;,
  4;26,26,26,26;,
  4;27,27,27,27;,
  4;28,28,28,28;,
  4;29,29,29,29;,
  4;30,30,30,30;,
  4;31,31,31,31;,
  4;32,32,32,32;,
  4;33,33,33,33;,
  4;34,34,34,34;,
  4;29,29,29,29;,
  4;31,31,31,31;,
  4;32,32,32,32;,
  4;33,33,33,33;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;36,36,36,36;,
  4;37,37,37,37;,
  4;38,38,38,38;,
  4;39,39,39,39;,
  4;40,40,40,40;,
  4;35,35,35,35;,
  4;37,37,37,37;,
  4;38,38,38,38;,
  4;39,39,39,39;,
  4;40,40,40,40;,
  4;41,41,41,41;,
  4;42,42,42,42;,
  4;43,43,43,43;,
  4;44,44,44,44;,
  4;45,45,45,45;,
  4;46,46,46,46;,
  4;41,41,41,41;,
  4;43,43,43,43;,
  4;44,44,44,44;,
  4;45,45,45,45;,
  4;46,46,46,46;,
  4;47,47,47,47;,
  4;48,48,48,48;,
  4;49,49,49,49;,
  4;50,50,50,50;,
  4;51,51,51,51;,
  4;52,52,52,52;,
  4;47,47,47,47;,
  4;49,49,49,49;,
  4;50,50,50,50;,
  4;51,51,51,51;,
  4;52,52,52,52;,
  4;53,53,53,53;,
  4;54,54,54,54;,
  4;55,55,55,55;,
  4;56,56,56,56;,
  4;57,57,57,57;,
  4;58,58,58,58;,
  4;53,53,53,53;,
  4;55,55,55,55;,
  4;56,56,56,56;,
  4;57,57,57,57;,
  4;58,58,58,58;,
  4;59,59,59,59;,
  4;60,60,60,60;,
  4;61,61,61,61;,
  4;62,62,62,62;,
  4;63,63,63,63;,
  4;64,64,64,64;,
  4;59,59,59,59;,
  4;61,61,61,61;,
  4;62,62,62,62;,
  4;63,63,63,63;,
  4;64,64,64,64;,
  4;65,65,65,65;,
  4;66,66,66,66;,
  4;67,67,67,67;,
  4;68,68,68,68;,
  4;69,69,69,69;,
  4;70,70,70,70;,
  4;65,65,65,65;,
  4;67,67,67,67;,
  4;68,68,68,68;,
  4;69,69,69,69;,
  4;70,70,70,70;,
  4;71,71,71,71;,
  4;72,72,72,72;,
  4;73,73,73,73;,
  4;75,75,75,75;,
  4;76,76,76,76;,
  4;77,77,77,77;,
  4;71,71,71,71;,
  4;73,73,73,73;,
  4;75,75,75,75;,
  4;76,76,76,76;,
  4;77,77,77,77;,
  4;71,71,71,71;,
  4;74,74,74,74;,
  4;73,73,73,73;,
  4;78,78,78,78;,
  4;76,76,76,76;,
  4;77,77,77,77;,
  4;71,71,71,71;,
  4;73,73,73,73;,
  4;78,78,78,78;,
  4;76,76,76,76;,
  4;77,77,77,77;;
 }
 MeshTextureCoords {
  494;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;;
 }
}
