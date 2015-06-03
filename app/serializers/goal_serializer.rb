class GoalSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :starts_at, :ends_at
end
