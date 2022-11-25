DOT_DIR="$HOME/dotfiles"


for f in .*;
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    ln -sn $DOT_DIR/"$f" $HOME/"$f"
    echo "Installed $f"
done

echo "#####################3"
echo "links setup is done!"
echo "#####################3"
