# frozen_string_literal: true

class Film < ApplicationRecord
  has_one_attached :poster
  has_one_attached :video
end
