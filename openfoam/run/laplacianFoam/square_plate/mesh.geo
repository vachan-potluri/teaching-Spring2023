Point(1) = {-1,-1,-1};
Point(2) = {1,-1,-1};
Point(3) = {1,1,-1};
Point(4) = {-1,1,-1};

For i In {1:4}
    Line(i) = {i,Modulo(i,4)+1};
EndFor

Transfinite Line{1:4} = 21;
Line Loop(1) = {1:4};
Plane Surface(1) = {1};
Transfinite Surface{1};
Recombine Surface{1};

out[] = Extrude{0,0,2}{Surface{1}; Layers{1}; Recombine;};

Physical Surface("left") = {out[5]};
Physical Surface("right") = {out[3]};
Physical Surface("bottom") = {out[2]};
Physical Surface("top") = {out[4]};
Physical Surface("front_and_back") = {1,out[0]};
Physical Volume("volume") = {out[1]};