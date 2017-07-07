#
# Hello World Program in Perl
#

package RPS;
use 5.012;

use strict;
use Exporter;
# creating hash with weapon job and winer looser combo array ref
my %rps = (
cuts => [ qw / SCISSORS PAPER / ],
covers => [ qw / PAPER ROCK / ],
crushes => [ qw / ROCK LIZARD / ],
poisons => [ qw / LIZARD SPOCK / ],
smashes => [ qw / SPOCK SCISSORS / ],
decapitates => [ qw / SCISSORS LIZARD / ],
eats => [ qw / LIZARD PAPER / ],
disproves => [ qw / PAPER SPOCK / ],
vaporizes => [ qw / SPOCK ROCK / ],
breaks => [ qw / ROCK SCISSORS / ]
);

sub game {

my $combo = \@_;
if ( $$combo[0] eq $$combo[1] ) {
		say " its a tie , play again ? ";
}
state $player_1 = 0;
state $player_2 = 0;
for my $purpose (sort keys %rps) {
	if ( ($$combo[0] eq ${$rps{$purpose}}[0]) && ($$combo[1] eq ${$rps{$purpose}}[1]) ) {
	    say "  P1 -> $$combo[0]  $purpose $$combo[1] <- P2";
		$player_1 += 1;
	} elsif ( ($$combo[0] eq ${$rps{$purpose}}[1]) && ($$combo[1] eq ${$rps{$purpose}}[0]) ) {
	    say " P2 -> $$combo[1] $purpose $$combo[0] <- P1";
		$player_2 += 1;
	} 
}
return($player_1, $player_2);
}
	



	