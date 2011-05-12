package App::Pstatus::Plugin::FreeBSD;

use strict;
use warnings;
use 5.010;

use parent 'App::Pstatus::Plugin::Whohas';

sub check {
	my ($self) = @_;

	return $self->run_whohas('FreeBSD', $self->{conf}->{name});
}

1;

__END__

=head1 NAME

B<App::Pstatus::Plugin::FreeBSD> - Check project version in FreeBSD

=head1 SYNOPSIS

In F<pstatus/config>

    [FreeBSD]

=head1 DESCRIPTION

This plugin queries a project and its version in the latest FreeBSD version
using L<whohas>.

=head1 CONFIGURATION

None.

=head1 SEE ALSO

L<pstatus>

=head1 AUTHOR

Copyright (C) 2011 by Daniel Friesel E<lt>derf@finalrewind.orgE<gt>

=head1 LICENSE

  0. You just DO WHAT THE FUCK YOU WANT TO.