package all;

use strict;
use warnings;

use Carp;
use version;our $VERSION = qv('0.0.1');

sub import {
    shift;
    local $UNIVERSAL::Level = $UNIVERSAL::Level + 1; 
    local $Carp::CarpLevel  = $Carp::CarpLevel  + 1;
    
    my @flags = map { $_ } grep(/^-/, @_);

    for my $mod (grep(!/^-/, @_)) {
        use first '-croak', $mod, @flags;   
    }
}

1;

__END__

=head1 NAME

all - use an entire list of modules or fail

=head1 SYNOPSIS

  use all 'Foo', 'Bar', 'Baz';

=head1 DESCRIPTION

Using the same types arguments as 'use first', this uses all of them or croaks.

The SYNOPSIS is the same as doing

   use Foo;
   use Bar;
   use Baz;

See L<first> to see what arguments and flags it can take.

=head1 SEE ALSO

L<first>

=head1 AUTHOR

Daniel Muey, L<http://drmuey.com/cpan_contact.pl>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2007 by Daniel Muey

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.6 or,
at your option, any later version of Perl 5 you may have available.

=cut