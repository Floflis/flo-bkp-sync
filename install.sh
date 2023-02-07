#!/bin/bash

echo "Welcome to the Floflis' flo-bkp-sync installer!"

echo "- Copying (probably) a lot of files. Don't worry if it takes several times..."
sudo mkdir /usr/lib/flo-bkp-sync
sudo cp -r -f --preserve=all . /usr/lib/flo-bkp-sync

echo "- Installing Floflis' flo-bkp-sync in /usr/bin..."
sudo cat > /usr/bin/flo-bkp-sync << ENDOFFILE
#!/bin/bash

source /usr/lib/flo-bkp-sync/flo-bkp-sync
ENDOFFILE

echo "- Turning Floflis' flo-bkp-sync into a executable..."
chmod 755 /usr/bin/flo-bkp-sync && sudo chmod +x /usr/bin/flo-bkp-sync

sudo rm /usr/lib/flo-bkp-sync/install.sh # no need anymore to use the installer again

echo "Done!"
