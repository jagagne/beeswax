#! /bin/bash

ifconfig en1 | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}'
