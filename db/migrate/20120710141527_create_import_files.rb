class CreateImportFiles < ActiveRecord::Migration
  def change
    create_table :import_files do |t|
      t.string :filename
      t.string :description

      t.timestamps
    end
  end
end
