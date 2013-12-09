%This function is used for tansform a table in a csv document, using any delimiter%
% - filename: is a string with the name of export file
% - cellarray: is the table that changed
% - delimiter: is the delimiter between elements of table
% - separador decimal: is a string that serves for separate decimals, if it's a table of numbers

%_________________________________________________________________________________%

function cellstrnum2csv(filename, cellarray, delimiter, separadordecimal)

fid = fopen(filename, 'wt');
[filas columnas]=size(cellarray);
clear counter_row counter_col;

if separadordecimal=='.'
    for counter_row=1:filas
        string=char();
        for counter_col=1:columnas
            string=strcat(string,num2str(cellarray{counter_row,counter_col}),delimiter);
        end
        fprintf(fid, strcat(string,'\n'));
    end
else
    for counter_row=1:filas
        string=char();
        for counter_col=1:columnas
            string=strcat(string,charchange(num2str(cellarray{counter_row,counter_col}),'.',separadordecimal),delimiter);
        end
        fprintf(fid, strcat(string,'\n'));
    end
end
clear separadordecimal counter_row counter_col
fclose(fid);
