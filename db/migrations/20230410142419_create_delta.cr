class CreateDelta::V20230410142419 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Delta) do
      primary_key id : Int64
      add_timestamps
      add content : String
    end
  end

  def rollback
    drop table_for(Delta)
  end
end
