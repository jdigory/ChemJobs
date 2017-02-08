use utf8;
package ChemJobs::Schema::Result::Job;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

ChemJobs::Schema::Result::Job

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<jobs>

=cut

__PACKAGE__->table("jobs");

=head1 ACCESSORS

=head2 code

  data_type: 'char'
  is_nullable: 0
  size: 64

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 slug

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 tags

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 content

  data_type: 'text'
  is_nullable: 0

=head2 post_status

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 create_date

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 modtime

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 city

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 salary_min

  data_type: 'decimal'
  is_nullable: 0
  size: [12,2]

=head2 salary_max

  data_type: 'decimal'
  is_nullable: 0
  size: [12,2]

=head2 salary

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "code",
  { data_type => "char", is_nullable => 0, size => 64 },
  "title",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "slug",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "tags",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "content",
  { data_type => "text", is_nullable => 0 },
  "post_status",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "create_date",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "modtime",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "city",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "state",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "salary_min",
  { data_type => "decimal", is_nullable => 0, size => [12, 2] },
  "salary_max",
  { data_type => "decimal", is_nullable => 0, size => [12, 2] },
  "salary",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</code>

=back

=cut

__PACKAGE__->set_primary_key("code");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-01-31 20:54:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/RsJ5mAALCF8Xj3FPydWNg


sub salary_range {
    my $self = shift;
    return $self->salary_min . '-' . $self->salary_max;
}

1;
