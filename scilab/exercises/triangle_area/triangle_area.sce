// include required files
exec("cross_product.sce", -1);
exec("vector_norm.sce", -1);

function A = triangle_area(p1,p2,p3)
    // fill this
    // hint: the sides of triangle can be obtained by subtracting the point coordinates
    // calculate cross product of any of the sides, and take the norm
endfunction

// check your function here
// try different choices for p1, p2 and p3
/*
p1 = [1,0,0];
p2 = [0,1,0];
p3 = [0,0,0];
disp(triangle_area(p1,p2,p3));
*/
