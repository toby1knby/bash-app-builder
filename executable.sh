#!/bin/bash
#shellcheck disable=SC2154

executable(){
cat << EndOfScript > "product/$app_full_name/Contents/MacOS/$name"
#!/bin/bash

# $whodonit
# $copywritestring

$scriptbody

exit 0
EndOfScript
}
