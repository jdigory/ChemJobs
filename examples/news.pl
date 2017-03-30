#!/usr/bin/env perl

use strict;
use warnings;
use lib 'lib';
use 5.022;

use Dancer2;
use ChemJobs::Schema;
use Devel::Dwarn;

my $schema = ChemJobs::Schema->connect(
    config->{plugins}{DBIC}{default}{dsn},
    config->{plugins}{DBIC}{default}{user},
    config->{plugins}{DBIC}{default}{password},
);

my $content_rs = $schema->resultset('Content');

my $news_rs = $content_rs->category_listing('news');

for ($news_rs->all) {
    my $title = $_->get_column('title');
    $title =~ s/^.*-\s*//;
    $title =~ s/\[.*$//sx;
    say $_->id .': '. $title;
}
