package Role::Identifiable::HasIdent;
use Moose::Role;
# ABSTRACT: a thing with an ident attribute

=head1 DESCRIPTION

This is an incredibly simple role.  It adds a required C<ident> attribute that
stores a simple string, meant to identify exceptions.

=cut

has ident => (
  is  => 'ro',
  isa => 'Str',
  required => 1,
);

no Moose::Role;
1;
