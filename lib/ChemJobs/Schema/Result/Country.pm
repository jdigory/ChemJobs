use utf8;
package ChemJobs::Schema::Result::Country;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

ChemJobs::Schema::Result::Country

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<country>

=cut

__PACKAGE__->table("country");

=head1 ACCESSORS

=head2 code

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 sorder

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 region

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 selector

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 shipmodes

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 iso

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 3

=head2 isonum

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 3

=head2 tax

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 no_state

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "code",
  { data_type => "char", is_nullable => 0, size => 3 },
  "sorder",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "region",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "selector",
  { data_type => "char", is_nullable => 1, size => 3 },
  "shipmodes",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "iso",
  { data_type => "char", default_value => "", is_nullable => 0, size => 3 },
  "isonum",
  { data_type => "char", default_value => "", is_nullable => 0, size => 3 },
  "tax",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "no_state",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</code>

=back

=cut

__PACKAGE__->set_primary_key("code");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-01-31 20:54:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GbqttcYemRspw7MjRiicCA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
