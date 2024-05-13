# **zsh-config**

<br>

# **FolderTree**

```bash
# ==============================================================================
.git/                           #
# ------------------------------------------------------------------------------
.oh-my-zsh/                     # oh-my-zsh dir
    custom/
        plugins/
        themes/
# ------------------------------------------------------------------------------
D2Coding-Ver1.3.2-20180524/     # D2Coding font (poweline을 지원)
# ==============================================================================
.zshrc                          # zsh config
# ------------------------------------------------------------------------------
README.md                       #
# ==============================================================================
```

---

<br>

# **Installation**

1. Install zsh

```bash
sudo apt update;
sudo apt install -y zsh;
sudo apt install -y curl;
sudo apt install -y fonts-powerline autojump fzf fd-find fasd;
```

<br>

2. Change current shell

```bash
chsh -s /usr/bin/zsh;

# user(steve) 지정
chsh -s /usr/bin/zsh steve;
```

<br>

3. Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";

# 무인설치
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --unattended";
```

<br>

4. Clone zsh-config

```bash
git clone https://github.com/jungsbro/zsh-config.git ~/github/zsh-config;
cp -Rfv ~/github/zsh-config/.oh-my-zsh/custom ~/.oh-my-zsh/;
cp -Rfv ~/github/zsh-config/.zshrc ~;
```

```bash
vi ~/.zshrc         # export ZSH="/home/{userID}/.oh-my-zsh"
```

<br>

5. Install plugins for oh-my-zsh

```bash
pushd ~/.oh-my-zsh/custom/plugins;
git clone https://github.com/zsh-users/zsh-autosuggestions.git;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git;
git clone https://github.com/chrissicool/zsh-256color.git;
popd;
```

<br>

6. Install truetype-font

```bash
sudo cp -r ~/github/zsh-config/D2Coding-Ver1.3.2-20180524/D2Coding* /usr/share/fonts/truetype;
fc-cache -rv;
```

```bash
reboot
```

---

<br>
