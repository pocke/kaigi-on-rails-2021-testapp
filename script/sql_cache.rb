Rails.logger.reopen($stdout)

ApplicationRecord.cache do
  User.all.to_a
  User.all.to_a
end

__END__

   (1.0ms)  SELECT sqlite_version(*)
  User Load (0.2ms)  SELECT "users".* FROM "users"
  CACHE User Load (0.0ms)  SELECT "users".* FROM "users"
