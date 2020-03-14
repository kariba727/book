class CreateHons < ActiveRecord::Migration[5.1]
  def change
    create_table :hons do |t|
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
