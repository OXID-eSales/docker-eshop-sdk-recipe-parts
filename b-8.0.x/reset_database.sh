#!/bin/bash

CONSOLE_PATH=$( [ -e "source/bin/oe-console" ] && echo "bin/oe-console" || echo "vendor/bin/oe-console" )

echo -e "\033[1;37m\033[1;42mReset database\033[0m\n"

docker compose exec -T php ${CONSOLE_PATH} oe:database:reset --force