# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num)

def guessNumber(n)
  left, right = 1, n
  
  while left <= right do
    piv = (left + right) / 2
    wow = guess(piv)
    
    return piv if wow === 0
    if wow < 0
      right = piv - 1
    else
      left = piv + 1
    end
  end
end