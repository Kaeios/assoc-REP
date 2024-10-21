function count = assoc(N)
    count = 0;

    for i = 1:N
        x = rand();
        y = rand();
        z = rand();
        if (x+y)+z==x+(y+z)
            count = count+1;
        end
    end

    count = count / double(N);
end
