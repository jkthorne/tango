class CreateBeta::V20230408205742 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Beta) do
      primary_key id : Int64
      add_timestamps
      add content : String
      add_belongs_to alpha : Alpha, on_delete: :cascade
    end
  end

  def rollback
    drop table_for(Beta)
  end
end
