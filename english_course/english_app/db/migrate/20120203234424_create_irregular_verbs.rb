class CreateIrregularVerbs < ActiveRecord::Migration
  def change
    create_table :irregular_verbs do |t|

      t.timestamps
    end
  end
end
