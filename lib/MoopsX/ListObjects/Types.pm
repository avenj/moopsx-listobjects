package MoopsX::ListObjects::Types;

use Type::Library -base;
use Type::Utils   -all;

BEGIN { extends 'Types::Standard' }

use List::Objects::WithUtils qw/array immarray hash/;

declare ArrayObj =>
  as Object,
  where { $_->does('List::Objects::WithUtils::Role::Array') };

coerce ArrayObj =>
  from ArrayRef,
  via { array(@$_) };


declare ImmutableArray =>
  as Object,
  where { $_->isa('List::Objects::WithUtils::Array::Immutable') };

coerce ImmutableArray =>
  from ArrayRef,
  via { immarray(@$_) };


declare ImmutableArrayObj => as ImmutableArray;


declare HashObj =>
  as Object,
  where { $_->does('List::Objects::WithUtils::Role::Hash') };

coerce HashObj =>
  from HashRef,
  via { hash(%$_) };

1;
