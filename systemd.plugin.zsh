user_commands=(
  list-units is-active status show help list-unit-files
  is-enabled list-jobs show-environment cat list-timers)

sudo_commands=(
  start stop reload restart try-restart isolate kill
  reset-failed enable disable reenable preset mask unmask
  link load cancel set-environment unset-environment
  edit)

now_commands=(enable disable mask)

for c in $user_commands $sudo_commands; do
	alias sc-$c="systemctl $c"
	alias scu-$c="systemctl --user $c"
done
for c in $now_commands;do
  alias sc-$c-now="sc-$c --now"
  alias scu-$c-now="scu-$c --now"
done
