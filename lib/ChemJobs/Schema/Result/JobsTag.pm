use utf8;
package ChemJobs::Schema::Result::JobsTag;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

ChemJobs::Schema::Result::JobsTag

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<jobs_tags>

=cut

__PACKAGE__->table("jobs_tags");

=head1 ACCESSORS

=head2 tag

  data_type: 'varchar'
  is_nullable: 0
  size: 48

=head2 slug

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=cut

__PACKAGE__->add_columns(
  "tag",
  { data_type => "varchar", is_nullable => 0, size => 48 },
  "slug",
  { data_type => "varchar", is_nullable => 1, size => 48 },
);

=head1 PRIMARY KEY

=over 4

=item * L</tag>

=back

=cut

__PACKAGE__->set_primary_key("tag");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-01-31 20:54:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:k8y05a2mdciZb8HaJhzl1w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
