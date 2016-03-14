class App
	attr_reader :score,:name
	def initialize (name,author,os,score)
		@name = name
		@author = author
		@os = os
		@score = score
	end

	def description
		if @score >= 0 && @score <= 4
			score_text = "a poor"
		elsif @score >= 5 && @score <= 6
			score_text = "a good"
		elsif @score >= 7 && @score <= 9
			score_text = "a very good"
		elsif @score > 9 && @score <= 10
			score_text = "an awesome"
		else
			score_text = "Unknown"
		end

		puts "#{@author} has developed #{@name} for #{@os} and the app has got #{score_text} mark."
	end

	def compare (another)
		if self.score > another.score
			puts "#{@name} is better than #{another.name}"
		else
			puts "#{@name} is worse than #{another.name}"
		end
	end

end

app = App.new "ILoveApples", "Richard Stallman", "iOS", 8
other_app = App.new "SmashingCandies", "Steve Ballmer", "iOS", 6
app.description
app.compare other_app