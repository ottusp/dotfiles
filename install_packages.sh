packagelist='packages.txt'
sudo apt-get install $(grep -vE "^\s*#" $packagelist  | tr "\n" " "| tr "\r\n" " ")
