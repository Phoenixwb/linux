#!bin/bash
root="/tmp"
sh $(cd `dirname $0`; pwd)/mysql.dump 127.0.0.1 mydb root 123456 $root
