class CreateAlphas::V20230408205720 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Alpha) do
      primary_key id : Int64
      add_timestamps
      add content : String
    end
  end

  def rollback
    drop table_for(Alpha)
  end
end
