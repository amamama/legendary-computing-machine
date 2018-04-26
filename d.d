/+{}def
(+/ string a=q{)(/case {
        2 dict begin
                /block exch cvlit def
                /exp exch def
                0 2 block length 1 sub {
                        /i exch def
                        block i get exp eq
                        block i get /else eq or {
                                block i 1 add get exec exit
                        } if
                } for
        end
} def
/s ( ) def
/p {
        s 0 40 put s print
        {
                dup {
                        /else {s exch 0 exch put s print}
                } case
        } forall
        s 0 41 put s print
} def
2 index = 7 -1 roll p 6 -1 roll p 5 -1 roll dup cvx exec p 4 -1 roll p 3 -1 roll p)(
/m{moveto}def
/l{rlineto}def
/t{rcurveto}def
/r{t t}def
/e{m t}def
/w{m r closepath}def
/q{m r t closepath}def

/D-print {
gsave newpath
m l l
rmoveto
0.75 setlinewidth
currentpoint
stroke
grestore

newpath
3 -1 roll
{
        m r l t
        closepath
} {
        q
} ifelse

gsave
1 1 1 setrgbcolor
fill
grestore

stroke
} def

/printlimb {
7 dict begin
        /y exch def
        /x exch def
        /rot exch def
        /ll exch def
        /rl exch def
        /la exch def
        /ra exch def
        rot { x 32 add y 64 add translate 180 rotate } { x y translate } ifelse
        la {
                0 { 2 0 2 5 0 5 0 -1 0 -3 1 -3 -1 0 -1 -1 -1 -2 -1 3 -13 12 4 9 27 39 }
                1 { 2 0 2 5 0 5 0 -1 0 -3 2 -3 -1 0 -2 -1 -2 -2 0 4 -4 15 4 4 27 39 }
                2 { 2 0 2 5 0 5 0 -1 0 -3 1 -3 -1 0 -1 -1 -1 -2 -1 3 -2 -2 4 -9 27 39 }
        } case
        -1 la ne { false 9 1 roll D-print } if
        newpath
        6 16 6 24 4 32 1 14 e
        3 2 l
        3 -15 -8 -24 -27 -22 14 2 18 -2 20 -12 r
        closepath

        1 -6 -2 -10 -10 -13 4 -1 6 -2 7 -8 2 4 4 8 3 21 12 21 q

        gsave
        1 0 0 setrgbcolor
        eofill
        grestore

        16 43 m
        1 -6 -1 -10 -12 -14 4 -1 7 -2 8 -8 r

        6 16 6 24 3 31 5 17 e
        15 -1 18 2 20 4 5 17 e
        1 14 m
        4 3 l

        stroke
        newpath
        0 -5 -6 -6 -6 -1 0 6 6 6 6 1 11 42 w

        0 -4 -5 -7 -5 -2 0 6 5 7 5 2 18 40 w

        gsave
        1 1 1 setrgbcolor
        fill
        grestore

        stroke

        newpath
        -1 -1 -3 -2 -3 0 1 0 2 -2 0 -4 0 2 1 4 3 4 13 40 q

        -1 -2 -3 -2 -3 0 1 0 1 -2 0 -4 0 2 1 4 3 4 19 39 q
        fill
        ra {
                0 { 0 -3 -4 -3 -4 0 1 0 1 0 1 -3 0 3 3 3 3 3 0 1 11 11 -7 8 8 39 }
                1 { -1 -3 -5 -3 -5 0 1 0 3 -1 2 -4 0 3 2 3 3 3 -2 2 2 14 -7 4 8 39 }
                2 { -1 -3 -4 -3 -4 0 1 0 2 0 1 -3 0 3 3 3 3 3 -2 -1 4 -3 -7 -8 8 39 }
        } case
        -1 ra ne { false 9 1 roll D-print } if
        rl 3 le { 1 0 2 0 2 2 4 0 -1 0 -3 -1 -1 -3 -2 0 -3 1 -5 1 }
                        { 0 -1 0 -2 2 -2 0 -4 0 1 -1 3 -3 1 0 2 1 3 1 5 } ifelse
        rl {
                0 { 0 0 4 -6 -3 -6 11 15 }
                1 { 0 0 0 0 -3 -12 11 15 }
                2 { 0 0 0 0 0 -12 11 15 }
                3 { 0 0 4 -4 -3 -4 11 15 }
                4 { 0 0 0 0 -8 0 11 15 }
        } case
        true 9 1 roll D-print
        ll 3 le { -1 0 -2 2 -1 3 -5 -1 4 2 8 0 6 -2 0 0 0 0 0 0 }
                        { 0 -1 -2 -2 -3 -1 1 -5 -2 4 0 8 2 6 0 0 0 0 0 0 } ifelse
        ll {
                0 { 0 0 -4 -6 3 -6 16 16 }
                1 { 0 0 0 0 3 -12 16 16 }
                2 { 0 0 0 0 0 -12 16 16 }
                3 { 0 0 -4 -4 3 -4 16 16 }
                4 { 0 0 0 0 8 0 16 16 }
        } case
        true 9 1 roll D-print
        rot { -180 rotate x 32 add neg y 64 add neg translate} {x neg y neg translate } ifelse
        end
} def

/printalpha {
        /y exch def
        /x exch def
        {
                0 { 0 0 2 0 false }
                1 { -1 -1 3 0 false }
                2 { 0 -1 3 0 false }
                3 { 0 -1 1 1 true }
                4 { 0 0 1 1 false }
                5 { 0 -1 1 1 false }
                6 { -1 0 1 1 true }
                7 { 0 0 2 2 false }
                8 { 0 0 4 2 false }
                9 { 1 1 4 2 false }
                10 { 1 1 2 4 false }
                11 { 1 2 3 0 false }
                12 { 0 0 3 0 false }
                13 { 2 0 3 0 false }
                14 { 0 0 3 2 false }
                15 { -1 -1 4 2 false }
                16 { -1 -1 2 4 false }
                17 { 0 0 2 4 false }
                18 { 1 1 3 0 false }
                19 { 0 0 1 1 true }
                20 { -1 1 3 0 false }
                21 { 1 -1 3 0 false }
                22 { 1 1 1 1 false }
                23 { 2 0 1 1 false }
                24 { -1 0 3 0 false }
                25 { -1 0 1 1 false }
        } case
        x y printlimb
} def

0 0 0 setrgbcolor
1 setlinecap
1 setlinejoin
0.5 setlinewidth
1 1 scale
/x 0 def
/y 256 def
("abcdefghijklmn\nopqrstuvwxyz") dup length 1 exch 1 sub getinterval {
        dup {
                10 {pop /y y 64 sub store /x -32 store }
                32 {pop}
                64 {pop /x x 32 sub store}
                /else {
                        dup dup 96 gt exch 123 lt and
                        {97 sub x y printalpha} {pop}ifelse
                }
        } case
        /x x 32 add store
} forall
)(}, b=q{
import std.stdio;
import std.string;
void main(string[] args){
        if(args.length>1) a=replace(a, c, `"`~args[1]~'"'),c=`"`~args[1]~`"`;
        writefln("/+{}def");
        writefln("(+/ string a=q{%s}, b=q{%s}, c=`%s`;",a,b,c);
        writefln("%s/+)(/+{}def)(dup 5 index cvx exec == = +/)",b);
        writefln("dup 5 index cvx exec == = +/");
}
}, c=`"abcdefghijklmn\nopqrstuvwxyz"`;
import std.stdio;
import std.string;
void main(string[] args){
        if(args.length>1) a=replace(a, c, `"`~args[1]~'"'),c=`"`~args[1]~`"`;
        writefln("/+{}def");
        writefln("(+/ string a=q{%s}, b=q{%s}, c=`%s`;",a,b,c);
        writefln("%s/+)(/+{}def)(dup 5 index cvx exec == = +/)",b);
        writefln("dup 5 index cvx exec == = +/");
}
/+)(/+{}def)(dup 5 index cvx exec == = +/)
dup 5 index cvx exec == = +/
