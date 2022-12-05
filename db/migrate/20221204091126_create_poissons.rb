class CreatePoissons < ActiveRecord::Migration[7.0]
  def change
    create_table :poissons do |t|
      t.float :lamdapar
      t.integer :k

      t.timestamps
    end
  end
end
