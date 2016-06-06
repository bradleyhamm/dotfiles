####################
## Getting Around ##
####################
alias l='ls -lAhG'
alias xopen='xdg-open'

#############
## Vagrant ##
#############
alias vup='vagrant up'
alias vhalt='vagrant halt'
alias vsuspend='vagrant suspend'
alias vssh='vagrant ssh'
alias vstatus='vagrant global-status'
alias vdestroy='vagrant destroy'

##############
## Grepping ##
##############
alias pygrep='grep -r --include \*.py --exclude "test_*"'
alias jsgrep='grep -r --include \*.js --exclude "test_*" --exclude "*.spec.js" --exclude "*.setup.js" --exclude "*.min.js*"'
