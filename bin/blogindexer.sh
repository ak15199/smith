#!/bin/sh

SRCDIR=$1
BLOGDIR=$2

name() {
    echo `echo $* | tr ' |:' '_' | tr -d \' `.md
}

(
    cat <<EOF
# Our Blog Articles

These were originally posted on _Medium_.

EOF
    
    (
        find $SRCDIR$BLOGDIR -name '*.md'
    ) | grep -v index.md | while read POST
    do
        HEAD=`grep '^#' $POST | head -1 | cut -f2- -d\ `
        LINK=`echo $POST | sed -e 's/^'$SRCDIR'//g' -e 's/.md$/.html/'`
    
        echo '* ['$HEAD']('$LINK')'
    done
    
) > $SRCDIR$BLOGDIR/index.md
