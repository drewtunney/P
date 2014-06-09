class RenameMessagesToMessage < ActiveRecord::Migration
  def change
    rename_table :messages, :message
  end
end
