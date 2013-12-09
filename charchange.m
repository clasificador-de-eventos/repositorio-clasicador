%This function is used for the function cellstrnum2csv, change os a string a char for other%
% - string: is the string that contains the char that change
% - old_char: is the old char
% - new_char: is the new char

%__________________________________________________________________________________________%

function newstring=charchange(string,old_char,new_char)

[row col] = size(string);
clear row i;
for i = 1:col
    if string(i) == old_char
        string(i) = new_char;
    end
end
newstring=string;


