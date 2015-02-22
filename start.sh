#! /bin/sh

sleep 30
echo "Starting MT171 reading \n" 
cd /home/pi/metering
python -u MT171.py < /dev/null >> MT171.log 2>&1 &
python3 buitenlicht.py < /dev/null > /dev/null 2>&1 &

exit 0

