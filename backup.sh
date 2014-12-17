#!/usr/bin/env bash
echo """
{
	\"cluster\": {
		\"machines\": [\"$ETCD\"]
	}
}
""" >  /go/src/app/etcd-configuration.json

now=$(date +"%Y_%m_%d")
/go/bin/app -file=/data/etcd-dump-$now.json dump
