json.array!(@testemplates) do |testemplate|
  json.extract! testemplate, :id, :field1, :field2, :field3
  json.url testemplate_url(testemplate, format: :json)
end
