cat ./data.txt |  while IFS='-' read -ra ADDR; do
  myVar1=${ADDR[0]}
  myVar2=${ADDR[1]}
#  echo -$myVar1-$myVar2-
  printf "{\n\"value\": \"$myVar2\",\n\"label\": \"$myVar1\"\n},\n"
done

