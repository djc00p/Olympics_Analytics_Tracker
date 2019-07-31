class SportsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :sport

  attribute  :events do |object|
    object.events.map do |e|
      e.name
    end
  end
end
