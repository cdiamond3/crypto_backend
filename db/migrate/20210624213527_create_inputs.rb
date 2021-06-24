class CreateInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :inputs do |t|
      t.string :search_value

      t.timestamps
    end
  end
end
