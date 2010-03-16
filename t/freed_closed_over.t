use strict;
use warnings;
use Test::More 'no_plan';

use PadWalker qw(peek_my);

my $x = 42;
sub {
    my $y = $x;
    sub { peek_my 0 };
}->()->();

pass 'no segfault when trying to peek into a freed lexical';
