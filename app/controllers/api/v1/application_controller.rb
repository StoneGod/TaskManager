class Api::V1::ApplicationController < Api::ApplicationController
  RANSACK_DEFAULT_SORT = 'id ASC'.freeze
  DEFAULT_PER_PAGE = Kaminari.config.default_per_page.freeze
  MAX_PER_PAGE = 100.freeze

  include AuthHelper

  respond_to :json

  def self.responder
    JsonResponder
  end

  def build_meta(collection)
    {
      count: collection.count,
      total_count: collection.total_count,
      current_page: collection.current_page,
      total_pages: collection.total_pages,
      per_page: collection.limit_value,
    }
  end

  def ransack_params
    params.to_unsafe_h.fetch(:q, { s: RANSACK_DEFAULT_SORT })
  end

  def page
    params.fetch(:page, 1)
  end

  def per_page
    per = params.fetch(:per, DEFAULT_PER_PAGE).to_i
    per > MAX_PER_PAGE ? MAX_PER_PAGE : per
  end
end
