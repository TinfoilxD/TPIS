class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.string :state_code
      t.string :state_name
    end
    add_index :states, :state_code, unique: true
  end
end
