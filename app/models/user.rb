class User < ApplicationRecord
  has_many :sales, dependent: :destroy
end
