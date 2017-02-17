#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use Dancer2;
use ChemJobs::Schema;

use_ok('ChemJobs::Schema');

my $schema = ChemJobs::Schema->connect(
    config->{plugins}{DBIC}{default}{dsn},
    config->{plugins}{DBIC}{default}{user},
    config->{plugins}{DBIC}{default}{password},
);
my $job_rs = $schema->resultset('Job');

# check custom accessors are defined
can_ok( $job_rs->result_class, qw(salary_range) );

is(
    $job_rs->find('J1121')->salary_range,
    '0.00-0.00',
    'Should read from set using custom accessor'
);

# check custom methods are defined
can_ok( $job_rs, qw(salary_less_than) );

is(
    $job_rs->salary_less_than(50)->salary,
    '',
    'Should perform search using custom method'
);

done_testing;
