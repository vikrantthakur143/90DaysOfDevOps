

function system_info() {

	hostname
	grep -E "^(NAME|VERSION)=" /etc/os-release
}


function uptime() {
	uptime

}


system_info

uptime

