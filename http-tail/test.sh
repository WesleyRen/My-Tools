i=0
while [ $i -lt 120 ]; do
  d=$(date)
  printf "%10s:  %s\n" "$i" "$d" >> temp.log
  sleep 1
  ((i++))
done

