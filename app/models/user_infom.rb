class UserInfom < ActiveRecord::Base
     belongs_to :user
    validates :address, :phone_number, :presence => true

end
