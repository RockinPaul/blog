class Video < ActiveRecord::Base
	def next
		Video.where("id > ?", id).first
	end
# It's very clear and useful solution in case when object with ordered id was deleted.
	def prev
		Video.where("id < ?", id).last
	end
end
