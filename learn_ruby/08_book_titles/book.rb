class Book
    attr_accessor :title

    def initialize(title = nil)
        @title = title
    end

    def title=(titles)
        @title = titles.split(' ').map.with_index { |word, index|
            ['the', 'and', 'in', 'of', 'a', 'an'].include?(word)? index > 0? word : word.capitalize : word.capitalize
        }.join(' ')
    end
end
