use context starter2024
# num-sqr :: (n :: Number) -> Number
# Compute the square of n.
num-sqr(4)

# num-to-string :: (n :: Number) -> String
# Convert n to a string.
num-to-string(2)

# num-random :: (max :: Number) -> Number
# Return a random integer from 0 to max - 1.
num-random(10)

# string-append :: (front :: String, back :: String) -> String
# Concatenate (glue together) front and back.
string-append("a", "b")

# string-length :: (s :: String) -> Number
# Compute the number of characters in s.
string-length("pyret")

# string-repeat :: (s :: String, n :: Number) -> String
# Repeat the string s n number of times.
string-repeat("ha", 3)

# string-index-of :: (
#   original-string :: String, 
#   string-to-find :: String
# ) 
# -> Number
# Returns the index from the beginning of the string 
# where string-to-find first appears, or -1 if the 
# string isn't found.
string-index-of(
  "web", 
  "w")

# string-substring :: (
#   s :: String,
#   start-index :: Number,
#   end-index :: Number
# )
# -> String
# Return a new string created from the characters 
# of the input string, starting from start-index (inclusive) 
# and ending at end-index (exclusive).
string-substring(
  "allo", 
  1, 
  3)

# string-replace :: (
#   original-string :: String,
#   string-to-find :: String,
#   replacement-string :: String
# )
# -> String
# Return a new string where each instance of 
# string-to-find in the original-string is 
# replaced by replacement-string.
string-replace(
  "😊😊🤕😊", 
  "🤕", 
  "😊")

# string-char-at :: (s :: String, n :: Number) -> String
# Return a string containing the character 
# at the index n from string s.
string-char-at("a", 0)

# ellipse :: (
#   width :: Number,
#   height :: Number,
#   mode :: String,
#   color :: String
# )
# -> Image
# Return an ellipse with the given width, 
# height, mode (fill or outline) and color.
ellipse(
  60, 
  30, 
  "outline", 
  "black")

# add-line :: (
#   img :: Image,
#   x1 :: Number,
#   y1 :: Number,
#   x2 :: Number,
#   y2 :: Number,
#   color :: String
# )
# -> Image
# Creates a new image like img with a line added 
# starting from the point (x1,y1) and going to the 
# point (x2,y2).
add-line(
  circle(20, "outline", "maroon"), 
  0, 
  40, 
  40, 
  0, 
  "orange")

# radial-star :: (
#   point-count :: Number,
#   outer :: Number,
#   inner :: Number,
#   mode :: String,
#   color :: String
# )
# -> Image
# Constructs a star with point-count points. 
# The outer points will lie a distance of outer 
# from the center of the star, while the inner points 
# will lie a distance of inner from the center.
radial-star(
  32, 
  30, 
  40, 
  "outline", 
  "black")
