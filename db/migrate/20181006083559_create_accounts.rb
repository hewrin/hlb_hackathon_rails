class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.integer :amount, default: 0
      t.string :name
      t.timestamps
    end
  end
end
