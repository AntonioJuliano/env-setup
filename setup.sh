cp .bash_profile ~/.bash_profile
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade
brew install node docker docker-compose docker-cloud mongodb wget

wget -O ~/Downloads/googlechrome.dmg https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
open ~/Downloads/googlechrome.dmg
echo "[Press enter when installed]"
read
/usr/bin/open -a "/Applications/Google Chrome.app" 'https://www.iterm2.com/downloads.html'
/usr/bin/open -a "/Applications/Google Chrome.app" 'https://www.sublimetext.com/3'
/usr/bin/open -a "/Applications/Google Chrome.app" 'https://atom.io/'
/usr/bin/open -a "/Applications/Google Chrome.app" 'https://slack.com/downloads/osx'
/usr/bin/open -a "/Applications/Google Chrome.app" 'https://docs.docker.com/docker-for-mac/install/'
/usr/bin/open -a "/Applications/Google Chrome.app" 'https://www.spotify.com/us/download/mac/'
echo "[Enter to continue]"
read

git config --global user.name "Antonio Juliano"
git config --global user.email antonio.m.juliano@gmail.com
ssh-keygen -t rsa -b 4096 -C "antonio.m.juliano@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
/usr/bin/open -a "/Applications/Google Chrome.app" 'https://github.com/'
echo "[Enter to continue] Log into github"
read

pbcopy < ~/.ssh/id_rsa.pub
/usr/bin/open -a "/Applications/Google Chrome.app" 'https://github.com/settings/keys'
echo "[Enter to continue] Add ssh key (copied)"
read
