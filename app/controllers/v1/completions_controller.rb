module V1
  class CompletionsController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:index, :show]

    def create
      @completion = Completion.new(completion_params)

      if @completion.save
        render json: @completion, serializer: V1::CompletionSerializer
      else
        render json: { error: 'completion_create_error' }, status: :unprocessable_entity
      end
    end

    private

      def completion_params
        params.require(:completion).permit(:goal_id, :completed)
      end

  end
end
