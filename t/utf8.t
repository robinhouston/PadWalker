use strict; use warnings;
use PadWalker 'peek_my';

print "1..1\n";

use PadWalker;

use utf8;

my $ü = 'bla'; # u umlaut
my $d = eval { PadWalker::peek_my(0) };
my ($var_name) = keys %$d;

if (!utf8::is_utf8($var_name) || $var_name eq "\$\x{fc}") {
    print "ok 1\n";
}
else {
    print "not ok 1 # $var_name\n";
}
