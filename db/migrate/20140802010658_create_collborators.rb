class CreateCollborators < ActiveRecord::Migration
  def change
    create_table :collborators do |t|
      t.string :last_name
      t.string :first_name
      t.integer :year
      t.string :project_link
      t.text :comments

      t.timestamps
    end
  end
end
