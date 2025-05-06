function f
	nvim $(fd -tf -H -E .git -E node_modules . $argv[1] | fzf)
end
