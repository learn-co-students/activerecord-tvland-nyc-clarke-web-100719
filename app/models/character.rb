class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: Did I do that?"
  end

  def build_network
    p show.build_network
  end
end