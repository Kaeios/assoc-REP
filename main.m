PAGER('/dev/null');
more off;  % Ensure no pagination occurs

% Redirect stdout to /dev/null to suppress the message
evalc('pkg load symbolic');

result = assoc(100);
fileID = fopen('answer_associativity.txt','w');
fprintf(fileID, '%.2f\n', double(100 * result));
fclose(fileID);
