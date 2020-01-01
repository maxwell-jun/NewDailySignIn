echo `date +%Y%m%d-%H%M%S` >> /root/DailySignIn/daily && cd /root/DailySignIn && git add . && git commit -m `date +%Y%m%d-%H%M%S` && git push
