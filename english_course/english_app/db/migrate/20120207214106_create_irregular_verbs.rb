class CreateIrregularVerbs < ActiveRecord::Migration
  def change
    create_table :irregular_verbs do |t|
      t.string :italian_verb
      t.string :present
      t.string :past
      t.string :past_participle

      t.timestamps
    end
  end
end
