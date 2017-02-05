class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commenter_name
      t.text :body
      t.references :article, foreign_key: true

      t.timestamps null: false
    end
  end
end
