class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.float :rating
      t.integer :sitter_id
      t.integer :client_id

      t.timestamps
    end
  end
end
