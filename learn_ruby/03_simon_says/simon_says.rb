def echo(w)
    "#{w}"
end

def shout(w)
    "#{w}".upcase
end

def repeat(w, n = 2)
    ("#{w} " * n).strip!
end

def start_of_word(w, n = 0)
    "#{w}"[0, n]
end

def first_word(w)
    "#{w}".split(' ')[0]
end

def titleize(w)
    nocap = ["and", "the", "over"]
    count = 0
    w.split(' ').map { | n |
        count += 1
        nocap.include?(n)? count == 1? n.capitalize : n : n.capitalize
    }.join(' ')
end


