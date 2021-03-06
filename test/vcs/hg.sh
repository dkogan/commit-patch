hg_init () {
    WD=$1
    mkdir -p "$WD"
    (cd "$WD" && hg init && (echo "[ui]"; echo "username=Chester McTester") > .hg/hgrc)

    export VC_DIFF="hg diff"
    export VC_RM="hg rm"
    export DIFF_PREFIX="a/"
}

hg_cleanup () {
    true
}
