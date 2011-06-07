class CreateUseragents < ActiveRecord::Migration
  def self.up
    create_table :useragents do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :useragents
  end
end
