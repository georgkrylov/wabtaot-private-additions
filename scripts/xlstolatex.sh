#!/bin/bash
echo $1
echo -e -n "\\\begin{table}\n\\\small\n\\\centering\n\\\begin{tabular}{" > header.txt
t=`grep "Row Labels" table.txt  | sed -e 's/[^\t]//g' | awk '{print length}' `

for (( c=0; c<=$t; c++ )) do
   echo -n "| c " >>  header.txt
done
echo "|}" >>  header.txt
echo "\hline" >>  header.txt
sed  -E -z  's/\n/ \\\\\n/g'  $1 > body.txt
sed  -E -i 's/\t/ \& /g'  body.txt
sed  -i 's/Average of Max_duration_ms/Max. dur./g' body.txt
sed  -i 's/Average of min_duration_ms/Min. dur./g' body.txt
sed  -i 's/Average of average_duration_ms/Av.  dur./g' body.txt
cat header.txt body.txt > result.txt
echo "\hline" >> result.txt
echo -e "\\\end{tabular}\n\\\caption{Update Caption}\n\\\label{tab:update_label}\n\\\end{table}\n" >> result.txt
rm header.txt body.txt