function fish_prompt --description 'Write out the prompt'

	set -l last_status $status

	# Virtualenv
	# handled by pipenv, so comment this out
	# if set -q VIRTUAL_ENV
	#     echo -n -s (set_color white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
	# end

	# Just calculate these once, to save a few cycles when displaying the prompt
	if not set -q __fish_prompt_hostname
		set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
	end

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	if not set -q __fish_prompt_rvm
		set -g __fish_prompt_rvm ''
	end

	set -l delim '$'

	switch $USER

	case root

		if not set -q __fish_prompt_cwd
			if set -q fish_color_cwd_root
				set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
			else
				set -g __fish_prompt_cwd (set_color $fish_color_cwd)
			end
		end

	case '*'

		if not set -q __fish_prompt_cwd
			set -g __fish_prompt_cwd (set_color $fish_color_cwd)
		end

	end

	set -l prompt_status
	if test $last_status -ne 0
		if not set -q __fish_prompt_status
			set -g __fish_prompt_status (set_color $fish_color_status)
		end
		set prompt_status "$__fish_prompt_status [$last_status]$__fish_prompt_normal"
	end

	if not set -q __fish_prompt_user
		set -g __fish_prompt_user (set_color $fish_color_user)
	end
	if not set -q __fish_prompt_host
		set -g __fish_prompt_host (set_color $fish_color_host)
	end
    if not set -q __fish_prompt_delim
        set -g __fish_prompt_delim (set_color 'b26818')
    end

	echo -n -s "$__fish_prompt_rvm$__fish_prompt_user" "$USER" @ "$__fish_prompt_host" "$__fish_prompt_hostname" "$__fish_prompt_normal" ' ' "$__fish_prompt_cwd" (prompt_pwd) (__fish_git_prompt) "$__fish_prompt_normal" "$prompt_status" "$__fish_prompt_delim" "$delim" "$__fish_prompt_normal" ' '
end

set -xg fish_color_user 89cff0
set -xg fish_color_host 6593f5
