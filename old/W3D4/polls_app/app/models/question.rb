# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  text       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll_id    :integer          not null
#

class Question < ApplicationRecord


  has_many :answer_choices,
           primary_key: id,
           foreign_key: question_id,
           class_name: :Question

  belongs_to :poll,
             primary_key: id,
             foreign_key: poll_id,
             class_name: :Question

             
end
