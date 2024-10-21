pkg load symbolic;

pre_init_digit_1 = @() (digits(1))
pre_init_digit_8 = @() (digits(8))
pre_init_digit_16 = @() (digits(16))
pre_init_digit_32 = @() (digits(32))
pre_init_digit_64 = @() (digits(64))

assoc_predicate = @(x, y, z) ((x+y)+z == x + (y+z))

rand_gen = @() (rand())
rand_gen_vpa = @() (vpa(rand()))

final_computation = @(count, N) (count / N)

pre_init = {pre_init_digit_1, pre_init_digit_8, pre_init_digit_16, pre_init_digit_32, pre_init_digit_64}
rand_g = {rand_gen, rand_gen_vpa}

res = zeros(length(pre_init), length(rand_g))

for i = 1:length(pre_init)
  for j = 1:length(rand_g)
    res(i, j) = assoc(100, pre_init{i}, rand_g{j}, assoc_predicate, final_computation);
  endfor
endfor


assoc_predicate_2 = @(x, y, z) ((x+y)+z - (x + (y+z)) == 0.0)

assoc2 = {assoc_predicate, assoc_predicate_2}

res2 = zeros(length(assoc2), length(rand_g))

for i = 1:length(assoc2)
  for j = 1:length(rand_g)
    res2(i, j) = assoc(100, pre_init_digit_32, rand_g{j}, assoc2{i}, final_computation);
  endfor
endfor

res3 = zeros(length(assoc2))
res
for i = 1:length(assoc2)
  res3(i) = assoc(10000, pre_init_digit_32, rand_gen, assoc2{i}, final_computation);
 endfor
