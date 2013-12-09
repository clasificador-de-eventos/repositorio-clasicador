%This function is used for the function cellstrnum2csv, change os a string a char for other

function newstring=charchange(string,old_char,new_char)

[row col] = size(string);
clear row i;
for i = 1:col
    if string(i) == old_char
        string(i) = new_char;
    end
end
newstring=string;


