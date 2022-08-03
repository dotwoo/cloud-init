multipass launch -n primary --cloud-init cloud-config
# multipass mount ~/dev primary:/home/dotwoo
multipass list

read -p "Do you want to shell primary? " yn
if [[ "$yn" =~ "y" ]]; then
    multipass shell primary
fi

read -p "Do you wish to delete primary? " yn
if [[ "$yn" =~ "y" ]]; then
    multipass delete primary
    multipass purge
fi
