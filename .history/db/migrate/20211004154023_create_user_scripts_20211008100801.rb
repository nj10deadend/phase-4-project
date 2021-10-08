class CreateUserScripts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_scripts do |t|
      # t.belongs_to :user, null: false, foreign_key: true
      # t.belongs_to :script, null: false, foreign_key: true
      t.belongs_to :user, null: false
      t.belongs_to :script, null: false

      t.timestamps
    end
  end
end
