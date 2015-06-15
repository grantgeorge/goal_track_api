module V1
  class RemindersSerializer < ActiveModel::Serializer

    attributes :id, :goal_id, :name, :description, :created_at

  end
end
