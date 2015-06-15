module V1
  class ReminderSerializer < ActiveModel::Serializer

    attributes :id, :goal_id, :name, :description, :created_at

  end
end
