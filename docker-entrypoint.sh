#!/bin/bash

echo "some file content" > /data/x

exec "$@"