#!/bin/#!/src/sh

# this script will uninstall Yin-Yang and will also delete its config files

echo "your current user is in uninstall" $SUDO_USER

if [ -z "$1" ]
  then
    rm -rf /home/$SUDO_USER/.local/share/applications/Yin-Yang.desktop
    echo "removed .desktop files"
fi

if [ "$1" != "root" ]
  then
    rm -rf /home/$1/.local/share/applications/Yin-Yang.desktop
fi

rm -rf /opt/yin-yang /usr/bin/yin-yang/ ~/.config/yin-yang/ /usr/bin/yin-yang
echo "Yin-Yang uninstalled succesfully"

while true; do
    read -p "Do you wish to remove Yin-Yang config files as well?" yn
    case $yn in
        [Yy]* ) echo "removing config files for" $SUDO_USER;
                if [ -z "$1" ]
                   then
                    rm -rf /home/$SUDO_USER/.config/yin_yang
                    echo "done"
                fi
                if [ "$1" != "root" ]
                   then
                    rm -rf /home/$1/.config/yin_yang
                    echo "done"
                fi
                break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo "have a nice day ..."
