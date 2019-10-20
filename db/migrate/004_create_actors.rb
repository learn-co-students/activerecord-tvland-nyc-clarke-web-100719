class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |ele|
      ele.string :first_name
      ele.string :last_name
    end
  end
end
