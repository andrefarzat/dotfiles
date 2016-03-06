echo ""
echo "Installing git"
brew install git

echo ""
echo "Installing diff-so-fancy"
brew install diff-so-fancy

git config --global pager.diff "diff-so-fancy | less --tabs=4 -RFX"
git config --global pager.show "diff-so-fancy | less --tabs=4 -RFX"

git config --global color.ui "always"
git config --global color.diff.meta "yellow bold"
git config --global color.diff.commit "green bold"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "red reverse"

git config --global color.branch.current "yellow reverse"
git config --global color.branch.local "yellow"
git config --global color.branch.remote "green"

git config --global color.added "yellow"
git config --global color.changed "green"
git config --global color.untracked "cyan"

git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

link_files $dotdir/git/.gitconfig ~/.gitconfig
