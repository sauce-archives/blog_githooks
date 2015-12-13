help:
	# BASE SETUP
	# 	make setup_githooks


setup_gitconfig:
	@git config include.path '../.gitconfig'

setup_githooks: setup_gitconfig
	@rm -rf .git/hooks_bac
	@mv .git/hooks .git/hooks_bac
	@ln -fs ../hooks/ .git
