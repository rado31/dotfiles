function conf
	cd $(fd -td -H -E .git . ~/.config | fzf)
end
