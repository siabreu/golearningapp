class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.datetime :starts_at
      t.string :ends_at

      t.timestamps
    end
  end
end
