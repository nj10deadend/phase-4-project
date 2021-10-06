class CreateScripts < ActiveRecord::Migration[6.1]
  def change
    create_table :scripts do |t|
      t.string :choice
      t.string :prompt
      # t.string :options
      # t.array :options

      t.timestamps
    end
  end
end
