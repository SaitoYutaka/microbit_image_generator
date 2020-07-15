BEGIN{
    data = "";
    comment = "";    
}

/\/\/ \# NOT YET/{
    print "    0b0000000000000000000000000, // NOT YET";
} 

/^\#/{
    comment = $2;
}

/^. . . . .$/{
    data = data $0;
}

/^$/{
    gsub(" ", "", data);
    print "    0b"data", // "comment;
    data = "";
    comment = "";
}