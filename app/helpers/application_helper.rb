module ApplicationHelper
	
	def title(base_title)
		title = "Twitter-like App"
		title += " | #{base_title}" unless base_title.empty?
		content_for :title do
			title
		end
	end

	def gravatar_for(user, klazz, options = { size: 50 })
		gravatar_image_tag user.email, class: klazz, gravatar: options
	end

end
