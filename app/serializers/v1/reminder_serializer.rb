module V1
  class RemindersSerializer < ActiveModel::Serializer

    attributes :name, :description, :created_at, :id, :goal_id
    has_one :goal, serializer: V1::GoalSerializer

  end
end
