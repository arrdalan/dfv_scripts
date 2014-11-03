#!/bin/sh

insmod ./ksocket.ko
insmod ./dfvclient.ko
insmod ./dfvclient_network.ko host=192.168.3.12
