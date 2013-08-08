package Role::Identifiable::HasIdent;

use Types::Standard qw(Str);
use Type::Utils qw(declare as where);
use Moo::Role;
# ABSTRACT: a thing with an ident attribute

=head1 DESCRIPTION

This is an incredibly simple role.  It adds a required C<ident> attribute that
stores a simple string, meant to identify exceptions.

The string has to contain at least one character, and it can't start or end
with whitespace.

=cut

has ident => (
  is  => 'ro',
  isa => declare(as Str, where { length && /\A\S/ && /\S\z/ }),
  required => 1,
);

no Moo::Role;
no Types::Standard;
no Type::Utils;
1;
