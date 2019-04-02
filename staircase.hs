
staircaseLine 0 _ = []
staircaseLine width hashNum = 
    (if width <= hashNum
    then '#'
    else ' '):staircaseLine (width - 1) hashNum

staircaseBuild width hashNum = if hashNum == 0 
    then ""
    else staircaseBuild width (hashNum - 1) ++ staircaseLine width hashNum ++ "\n"

staircase height = staircaseBuild height height