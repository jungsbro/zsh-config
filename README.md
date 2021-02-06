cd ~/.oh-my-zsh/custom/plugins;
git clone https://github.com/chrissicool/zsh-256color.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

cd ~/D2Coding-Ver1.3.2-20180524;
sudo cp -r D2Coding* /usr/share/fonts/truetype;
fc-cache -rv;
cd ~;
rm -rf ~/D2Coding*;


