package MoopsX::ListObjects;

use Moops ();
use List::Objects::WithUtils ();

sub import {
  push @{ $_[1] ||= [] }, (
    'List::Objects::WithUtils' => [qw/ array immarray hash /]
  );
  goto \&Moops::import
}

1;
