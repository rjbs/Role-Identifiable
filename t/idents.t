use strict;
use warnings;

use Test::More;

{
  package Some::Identifiable;
  use Moose;

  with(qw(
    Role::Identifiable::HasTags
    Role::Identifiable::HasIdent
  ));

  sub x_tags { qw(whatever) }
}

{
  my $thing = Some::Identifiable->new({
    ident   => 'pants too small',
    tags    => [ qw(foo-bar zug) ],
  });

  isa_ok($thing, 'Some::Identifiable', 'the identifiable object');

  is($thing->ident, 'pants too small', '...has the right ident');

  ok(
    $thing->has_tag('foo-bar') && $thing->has_tag('whatever') && ! $thing->has_tag('xyz'),
    "...and its tags seem correct via ->has_tag",
  );
}

done_testing;
