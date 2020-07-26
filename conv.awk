BEGIN{
    data = "";
    comment = "";    
}

/^\/\//{
    comment = $0;
}

/^[01]{5}$/{
    data = data $0;
}

/^$/{
    gsub(" ", "", data);
    print "    0b"data", "comment;
    data = "";
    comment = "";
}