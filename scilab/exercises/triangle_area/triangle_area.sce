// include required files
exec("cross_product.sce", -1);
exec("vector_norm.sce", -1);

function area = triangle_area(p1, p2, p3)
    // this function calculates the area of a triangle, taking three points as the inputs
    // the area of a triangle is half the magnitude of cross product of any of its two sides

    side1 = p2-p1;
    side2 = p3-p1;
    area = 0.5*(vector_norm(cross_product(side1, side2)));
endfunction

function pass_flag = test_triangle_area(p1, p2, p3, expected_area)
    // this function tests the function "triangle_area"
    // by comparing the output with "expected area"
    disp("Input points:");
    disp(p1, p2, p3);
    area = triangle_area(p1, p2, p3);
    disp("Obtained area:");
    disp(area);
    disp("Expected area:");
    disp(expected_area);
    pass_flag = (area==expected_area);
    if pass_flag then
        disp("Test passed");
    else
        disp("Test failed");
    end
    clc;
endfunction

test_triangle_area([0,0,0], [1,0,0], [0,1,0], 0.5);
test_triangle_area([0,0,0], [2,0,0], [-1,1,0], 1);
