[[ -z "${APP_ROOT}" ]] && echo "set env APP_ROOT" && exit 2

function _bind_root_file() {
	local file=$1

	if [[ -f "/root/${file}" ]]; then
		mkdir -p ${APP_ROOT}/root
		[[ -f "${APP_ROOT}/root/${file}" ]] || touch "${APP_ROOT}/root/${file}"
		mount -o bind "/root/${file}" "${APP_ROOT}/root/${file}"
	fi
}

mkdir -p ${APP_ROOT}/proc
mount -t proc /proc ${APP_ROOT}/proc

mkdir -p ${APP_ROOT}/dev
mount -o rbind /dev ${APP_ROOT}/dev

mkdir -p ${APP_ROOT}/sys
mount -o rbind /sys ${APP_ROOT}/sys

mkdir -p ${APP_ROOT}/run
mount -o rbind /run ${APP_ROOT}/run

_bind_root_file .bash_history
_bind_root_file .bash_profile
_bind_root_file .zsh_history
_bind_root_file .zshrc

mkdir -p ${APP_ROOT}/etc
[[ -f "${APP_ROOT}/etc/resolv.conf" ]] || touch "${APP_ROOT}/etc/resolv.conf"
mount -o bind /etc/resolv.conf ${APP_ROOT}/etc/resolv.conf

tail -f /dev/null