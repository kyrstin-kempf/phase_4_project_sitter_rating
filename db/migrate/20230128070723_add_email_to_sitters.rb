class AddEmailToSitters < ActiveRecord::Migration[6.1]
  def change
    add_column :sitters, :email, :string
  end
end
