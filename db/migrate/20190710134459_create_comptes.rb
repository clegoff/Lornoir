class CreateComptes < ActiveRecord::Migration[5.2]
  def change
    create_table :comptes do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :password
      t.boolean :suser

      t.timestamps
    end
  end
end
