class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.string :message
      t.integer :ai_type

      t.timestamps
    end
  end
end
