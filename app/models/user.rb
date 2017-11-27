class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts, dependent: :destroy # Removes posts if account is deleted
         has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
         has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy

         has_many :following, through: :active_relationships, source: :followed
         has_many :followers, through: :passive_relationships, source: :follower

         validates_integrity_of  :avatar
         validates_processing_of :avatar

         # helper

         # follow another user
          def follow(other)
            active_relationships.create(followed_id: other.id)
          end

          # unfollow user
          def unfollow(other)
            active_relationships.find_by(followed_id: other.id).destroy
          end

          # is following a user?
          def following?(other)
            following.include?(other)
          end

          validates_integrity_of  :avatar
          validates_processing_of :avatar

          private

          def avatar_size_validation
            errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
          end
end
