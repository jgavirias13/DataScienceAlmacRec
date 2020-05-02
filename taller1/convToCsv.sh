files=$(find . -name "*.xls" -or -name "*.xlsx")
for i in $files; do
  in2csv $i > ${i/%.xls*/.csv}
  rm $i
done
