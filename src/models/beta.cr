class Beta < BaseModel
  table do
    belongs_to alpha : Alpha

    column content : String
  end
end
