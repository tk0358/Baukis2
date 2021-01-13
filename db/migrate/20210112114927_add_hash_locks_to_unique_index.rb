class AddHashLocksToUniqueIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :hash_locks, [ :table, :column, :key ], unique: true
  end
end
