echo `date +%Y%m%d-%H%M%S` >> /mnt/github/DailySignIn/daily && cd /mnt/github/DailySignIn && git add . && git commit -m `date +%Y%m%d-%H%M%S` && git push
