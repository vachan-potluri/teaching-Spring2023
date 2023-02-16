function v = cross_product(a, b)
    // this function calculates the cross product of two vectors
    // it mimics Scilab's in-built function "cross"

    v = zeros(1,3); // set the shape of v vector: 1x3 row vector

    v(1) = a(2)*b(3) - a(3)*b(2);
    v(2) = a(3)*b(1) - a(1)*b(3);
    v(3) = a(1)*b(2) - a(2)*b(1);
endfunction

function pass_flag = test_cross_product(a, b)
    // this function tests the "cross_product" function by comparing
    // the result with Scilab's "cross" function
    disp("Inputs:");
    disp(a, b);
    result = cross_product(a, b);
    scilab_result = cross(a, b);
    disp("Obtained result:");
    disp(result);
    disp("Scilab result:");
    disp(scilab_result);
    pass_flag = and(result == scilab_result);

    if pass_flag then
        disp("Test passed");
    else
        disp("Test failed");
    end
    clc;
endfunction

test_cross_product([1,0,0], [0,1,0]);
test_cross_product([1,2,3], [2,4,3]);
