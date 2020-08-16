#!/bin/sh

SRCDIR=$1
BLOGDIR=$2

TMPPREFIX=/tmp/POSTTMP

FILE_1=${TMPPREFIX}_1
FILE_2=${TMPPREFIX}_2
FILE_3=${TMPPREFIX}_3
SCRIPT_REMAP=${TMPPREFIX}1
SCRIPT_PROTECT=${TMPPREFIX}2
SCRIPT_RESTORE=${TMPPREFIX}3


grep Origin $SRCDIR$BLOGDIR/*md | sed -n 's/^src\(.*\).md:<!-- Origin: ORIGIN\(.*\) -->$/s|\2|\1.html|g/gp'> $SCRIPT_REMAP

cat > $SCRIPT_PROTECT <<EOF
s|ORIGINhttps://|ORIGINS://|g
s|ORIGINhttp://|ORIGIN://|g
EOF

cat > $SCRIPT_RESTORE <<EOF
s|ORIGINS://|https://|g
s|ORIGIN://|http://|g
EOF

find $SRCDIR$BLOGDIR -name '*.md' | while read POST
do
    sed -f $SCRIPT_PROTECT < $POST   > $FILE_1
    sed -f $SCRIPT_REMAP   < $FILE_1 > $FILE_2
    sed -f $SCRIPT_RESTORE < $FILE_2 > $FILE_3

    mv $FILE_3 $POST
done
    
rm -rf ${TMPPREFIX}*

