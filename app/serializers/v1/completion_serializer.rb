module V1
  class CompletionSerializer < ActiveModel::Serializer

    attributes :id, :goal_id, :completed, :created_at, :updated_at

  end
end

