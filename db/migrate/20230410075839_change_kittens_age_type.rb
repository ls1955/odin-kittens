class ChangeKittensAgeType < ActiveRecord::Migration[7.0]
  def change
    change_column :kittens, :age, :integer
  end
end
