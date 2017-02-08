use utf8;
package ChemJobs::Schema::Result::State;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

ChemJobs::Schema::Result::State

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<state>

=cut

__PACKAGE__->table("state");

=head1 ACCESSORS

=head2 code

  data_type: 'char'
  is_nullable: 0
  size: 8

=head2 sorder

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 country

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 state

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 name

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 tax

  data_type: 'text'
  is_nullable: 1

=head2 postcode

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 shipmodes

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 tax_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "code",
  { data_type => "char", is_nullable => 0, size => 8 },
  "sorder",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "country",
  { data_type => "char", default_value => "", is_nullable => 0, size => 20 },
  "state",
  { data_type => "char", default_value => "", is_nullable => 0, size => 20 },
  "name",
  { data_type => "char", default_value => "", is_nullable => 0, size => 64 },
  "tax",
  { data_type => "text", is_nullable => 1 },
  "postcode",
  { data_type => "char", default_value => "", is_nullable => 0, size => 20 },
  "shipmodes",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "tax_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</code>

=back

=cut

__PACKAGE__->set_primary_key("code");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-01-31 20:54:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/hCvdE3hq+KERrlg548StA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
