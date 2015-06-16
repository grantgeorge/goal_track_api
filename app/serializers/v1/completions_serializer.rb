module V1
  class CompletionsSerializer < ActiveModel::Serializer

    attributes :id, :goal_id, :completed, :created_at, :updated_at

  end
end
