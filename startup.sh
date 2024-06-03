# Run this one time then delete in the home directory
dotfiles_root=$(git rev-parse --show-toplevel)
cp -rsf "${dotfiles_root}"/. ~
