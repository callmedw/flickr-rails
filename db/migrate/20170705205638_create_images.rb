class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.column :title, :string
      t.column :description, :string
      t.column :location, :string
      t.column :comment, :string
      t.column :tag, :string
      t.column :user_id, :integer
      t.column :user_tag, :string

      t.timestamps

    end
  end
end
