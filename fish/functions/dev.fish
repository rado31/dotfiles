function dev
	cd $(fd -td -H -E .git -E node_modules . ~/dev | fzf)
end
