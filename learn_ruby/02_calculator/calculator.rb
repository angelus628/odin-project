def add(n1, n2)
    return (n1 + n2)
end

def subtract(n1, n2)
    return (n1 - n2)
end

def sum(arr)
    return arr.inject(0) { |sum, n| sum + n }
end

def multiply(arr)
    return arr.inject { |res, n| res * n }
end

def power(n1, n2)
    return (n1 ** n2)
end

def factorial(n)
    if(n == 0)
        return 1
    else
        return n.downto(1).inject(:*)
    end
end
