#!/usr/bin/env sh\nset -eu\nrm -rf app\nmkdir -p app\nunzip -q -o huzaifa-phone-store-production.zip -d app\ncd app/huzaifa-phone-store\nnpm ci --omit=dev
