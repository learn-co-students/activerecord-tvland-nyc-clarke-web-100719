class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |ele|
      ele.string :name
      ele.integer :actor_id
      ele.integer :show_id
    end
  end
end
