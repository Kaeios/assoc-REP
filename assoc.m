function count = assoc(N)
    count = 0;
    x = rand();
    y = rand();
    z = rand();
    for i = 1:N
        if (x+y)+z==x+(y+z)
            count = count+1;
        end
    end

    count = count / N;
end
