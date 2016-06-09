class Post < ActiveRecord::Base
	validates_presence_of :title
	validates_presence_of :body #, :message => "Please enter your text."
	validates_format_of :title, with: /[a-z0-9]*/i

	before_create :count_chars

	def count_chars
		self.title_char_count = title.length
		self.body_char_count = body.length
	end

end
