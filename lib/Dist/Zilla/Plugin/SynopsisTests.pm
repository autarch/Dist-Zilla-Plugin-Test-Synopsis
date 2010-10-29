use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::SynopsisTests;
# ABSTRACT: Release tests for synopses
use Moose;
extends 'Dist::Zilla::Plugin::InlineFiles';

__PACKAGE__->meta->make_immutable;
no Moose;
1;

=begin :prelude

=for test_synopsis
1;
__END__

=end :prelude

=head1 SYNOPSIS

In C<dist.ini>:

    [SynopsisTests]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following file:

  xt/release/synopsis.t - a standard Test::Synopsis test

=cut

__DATA__
___[ xt/release/synopsis.t ]___
#!perl

use Test::More;

eval "use Test::Synopsis";
plan skip_all => "Test::Synopsis required for testing synopses"
  if $@;
all_synopsis_ok('lib');
