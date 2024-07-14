if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/seriespeek/SeriesPeek-Deadpool-Bot /SeriesPeek-Deadpool-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SeriesPeek-Deadpool-Bot
fi
cd /SeriesPeek-Deadpool-Bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
