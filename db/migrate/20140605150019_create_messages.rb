class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :likes
      t.string :tags
      t.references :user
    end
  end
end
