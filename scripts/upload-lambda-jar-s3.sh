#!/bin/bash
aws s3 cp ../tools/build/libs/tools-1.0.0-all.jar s3://fourfold.co.uk --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
