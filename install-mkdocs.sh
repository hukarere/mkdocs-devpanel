#/bin/sh -e
apt update
apt install -y python3-pip
mkdir /home/www/.local/lib /home/www/.local/bin
chown -R www /home/www/.local/lib /home/www/.local/bin
pip3 install mkdocs

exit

# under root mkdodcs will be intalled to /usr/local/bin

cat >>$HOME/.bashrc <<EOF
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH
EOF