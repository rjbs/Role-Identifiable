package Role::Identifiable::HasIdent;
use Moose::Role;
# ABSTRACT: a thing with an ident attribute

=head1 DESCRIPTION

This is an incredibly simple role.  It adds a required C<ident> attribute that
stores a simple string, meant to identify exceptions.

The string has to contain at least one character, and it can't start or end
with whitespace.

=cut

use Moose::Util::TypeConstraints;

has ident => (
  is  => 'ro',
  isa => subtype('Str', where { length && /\A\S/ && /\S\z/ }),
  required => 1,
);

no Moose::Role;
use Moose::Util::TypeConstraints;
1;
