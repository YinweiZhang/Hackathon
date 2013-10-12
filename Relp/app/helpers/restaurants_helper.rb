module RestaurantsHelper
	def upvote(r)
		r.upvote = r.upvote+1
	end

	def downvote(r)
		r.downvote = r.downvote+1
	end
end
