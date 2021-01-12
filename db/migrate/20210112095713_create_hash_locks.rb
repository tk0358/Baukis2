class CreateHashLocks < ActiveRecord::Migration[6.0]
  def change
    create_table :hash_locks do |t|

      t.timestamps
    end
  end
end
