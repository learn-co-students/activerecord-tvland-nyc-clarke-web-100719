class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

    def say_that_thing_you_say
        "#{self.name} always says: Did I do that?"
    end 

    def build_network
        self.build_show(:name => "Firefly").build_network(:call_letters => "Fox")
    end


end