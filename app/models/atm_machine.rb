class AtmMachine < ActiveRecord::Base
    validates :address, :presence => true
    
    
    
    
    def show

session[:atm_no] = @atm_machine.id

    end

end
