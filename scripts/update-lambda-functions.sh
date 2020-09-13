#!/bin/bash
aws lambda update-function-code --function-name html-generator-fourfold --s3-bucket fourfold.co.uk --s3-key tools-1.0.0-all.jar
