SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

#ln -s '/media/daniella/Main Linux/home/daniell/.config/4kdownload.com' /home/daniella/.config/4kdownload.com
#ln -s '/media/daniella/Main Linux/home/daniell/.cache/4kdownload.com' /home/daniella/.cache/4kdownload.com
#ln -s '/media/daniella/Main Linux/home/daniell/.local/share/4kdownload.com' /home/daniella/.local/share/4kdownload.com
#sudo dpkg -i '/media/daniella/78CFABD670741B23/Linux/Downloads/Apps-Programs/.DEB/4K software/4kvideodownloader/4kvideodownloader_4.23.0-1_amd64.deb'
#sudo dpkg -i '/media/daniella/78CFABD670741B23/Linux/Downloads/Apps-Programs/.DEB/4K software/4kstogram/4kstogram_4.4.2-1_amd64.deb'
#sudo dpkg -i '/media/daniella/78CFABD670741B23/Linux/Downloads/Apps-Programs/.DEB/4K software/4ktokkit/4ktokkit_1.6.0-1_amd64.deb'

#sudo apt install mkdocs
#pip install mkdocs-minify-plugin
#pip install mkdocs-material

#sudo apt install golang-go

cd 'post-install_custom/Construct 2 usable up-to-date'
bash install.sh
cd "$SCRIPTPATH"

sudo apt-add-repository ppa:cubic-wizard/release
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E
sudo apt-get update
sudo apt-get install cubic

sudo apt install audacity
sudo apt install obs-studio

sudo dpkg -i post-install_custom/balena-etcher_1.14.3_amd64.deb
apt --fix-broken install
