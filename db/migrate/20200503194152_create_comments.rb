class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :user #, index: true
      t.belongs_to :gossip #, index: true => fonctionne quand meme sans

      t.timestamps
    end
  end
end
