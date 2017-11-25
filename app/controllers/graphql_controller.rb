class GraphqlController < ApplicationController
  include Knock::Authenticable

  def execute
    result = DoctalkApiSchema
             .execute(
               params[:query],
               variables: ensure_hash(params[:variables]),
               context: {
                 current_user: current_user
               },
               operation_name: params[:operationName]
             )
    render json: result
  end

  private

  # Handle form data, JSON body, or a blank value
  def ensure_hash(ambiguous_param)
    case ambiguous_param
    when String
      ambiguous_param.present? ? ensure_hash(JSON.parse(ambiguous_param)) : {}
    when Hash, ActionController::Parameters
      ambiguous_param
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end
end
