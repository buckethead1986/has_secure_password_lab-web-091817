class User < ActiveRecord::Base
  has_secure_password


end



# def password=(new_password)
#   salt = BCrypt::Engine::generate_salt
#   hash = BCrypt::Engine::hash_secret(new_password, salt)
#   self.password_digest = salt + hash
# end
#
# def authenticate(password)
#   salt = password_digest[0..28]
#   hashed = BCrypt::Engine::hash_secret(password, salt)
#   return nil unless (salt + hashed) == self.password_digest
# end
