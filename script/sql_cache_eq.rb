User.create! name: 'foo'

ApplicationRecord.cache do
  pp User.first == User.first
  pp User.first.equal?(User.first)
end

__END__

true
false
