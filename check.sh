#!/usr/bin/env dash

# if [ -d homebrew ]; then
#     rm -rf homebrew
# fi

awk '/^  "/ { print }' cmd/brew-desc.rb | sed 's/^  "//' | sed 's/".*$//' \
    > done.txt

if [ ! -d homebrew ]; then
    git clone https://github.com/Homebrew/homebrew.git
else
    cd homebrew
    git pull origin master
    cd "$OLDPWD"
fi
ls homebrew/Library/Formula/ | sed 's/\.rb$//' > homebrew.txt

printf "\n# fishfish is an expected diff.\n\n"
diff done.txt homebrew.txt

# rm -rf homebrew
