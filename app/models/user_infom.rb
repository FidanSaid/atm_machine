class UserInfom < ActiveRecord::Base
     belongs_to :user
     has_one:account
    validates :address, :phone_number, :presence => true

end
