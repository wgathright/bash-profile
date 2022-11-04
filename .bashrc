echo "FROM BASHRC"

if [ -f ~/.bash_profile ]; then
	echo "Found .bash_profile,sourcing..."
	source ~/.bash_profile
fi
