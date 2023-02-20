function psi = get_streamfunction(x,y,R,U)
    // this function calculates the streamfunction for inviscid flow (free stream velocity "U")
    // over a cylinder of radius "R" at the coordinates "(x,y)"

    // first set the size of psi
    psi = zeros(length(x), length(y));

    for i = 1:length(x)
        for j = 1:length(y)
            r = (x(i)^2 + y(j)^2)^0.5; // radius
            if r < R then
                // set psi=0 for points inside the cylinder
                psi(i,j) = 0;
            else
                // points outside cylinder
                psi(i,j) = (r-R^2/r)*U*y(j)/r;
            end
        end
    end
endfunction

function cp = get_pressure_coeff(x,y,R,U)
    cp = zeros(length(x), length(y));

    for i = 1:length(x)
        for j = 1:length(y)
            r = (x(i)^2 + y(j)^2)^0.5; // radius
            if r < R then
                // set psi=0 for points inside the cylinder
                cp(i,j) = 0;
            else
                // points outside cylinder
                theta = asin(y(j)/r);
                cp(i,j) = 2*R^2/r^2*cos(2*theta) - R^4/r^4;
            end
        end
    end
endfunction

R = 0.25;
U = 1;
f = figure(1);

// first plot the cylinder
x_cyl = linspace(-R,R,100);
plot(x_cyl,(R^2-x_cyl.^2).^0.5,"k-"); // top half
plot(x_cyl,-(R^2-x_cyl.^2).^0.5,"k-"); // bottom half

// now plot the stream function
x = linspace(-1,1,100);
y = linspace(-1,1,100);
psi = get_pressure_coeff(x,y,R,U);
n_contours = 64;
f.color_map = jetcolormap(n_contours);
contour(x,y,psi,n_contours);
gca().parent.background = -2;
colorbar(min(psi), max(psi));
