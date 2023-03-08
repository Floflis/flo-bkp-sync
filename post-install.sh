SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

sudo apt update
cd sync/git
bash git.sh
cd "$SCRIPTPATH"

bash post-install_custom.sh
