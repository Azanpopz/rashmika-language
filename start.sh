if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Azanpopz/rashmika-language.git /Azanpopz
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Azanpopz
fi
cd /Azanpopz
pip3 install -U -r requirements.txt
echo "Starting Azanpopz...."
python3 bot.py
