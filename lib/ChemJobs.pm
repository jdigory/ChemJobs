package ChemJobs;

use Dancer2;
use Dancer2::Plugin::Database;

get '/' => sub {
    my $sth = database->prepare(
        q{
            SELECT *
            FROM content
            WHERE code = 'index'
        }
    );
    $sth->execute;
    my $content = $sth->fetchrow_hashref;
    return $content->{page_text};
};

get '/about' => sub {
    my $sth = database->prepare(
        q{
            SELECT *
            FROM content
            WHERE code = 'about'
        }
    );
    $sth->execute;
    my $content = $sth->fetchrow_hashref;
    return $content->{page_text};
};

get '/career-resources' => sub {
};

get '/our-approach' => sub {
};

1;
