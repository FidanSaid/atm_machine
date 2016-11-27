class Account < ActiveRecord::Base
  belongs_to :user
  has_many :transactions
  validates_presence_of :user_id
    validates :balance, :numericality => { greater_than_or_equal_to: 0 }

      attr_accessor :amount #temperory field not included in the schema just for doing operations here  
                          
                          
                           
        def deposit(a)
          if a[:amount].to_f < 0.0 || a[:amount] != nil        
                    
                    return false
        
                else
                    self.balance = balance.to_f + a[:amount].to_f
                    self.save
                    transactions.create!(amount: a)
                    return true
          end 
        end              
            
            
            
        def withdrawal(a)                 
        
        if a[:amount].to_f < 0.0 || a[:amount] != nil 
              
                return false
    
        else
           
                        if (self.balance.to_f  - a[:amount].to_f < 0.0 )
                            return false
                        else
                            self.balance = balance.to_f - a[:amount].to_f
                            self.save
                            transactions.create!(amount: a)
                            return true
                        end
                        
               
                self.balance = balance.to_f - a[:amount].to_f
                self.save
                transactions.create!(amount: a)
                return true
                
        end                   
        end                
                    
                    
                    
                    
                    
                    
                    
                    
                    
end

