#################################
#	     ICONS					#
#################################
# Lightning => e00a
# >         => e0b1
# Terminal	=> f120
# Battery	=> {f240..f244}
# Arch		=> f300
# Lambda	=> λ
# Headphone	=> f025
# Spotify	=> f1bc
# Pi        => π
# Omega     => Ω
# cursive L => ℒ
# Hammer and Sickle  => ☭
# Right double arrow => 

#################################
#	     COLORS					#
#################################
# Green			=> 014
# Blue			=> 069
# Lighter Blue	=> 123
# Purple		=> 129
# Light Blue	=> 159
# Red			=> 196
# Yellow		=> 190
# Black			=> 232

#################################
#	   REMINDERS				#
#################################
# %K{color_number} text %k	=> set bacKground color to color_number
# %F{color_number} text %f	=> set Foreground color to color_number
# ╭─				=> use those to set prompt in a new line 
# ╰─				=> use those to set prompt in a new line

get_error() {
	if [[ $? -ne 0 ]]; then
		echo -n "%F{001}:(%f"
	fi
}

get_battery() {
	percentage=$(< /sys/class/power_supply/BAT1/capacity)
	if [[ $percentage -ge 95 ]]; then
		echo -n "%F{014}$(echo -n '\uf240 ' $percentage)%f"
	elif [[ $percentage -ge 75 ]]; then
		echo -n "\uf241  $percentage" 
	elif [[ $percentage -ge 50 ]]; then
		echo -n "\uf242  $percentage"
	elif [[ $percentage -ge 25 ]]; then
		echo -n "%F{190}$(echo -n '\uf243 ' $percentage)%f"
	else
		echo -n "%F{196}$(echo -n '\uf244 ' $percentage)%f"
	fi
}

new_line_up() {
	echo -n ╭─
}

new_line_down() {
	echo -n ╰─
}

get_time() {
	echo -n "%F{159}$(date +%H:%M)%f"
}

get_pwd() {
	if [[ "$HOME" = $(pwd) ]]; then
		#r="\uf015 "
		r="~"
	else
		location=${$(pwd)#$HOME}
		#[[ $pwd = $(pwd) ]] && r=$pwd || r="\uf015 $pwd"
		[[ $location = $(pwd) ]] && r=$location || r="~$location"
	fi
	#echo -n "%F{004}$r%f"
	#echo -n "%F{044}$r%f"
	echo -n "%F{093}$r%f"
}

user() {
	echo -n "%F{129}$(whoami)%f"
}

get_git() {
	branch=$(git branch --show-current 2> /dev/null)
	if [[ $? -eq 0 ]]; then
		echo -n "%F{123}|%f %F{006}\ue0a0%f %F{015}${branch}%f "
	else
		echo -n ""
	fi
}

left_separator="%F{123}$(echo -n '\uf101')%f"
right_separator="%F{123}$(echo -n '\uf100')%f"

PROMPT=" \$(get_pwd) \$(get_git)%F{123}$(echo -n '\uf101')%f  "
RPROMPT=" \$(get_error) "
