use Test::More;

use MoopsX::ListObjects;

class My::Foo :ro {
  has array => (
    default => sub { array },
    isa     => ArrayObj,
  );
  has hash => (
    default => sub { hash },
    isa     => HashObj,
  );
  has immarray => (
    default => sub { immarray },
    isa     => ImmutableArray,
  );
  has immarray2 => (
    default => sub { immarray },
    isa     => ImmutableArrayObj,
  );
}

my $foo = My::Foo->new;
isa_ok $foo->array, 'List::Objects::WithUtils::Array';
isa_ok $foo->hash,  'List::Objects::WithUtils::Hash';
isa_ok $foo->immarray, 'List::Objects::WithUtils::Array::Immutable';

# FIXME test type failures / coercions
# FIXME test that we still have other types avail

done_testing;
