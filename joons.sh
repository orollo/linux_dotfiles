function cgrep()
{
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -name .svn -prune -o -type f \( -name '*.c' -o -name '*.cc' -o -name '*.cpp' -o -name '*.h' -o -name '*.hpp' \) -print0 | xargs -0 grep --color -n "$@"
}

function cxxgrep()
{
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -name .svn -prune -o -type f \( -name '*.cc' -o -name '*.cpp' -o -name '*.h' -o -name '*.hpp' \) -print0 | xargs -0 grep --color -n "$@"
}

function hgrep()
{
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -name .svn -prune -o -type f \( -name '*.h' -o -name '*.hpp' \) -print0 | xargs -0 grep --color -n "$@"
}

function jgrep()
{
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -name .svn -prune -o -type f \( -name '*.java' \) -print0 | xargs -0 grep --color -n "$@"
}

function mgrep()
{
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -name .svn -prune -o -type f \( -name '*.mk' -o -name 'Makefile' \) -print0 | xargs -0 grep --color -n "$@"
}

function sgrep()
{
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -name .svn -prune -o -type f \( -name '*.smali' -o -name 'Makefile' \) -print0 | xargs -0 grep --color -n "$@"
}

function pygrep()
{
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -name .svn -prune -o -type f \( -name '*.py' \) -print0 | xargs -0 grep --color -n "$@"
}

function jsgrep()
{
    find . -name app.bundle.js -prune -o -name .repo -prune -o -name .git -prune -o -name out -prune -o -name .svn -prune -o -type f \( -name '*.js' \) -print0 | xargs -0 grep --color -n "$@"
}

function qgrep()
{
    find . -name app.bundle.js -prune -o -name .repo -prune -o -name .git -prune -o -name out -prune -o -name .svn -prune -o -type f \( -name '*.qml' \) -print0 | xargs -0 grep --color -n "$@"
}


function findn()
{
    find -type f \( -name '*' \) |xargs grep "$@"
}

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
