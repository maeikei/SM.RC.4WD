#!/bin/bash
echo "a.speed:30000" > /dev/ttyUSB0
echo "a.turn:fwd" > /dev/ttyUSB0
echo "b.speed:30000" > /dev/ttyUSB0
echo "b.turn:rev" > /dev/ttyUSB0
echo "c.speed:30000" > /dev/ttyUSB0
echo "c.turn:fwd" > /dev/ttyUSB0
echo "d.speed:30000" > /dev/ttyUSB0
echo "d.turn:rev" > /dev/ttyUSB0
echo "run" > /dev/ttyUSB0

HOME=`dirname $0`/..
$HOME/MPU6050/turn.until $*
echo "stop" > /dev/ttyUSB0