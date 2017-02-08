use utf8;
package ChemJobs::Schema::Result::Content;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

ChemJobs::Schema::Result::Content

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<content>

=cut

__PACKAGE__->table("content");

=head1 ACCESSORS

=head2 id

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 page_text

  data_type: 'text'
  is_nullable: 1

=head2 page_title

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 page_banner

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 category

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 archived

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 post_date

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "page_text",
  { data_type => "text", is_nullable => 1 },
  "page_title",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "page_banner",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "category",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "archived",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "post_date",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-01-31 20:54:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VLYLvAHdwdyOu1vaQNAr2A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
