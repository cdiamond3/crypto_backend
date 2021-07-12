class CreateCoinInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :coin_inputs do |t|
      t.string :user_coin_input
      t.date :dates

      t.timestamps
    end
  end
end
