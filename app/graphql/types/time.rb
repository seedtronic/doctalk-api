Types::DateTimeType = GraphQL::ScalarType.define do
  name 'DateTime'
  description 'DateTime in ISO8601 format'

  coerce_input lamda(value, _ctx) do
    value.is_a?(Time) ? value : Time.zone.parse(value)
  end
  coerce_result ->(value, _ctx) { value.iso8601 }
end
