class AddPriceToTasks < ActiveRecord::Migration[6.1]
  def change
    add_monetize :tasks, :price
  end
end
