class VideoSerializer
  include JSONAPI::Serializer
  set_key_transform :camel_lower
  attributes :id, :title, :description, :video_url, :thumbnail_url, :created_at
  belongs_to :user
end
