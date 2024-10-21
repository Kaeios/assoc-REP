function count = assoc(N)
    count = 0;
    for i = 1:N
    	x = vpa(rand());
    	y = vpa(rand());
    	z = vpa(rand());
        if (x+y)+z==x+(y+z)
            count = count+1;
        end
    end

    count = count / vpa(N);
end
