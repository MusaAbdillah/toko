class StaticPagesController < ApplicationController
	skip_before_action :authorize

	def contact
	end
end
