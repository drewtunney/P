class AddDefaultValuesToMessages < ActiveRecord::Migration
  def change
    change_column_default(:messages, :likes, nil)
  end
end
