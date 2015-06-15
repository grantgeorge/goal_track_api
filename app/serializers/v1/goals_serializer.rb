module V1
  class GoalsSerializer < ActiveModel::Serializer

    attributes :id, :name, :description, :starts_at, :ends_at, :created_at, :user_id, :username
    # has_one :user, serializer: V1::UserSerializer

    def username
      object.user.username
    end

  end
end
