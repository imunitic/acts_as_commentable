# create table :comments do |t|
#   t.column :author, :string
#   t.column :comment, :string
#   t.column :commentable_type, :string
#   t.column :commentable_id, :integer
#   t.column :created_at, :datetime, :null => false
# end
class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
end
