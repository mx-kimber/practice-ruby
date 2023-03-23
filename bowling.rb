# # player name
# # count turns/frames
# # make variable for score 1
# # make variable for score 2
# # add scores 1 & 2
# # store/shovel? into an array? hash?

# # add turn 2 totals
# # final score from turn 1 added to turn 2 totals for final turn score


# #make a gets.chomp

# bowler1 = [ ]
# turn = [ ]

# points1 = 5
# points2 = 5

# turn1 = points1 + points2
# bowler1 << turn1

# turn2 = points1 + points2 + turn1
# bowler1 << turn2
# p bowler1



# # each index is added from previous index
# # loop

# #keep track of the scores
# #10 frames
# 2no strikes
# #no spares
# # 2 people

bowler1 = [ ]
bowler2 = [ ]

10.times do
  bowler1 << [1,1]
  bowler2 << [2,2]
end

bowler1score = 0
bowler1.each do |frame|
  bowler1score += frame[0] + frame[1]
end

if plater1score > plater2scores
  p "Nice job player 1!"
end
p bowler1

