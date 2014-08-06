json.array!(@collborators) do |collborator|
  json.extract! collborator, :id, :last_name, :first_name, :year, :project_link, :comments
  json.url collborator_url(collborator, format: :json)
end
