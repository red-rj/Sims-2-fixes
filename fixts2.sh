#!/usr/bin/bash
# This script will attempt to apply the patches automatically
# we assume you're using Ultimate Collection

usage(){
    echo usage: fixts2.sh prefix [prefix-user=steamuser]
    exit
}

if [ -z $1 ]
then echo 'Prefix?'; usage ; exit 11
elif [ ! -d $1 ]
then echo Prefix not found; usage ; exit 12
fi

prefix=$1
user=${2:-steamuser}
#DEBUG=1

C="$prefix/drive_c"
sgr_path="$C/Program Files/EA Games/The Sims 2 Ultimate Collection/Fun with Pets/SP9/TSData/Res/Config"
ts2docs="$C/users/$user/Documents/The Sims 2"

if [[ -n $DEBUG ]]
then mkdir -p "$sgr_path" "$C/users/$user"
fi

if [[ ! -d "$sgr_path" ]]
then echo game dir not found!
    exit 13
fi

if [[ ! -d "$C/users/$user" ]]; then
    echo "user folder doesn't exist"
    echo "is $user the correct user?"
    exit 14
fi

mkdir -p "$ts2docs/Config"
mkdir -p "$ts2docs/Download"

set -e

# shadowfix
fixfile=(*simShadowFix*.zip)
fixfile=${fixfile[0]}

if [[ ! -f $fixfile ]]; then
    fixfile=simShadowFix.zip
    curl -L "https://chii.modthesims.info/getfile.php?file=1591075&v=1735832742" > $fixfile
fi

unzip -u $fixfile

# thumbnails_fix
fixfile=sims2_fixes.tar.xz
if [[ ! -f $fixfile ]]; then
    curl -L "https://github.com/tannisroot/installer-fixes/raw/master/sims2_fixes.tar.xz" > $fixfile
fi

tar xvf $fixfile thumbnails_fix.package

cp -v "Graphics Rules.sgr" "$sgr_path"
cp -v userstartup.cheat "$ts2docs/Config"
cp -v *.package "$ts2docs/Download"
