class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :group
      t.timestamps
    end
  end
end
