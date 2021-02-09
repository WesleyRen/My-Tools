# download correct version of websocketd here: http://websocketd.com/
../test.sh &
./lib/websocketd --port=8080  tail -f temp.log
