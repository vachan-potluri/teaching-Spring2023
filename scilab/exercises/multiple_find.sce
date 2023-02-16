function indices = multiple_find(array, value)
    // this function returns the index locations in "array"
    // where its elements are equal to "value"

    indices = []; // initialise to an empty array

    N = length(array); // get the length of array

    for i = 1:N
        if array(i) == value then
            indices(1,$+1) = i; // add this index to "indices"
        end
    end
endfunction

function pass_flag = test_multiple_find(array, value, expected_result)
    // this function tests the "multiple_find" function
    // by comparing its output with "expected_result"
    disp("Input array:");
    disp(array);
    disp("Input value:");
    disp(value);
    result = multiple_find(array, value);
    disp("Expected result:");
    disp(expected_result);
    disp("Obtained result");
    disp(result)
    pass_flag = and(result == expected_result)
    if pass_flag then
        disp("Test passed");
    else
        disp("Test failed");
    end
    clc;
endfunction

test_multiple_find([1,5,3,5,2], 5, [2,4]);
test_multiple_find([0.4,0.2,0.3,0.2], 1, []);
test_multiple_find([0.2,0.4,0.4,0.6], 0.4, [2,3]);
test_multiple_find([%t,%f,%f,%f], %f, [2,3,4]);

