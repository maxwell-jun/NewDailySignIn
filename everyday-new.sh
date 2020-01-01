echo `date +%Y%m%d-%H%M%S` >> /mnt/github/NewDailySignIn/daily && cd /mnt/github/NewDailySignIn && git add . && git commit -m `date +%Y%m%d-%H%M%S` && git push
