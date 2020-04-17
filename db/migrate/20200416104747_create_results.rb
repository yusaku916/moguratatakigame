class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :score
      t.string :name
      

      t.timestamps
    end
  end
end
