def echo(a)#write your code here
a = a.to_s
end

def shout(a)
a.upcase
end

def repeat(a,b=2)
  a += ( " " + a ) * ( b - 1 )
end

def start_of_word( a,b=0)
    a[0..b-1]
end

def first_word(a)
a.split.first
end

def titleize(title)
  title = title.split(" ").map {|word| word.capitalize}.join(" ")
	title = title.gsub("And", "and")
	title = title.gsub("To", "to")
	title = title.gsub("The", "the")
	title = title.gsub("but", "but")
	title[0] = title[0].upcase
	return title
end
