package ChemJobs;

use Dancer2;
use Dancer2::Plugin::Database;

get '/' => sub {
    database->quick_lookup('content', { code => 'index' }, 'page_text');
};

get '/about' => sub {
    database->quick_lookup('content', { code => 'about' }, 'page_text');
};

get '/career-resources' => sub {
    database->quick_lookup('content', { code => 'career-resources' }, 'page_text');
};

get '/our-approach' => sub {
    database->quick_lookup('content', { code => 'our-approach' }, 'page_text');
};

1;
