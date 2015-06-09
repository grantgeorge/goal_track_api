module V1
  class GoalSerializer < ActiveModel::Serializer

    attributes :id, :name, :description, :starts_at, :ends_at, :created_at
    has_one :user, serializer: V1::UserSerializer

  end
end

