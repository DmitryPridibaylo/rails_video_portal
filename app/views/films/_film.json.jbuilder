# frozen_string_literal: true

json.extract! film, :id, :name, :description, :trailer, :release_date, :duration, :country, :tags, :age, :created_at, :updated_at
json.url film_url(film, format: :json)
