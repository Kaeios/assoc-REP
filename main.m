PAGER('/dev/null')
pkg load symbolic;
result = assoc(100);
fileID = fopen('answer_associativity.txt','w');
fprintf(fileID, '%f\n', double(result));
fclose(fileID);
