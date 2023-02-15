function v = cross_product(a, b)
    // this function calculates the cross product of two vectors
    // it mimics Scilab's in-built function "cross"

    v = zeros(1,3); // set the shape of v vector: 1x3 row vector

    v(1) = a(2)*b(3) - a(3)*b(2);
    v(2) = a(3)*b(1) - a(1)*b(3);
    v(3) = a(1)*b(2) - a(2)*b(1);
endfunction