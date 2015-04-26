class User < ActiveRecord::Base
has_many :profiles 
has_many :posts
end
