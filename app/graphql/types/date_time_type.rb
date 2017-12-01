Types::DateTimeType = GraphQL::ScalarType.define do
  name 'DateTime'
  description 'DateTime in ISO8601 format'

  coerce_input(lambda do |value, _ctx|
    value.is_a?(Time) ? value : Time.zone.parse(value)
  end)
  coerce_result ->(value, _ctx) { value.iso8601 }
end
