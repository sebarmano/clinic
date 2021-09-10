# frozen_string_literal: true

class NavbarLinkComponent < ViewComponent::Base
  def initialize(text:, link: , icon_path:)
    @text = text
    @link = link
    @icon_path = icon_path
  end
end
