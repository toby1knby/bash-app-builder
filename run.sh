#!/bin/bash

#TODO Create test "is there a conf file"

echo -n -e "Name you app:\n"
read -r name

echo -n -e "Start app version number at[#.#]\n"
read -r version

echo -n -e "App identifier [foo.bar.baz]\n"
read -r identifier

echo -n -e "Enter your command/script \n#!/bin/bash\n"
read -r scriptbody

source conf
#TODO Create test Y/N

app_full_name="$name.app"

mkdir -p product/"$app_full_name"/Contents/MacOS
mkdir product/"$app_full_name"/Contents/Resources

source infoplist.sh
source executable.sh

executable
infoplist

chmod u+x product/"$app_full_name"/Contents/MacOS/"$name"

exit 0