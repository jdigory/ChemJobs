package ChemJobs::Schema::ResultSet::Job;

use base 'DBIx::Class::ResultSet';

sub salary_less_than {
    my ($self, $salary) = @_;
    return $self->find({ salary => { '<' => $salary } });
}

1;
