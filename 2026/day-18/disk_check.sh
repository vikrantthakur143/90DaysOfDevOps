#!/bin/bash


function check_disk() {
	df -h /
}

function check_memory() {
	free -m
}

check_disk

check_memory