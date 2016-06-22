sub EXPORT (Str $topic) {
    $topic ~~ /'<' | '>'/ and die "Using '<' or '>' in topic alias is not"
        ~ " implemented. Feel free to request it on the bug tracker";

    { "&term:<$topic>" => sub { $CALLER::_ } };
}
