class CreateNegbinoms < ActiveRecord::Migration[7.0]
  def change
    create_table :negbinoms do |t|
      t.integer :rparam
      t.integer :kparam
      t.float :p

      t.timestamps
    end
  end
end
