rm -r full/home
mkdir full/home

rsync -av /home/. full/home

bash backup-full_custom.sh
