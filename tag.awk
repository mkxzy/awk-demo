BEGIN {
    LINE=""
}
{
    if (NR > 1) {
        LINE = LINE", "
    }
    LINE = LINE"\""$1"\""
}
END {
    print LINE
}
