package ChemJobs::Schema::ResultSet::Content;

use base 'DBIx::Class::ResultSet';

sub category_listing {
    my ($self, $category) = @_;
    return $self->search(
        { category => $category, archived => 0 },
        {
            select   => [ 'id', { SUBSTRING => [qw/page_text 1 100/] } ],
            as       => [qw/ id title /],
            order_by => { -desc => [qw/post_date id/] },
        }
    );
}

1;
