class AtmMachine < ActiveRecord::Base
    validates :address, :presence => true
end
