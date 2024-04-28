for file in  *.txt

do
  mv -- "$file" "${file// /_}"
done


for f in `find .`; do mv -v "$f" "`echo $f | tr '[A-Z]' '[a-z]'`"; done


