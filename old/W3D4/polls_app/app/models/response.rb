# == Schema Information
#
# Table name: responses
#
#  id           :integer          not null, primary key
#  choice_id    :integer          not null
#  responder_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Response < ApplicationRecord

  belongs_to :answer_choice,
    primary_key: id,
    foreign_key: choice_id,
    class_name: :AnswerChoice

  belongs_to :respondent,
    primary_key: id,
    foreign_key: responder_id,
    class_name: :User
end
