json.status 'success'
json.code @status
json.(@message, :created_at, :updated_at)

json.data do
  @traffic_check
end