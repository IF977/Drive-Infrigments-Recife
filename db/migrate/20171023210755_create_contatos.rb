class CreateContatos < ActiveRecord::Migration[5.0]
  def change
    create_table :contatos do |t|
      t.string :Nome
      t.string :Email
      t.string :Subject
      t.string :Message

      t.timestamps
    end
  end
end
