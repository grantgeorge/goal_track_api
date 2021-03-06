module V1
  class GoalsController < ApplicationController
    before_action :set_goal, only: [:show, :update, :destroy]

    # GET /goals
    # GET /goals.json
    def index
      @goals = Goal.where user_id: current_user.id

      render json: @goals, each_serializer: V1::GoalsSerializer
    end

    # GET /goals/1
    # GET /goals/1.json
    def show
      render json: @goal, serializer: V1::GoalSerializer
    end

    # POST /goals
    # POST /goals.json
    def create
      @goal = Goal.new(goal_params)

      @goal.user_id = current_user.id

      if @goal.save
        render json: @goal, status: :created, serializer: V1::GoalSerializer
      else
        render json: @goal.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /goals/1
    # PATCH/PUT /goals/1.json
    def update
      @goal = Goal.find(params[:id])

      if @goal.update(goal_params)
        head :no_content
      else
        render json: @goal.errors, status: :unprocessable_entity
      end
    end

    # DELETE /goals/1
    # DELETE /goals/1.json
    def destroy
      @goal.destroy

      head :no_content
    end

    private

      def set_goal
        @goal = Goal.find(params[:id])
      end

      def goal_params
        params.require(:goal).permit(:name, :description, :starts_at, :ends_at)
      end
  end
end
