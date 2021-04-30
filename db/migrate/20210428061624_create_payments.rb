class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.references :assignment, null: false, foreign_key: true
      t.integer :method
      t.monetize :amount

      t.timestamps
    end
  end
end
