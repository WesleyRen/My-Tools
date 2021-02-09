../test.sh &
ip=$(hostname -i)
echo -e "To see this in a browser: in your browser dev console, type in:
  new EventSource(\"http://$ip:1234/\").onmessage = function(e) { console.log(e.data); };"

# Good for Linuyx, but won't work on Mac.
(echo -e 'HTTP/1.1 200 OK\nAccess-Control-Allow-Origin: *\nContent-type: text/event-stream\n' && tail -f ./temp.log | sed -u -e 's/^/data: /;s/$/\n/') | nc -l 1234

