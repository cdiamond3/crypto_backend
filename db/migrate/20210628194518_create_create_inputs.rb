class CreateCreateInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :create_inputs do |t|
      t.string :input
      t.timestamps
    end
  end
end
