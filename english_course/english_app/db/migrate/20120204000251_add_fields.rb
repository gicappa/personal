class AddFields < ActiveRecord::Migration
  def change
    add_column :irregular_verbs, :italiano, :string
    add_column :irregular_verbs, :present, :string
    add_column :irregular_verbs, :simple_past, :string
    add_column :irregular_verbs, :past_participle, :string
  end
end
