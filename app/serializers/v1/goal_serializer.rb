module V1
  class GoalSerializer < ActiveModel::Serializer

    attributes :id, :name, :description, :type_of, :starts_at, :ends_at,
      :created_at, :user_id

    has_many :completions, serializer: V1::CompletionsSerializer

  end
end

