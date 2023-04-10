class Alpha < BaseModel
  table do
    has_one beta : Beta

    column content : String
  end
end
