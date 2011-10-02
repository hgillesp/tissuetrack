class User < ActiveRecord::Base
  has_many :tissue_samples
end
