BEGIN{
    data = "";
    comment = "";    
}

/^\#/{
    comment = $2;
}

/^. . . . ./{
    data = data $0;
}

/^$/{
    gsub(" ", "", data);
    print "0b"data", // "comment;
    data = "";
    comment = "";
}