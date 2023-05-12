#!/bin/bash

function chance() {
	range=4
	threshold=3
	number=${RANDOM}

	expr $number % $range + 1 '>' $threshold
}


if [ $(chance) -eq 1 ]
then
	git pull \
	&& git commit --allow-empty --allow-empty-message -m '' > /dev/null \
	&& git push > /dev/null
fi
