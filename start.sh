if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/JagadishBotz/Auto-filter.git /Souravmkv/AutoFilerAdv 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /JagadishBotz/Auto-filter 
fi
cd /Auto-filter 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
