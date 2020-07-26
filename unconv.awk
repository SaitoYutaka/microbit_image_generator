


{
    gsub(/^ /,"",$2);
    print $2
    gsub(/^    0b/,"",$1);
    len = length($1);
    for(i=1; i<= 25; i=i+5){
        print substr($1, i, 5)
    }
    print "";
}
