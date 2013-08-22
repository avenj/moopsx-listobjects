use Test::More;

use MoopsX::ListObjects;

class My::Foo :ro {
  has array => (
    default => sub { array },
  );
  has hash => (
    default => sub { hash },
  );
  has immarray => (
    default => sub { immarray },
  );
}

my $foo = My::Foo->new;
isa_ok $foo->array, 'List::Objects::WithUtils::Array';
isa_ok $foo->hash,  'List::Objects::WithUtils::Hash';
isa_ok $foo->immarray, 'List::Objects::WithUtils::Array::Immutable';

done_testing;
