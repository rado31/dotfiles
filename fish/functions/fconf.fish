function fconf
	nvim $(fd -tf -H -E .git . ~/.config | fzf)
end
