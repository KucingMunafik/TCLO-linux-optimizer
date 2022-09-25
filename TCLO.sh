#1bin/bash

user=$(whoami)
date=$(date)
echo "$date"
echo "Welcome To simple Linux Optimizer, $user"
echo "TCLO is loading...."
sleep 1

echo "
What do you want to do now ?: "
echo "
1) Change the Linux Kernel
2) Run Stacer
3) Activate Automatic Updates
4) Add Repositories
5) Change Dekstop Environment
6) Create a SwapFile
7) Delete Cache 
8) Other
9) Exit"

read input

if [[$((input)) == 1]]; then

echo "Choose the Linux Kernel you Want to install: 
1) Stable 
2)LTS
3)Hardened
4)Zen "

read ker 

if [[$((ker)) == 1]]; then 
echo "installing kernel stable..."
sleep 1
sudo pacman -S linux

if [[$((ker)) == 2]];
echo "installing kernel LTS..."
sleep 1
sudo pacman -S linux-lts

if [[$((ker)) == 3]];
echo "installing hardened kernel..."
sleep 1
sudo pacman -S linux-hardened

if [[$((ker)) == 4]];
echo "installing kernel zen..."
sleep 1
sudo pacman -S linux-zen

elif [[ $((input)) == 2]]; then

s=$(stacer) 

s 

elif [[ $((input)) == 3]]; then

echo: "set the time when the computer will update(0 1-24): " 
read tmup

update $(crontab -e 
$tmup root (apt-get-update && apt-get -y -d upgrade) > dev/null)

$update

elif [[$((input)) == 4]]; then

echo "type the ppa link or website link: "

read ppa

add=$(sudo add-apt-repository ppa:$ppa)

$add

elif [[$((input)) == 5]]; then

echo "type the dekstop environment do you want to install: "
read dksnv

if [[$((dksnv)) == xfce]]; then

insxf=$()
$insxf
if [[$((dksnv)) == lxqt]]; then

ilxqt=$()
$ilxqt
if  [[$((dksnv)) == kde]]; then

ikde=$()
$ikde
if [[$((dksnv)) == gnome]]; then

ignm=$()
$ignm

elif [[$((input)) == 6]]; then

echo "please type the size of swapfile you want to create: "
read swapsize

createswap=$(sudo fallocate -l $swapsize/swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile)

$createswap

echo "swapfile has been created. to make it permanent, con fig manually at /etc/fstab"

elif [[$((input)) == 7]]; then

echo "please select an options: 
1)Clear PageCache only
2)Clear dentries and inodes
3)Clear pagecache, dentries, and inodes."

read cachechoose

if [[$((cachechoose)) == 1]]; then
$(sync; echo 1 > /proc/sys/vm/drop_caches)

if [[$((cachechoose)) == 2]]; then
$(sync; echo 2 > /proc/sys/vm/drop_caches)

if [[$((cachechoose)) == 3]]; then
$(sync; echo 3 > /proc/sys/vm/drop_caches)

elif [[$((input)) == 8]]; then

elif [[$((input)) == 9]]; then

exit 
done
fi 
