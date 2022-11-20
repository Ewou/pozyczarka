# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  active     :boolean
#  borrowed   :boolean
#  item_type  :integer          default("other"), not null
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
  validates :name, presence: { message: "cannot be empty" }, length: { minimum: 3 }

  enum item_type: %i[book CD press game electric_device kitchen_utensil tool other]
end
