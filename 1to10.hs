import Test.HUnit

-- http://www.haskell.org/haskellwiki/99_questions/1_to_10

-- 01 --

myLast :: [a] -> a
myLast = undefined

test01 = TestList [
  TestCase $ assertEqual "myLast 01" 4 $ myLast [1, 2, 3, 4],
  TestCase $ assertEqual "myLast 02" 'z' $ myLast ['x','y','z'] ]

-- 02 --

myButLast :: [a] -> a
myButLast = undefined

test02 = TestList [
  TestCase $ assertEqual "myButLast 01" 3 $ myButLast [1,2,3,4],
  TestCase $ assertEqual "myButLast 02" 'y' $ myButLast ['a'..'z'] ]

-- 03 --

myElementAt :: [a] -> Int -> a
myElementAt x y = undefined

test03 = TestList [
  TestCase $ assertEqual "myElementAt 01" 2 $ myElementAt [1,2,3] 2,
  TestCase $ assertEqual "myElementAt 02" 'e' $ myElementAt "haskell" 5 ]

-- 04 --

myLength :: (Num n) => [a] -> n
myLength xs = undefined

test04 = TestList [
  TestCase $ assertEqual "myLength 01" 3 $ myLength [123, 456, 789],
  TestCase $ assertEqual "myLength 02" 13 $ myLength "Hello, world!" ]

-- 05 --

myReverse :: [a] -> [a]
myReverse xs = undefined

test05 = TestList [
  TestCase $ assertEqual "myReverse 01" "!amanap ,lanac a ,nalp a ,nam A" $ myReverse "A man, a plan, a canal, panama!",
  TestCase $ assertEqual "myReverse 02" [4,3,2,1] $ myReverse [1,2,3,4] ]

-- 06 --

myIsPalindrome :: (Eq a) => [a] -> Bool
myIsPalindrome x = undefined

test06 = TestList [
  TestCase $ assertEqual "myIsPalindrome 01" False $ myIsPalindrome [1,2,3],
  TestCase $ assertEqual "myIsPalindrome 02" True $ myIsPalindrome "madamimadam",
  TestCase $ assertEqual "myIsPalindrome 03" True $ myIsPalindrome [1,2,4,8,16,8,4,2,1],
  TestCase $ assertEqual "myIsPalindrome 04" False $ myIsPalindrome [1,2,3,1] ]

-- 07 --

data Elem = Elem Int | List [Elem]
          deriving (Eq, Show)

myFlatten :: Elem -> [Int]
myFlatten e = undefined

test07 = TestList [
  TestCase $ assertEqual "myFlatten 01" [5] $ myFlatten (Elem 5),
  TestCase $ assertEqual "myFlatten 02" [1,2,3,4,5] $ myFlatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]),
  TestCase $ assertEqual "myFlatten 03" [] $ myFlatten (List []) ]

-- 08 --

myCompress :: [a] -> [a]
myCompress x = undefined

test08 = TestList [
  TestCase $ assertEqual "myCompress 01" ["a","b","c","a","d","e"] $
    myCompress ["a","a","a","a","b","c","c","a","a","d","e","e","e","e"] ]


-- 09 --

myPack :: [a] -> [[a]]
myPack xs = undefined

test09 = TestList [
  TestCase $ assertEqual "myPack 01" ["aaaa","b","cc","aa","d","eeee"] $
    myPack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] ]

-- 10 --

myEncode :: [a] -> [(Int, a)]
myEncode xs = undefined

test10 = TestList [
  TestCase $ assertEqual "myEncode 01" [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')] $
    myEncode "aaaabccaadeeee" ]

-- Test List --

test_list = TestList [
  test01,
  test02,
  test03,
  test04,
  test05,
  test06,
  test07,
  test08,
  test09,
  test10 ]

main :: IO Counts
main = do runTestTT test_list
