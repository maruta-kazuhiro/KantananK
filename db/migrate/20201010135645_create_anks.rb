class CreateAnks < ActiveRecord::Migration[6.0]
  def change
    create_table :anks do |t|
      t.text        :image
      t.text        :question,     null:false
      t.string      :answer1,      null:false
      t.string      :answer2,      null:false
      t.string      :answer3,      null:false
      t.timestamps
    end
  end
end
