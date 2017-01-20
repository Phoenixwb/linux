#!bin/bash
#root=$(cd `dirname $0`; pwd)
root="/tmp"
sh $(cd `dirname $0`; pwd)/mongo.dump 127.0.0.1:27017 test test 123456 $root
