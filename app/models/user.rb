class User < ActiveRecord::Base
	# users and projects will be have many and belongs to many thing no?
  has_secure_password
end
