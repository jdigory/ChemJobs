package ChemJobs;

use Dancer2;
use Dancer2::Plugin::DBIC;

get '/' => sub {
    my $content = rset('Content')->find('index');
    $content->page_text;
};

get '/about' => sub {
    my $content = rset('Content')->find('about');
    $content->page_text;
};

get '/career-resources' => sub {
    my $content = rset('Content')->find('career-resources');
    $content->page_text;
};

get '/our-approach' => sub {
    my $content = rset('Content')->find('our-approach');
    $content->page_text;
};

1;
