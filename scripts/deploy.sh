#!/bin/bash

set -ev

function deploy {
	# $1 server url
	# $2 dest directory
	LOCAL_PATH="${TRAVIS_BUILD_DIR}/"
	SSH_PARAMS="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

	rsync -avz -e "${SSH_PARAMS}" "${LOCAL_PATH}" cicd@"$1":"$2" --delete \
		--exclude 'docker-compose.yml' \
		--exclude 'deploy_rsa' \
		--exclude '.git' \
		--exclude 'npm-debug.log' \
		--exclude 'coverage' \
		--exclude '.nyc_output' \
		--exclude '.env' \
		--exclude 'storage' \
		;
}


if [ "${TRAVIS_BRANCH}" == "master" ]; then
	deploy  "185.25.117.12" "/var/www/zeon/backend/"
	deploy  "185.233.116.208" "/var/www/zeon/backend/"
fi

exit 0;
