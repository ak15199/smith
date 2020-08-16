#!/bin/sh

SRCDIR=$1
BLOGDIR=$2
BLOGROOT=$3

POSTTMP=/tmp/POSTTMP.$$

get() {
    mediumexporter "$1"
}

name() {
    echo `echo $* | iconv --to-code ascii//translit | tr ' |:' '_' | tr -d \'\?\&`.md
}

process() {
    ORIGIN=$1
    HEAD=$2
    DEST=$3

    (
        echo "<!-- Origin: ORIGIN$ORIGIN -->"
        echo "<!-- Title: $HEAD -->"
        echo ""

        cat

        echo ""
        echo "___"
        echo ""
        echo "_This article originally appeared on [Medium](ORIGIN$ORIGIN)._"
        echo ""

    ) < $POSTTMP > $DEST
}

get $BLOGROOT | sed -n 's|^.*\(https://medium.com/.*\)).*$|\1|p' | while read POST
do
    get $POST > $POSTTMP

    HEAD=`grep '^#' $POSTTMP | head -1 | cut -f2- -d\ `
    NAME=`name $HEAD`

    if [ ! -f $SRCDIR$BLOGDIR/$NAME ]; then
        echo Importing $POST
        process $POST "$HEAD" $SRCDIR$BLOGDIR/$NAME
    fi

    # XXX: should get the status of the extract and abort
    # rather than just deleting after the fact
    rm $SRCDIR$BLOGDIR/.md
done

rm -rf $POSTTMP
