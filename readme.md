![badge](data:image/svg+xml;base64,PHN2ZyB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBjb250ZW50c3R5bGV0eXBlPSJ0ZXh0L2NzcyIgaGVpZ2h0PSIyMCIgd2lkdGg9IjEyOCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ieE1pZFlNaWQgbWVldCIgdmVyc2lvbj0iMS4wIiBkYXRhLXJlYWN0aWQ9Ii4wLjEuMCI+PGxpbmVhckdyYWRpZW50IHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4bGluazpzaG93PSJvdGhlciIgeGxpbms6dHlwZT0ic2ltcGxlIiB4bGluazphY3R1YXRlPSJvbkxvYWQiIGlkPSJhIiB4Mj0iMCIgeTI9IjEwMCUiIGRhdGEtcmVhY3RpZD0iLjAuMS4wLjAiPjxzdG9wIHN0b3Atb3BhY2l0eT0iLjEiIHN0b3AtY29sb3I9IiNiYmIiIG9mZnNldD0iMCIgZGF0YS1yZWFjdGlkPSIuMC4xLjAuMC4wIj48L3N0b3A+PHN0b3Agc3RvcC1vcGFjaXR5PSIuMSIgb2Zmc2V0PSIxIiBkYXRhLXJlYWN0aWQ9Ii4wLjEuMC4wLjEiPjwvc3RvcD48L2xpbmVhckdyYWRpZW50PjxyZWN0IHJ4PSIzIiBmaWxsPSIjNTU1IiB3aWR0aD0iMTI4IiBoZWlnaHQ9IjIwIiBkYXRhLXJlYWN0aWQ9Ii4wLjEuMC4xIj48L3JlY3Q+PHJlY3Qgcng9IjMiIGZpbGw9IiM0YzEiIHdpZHRoPSI1MyIgeD0iNzUiIGhlaWdodD0iMjAiIGRhdGEtcmVhY3RpZD0iLjAuMS4wLjIiPjwvcmVjdD48cmVjdCBmaWxsPSIjNGMxIiB4PSI3NSIgd2lkdGg9IjEzIiBoZWlnaHQ9IjIwIiBkYXRhLXJlYWN0aWQ9Ii4wLjEuMC4zIj48L3JlY3Q+PHJlY3Qgcng9IjMiIGZpbGw9InVybCgjYSkiIHdpZHRoPSIxMjgiIGhlaWdodD0iMjAiIGRhdGEtcmVhY3RpZD0iLjAuMS4wLjQiPjwvcmVjdD48ZyBmb250LXNpemU9IjExIiBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZmlsbD0iI2ZmZiIgZGF0YS1yZWFjdGlkPSIuMC4xLjAuNSI+PHRleHQgeD0iNiIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgeT0iMTUiIGRhdGEtcmVhY3RpZD0iLjAuMS4wLjUuMCI+UG93ZXIgbGV2ZWw8L3RleHQ+PHRleHQgeD0iNiIgeT0iMTQiIGRhdGEtcmVhY3RpZD0iLjAuMS4wLjUuMSI+UG93ZXIgbGV2ZWw8L3RleHQ+PHRleHQgZmlsbD0iIzAxMDEwMSIgeD0iODEiIGZpbGwtb3BhY2l0eT0iLjMiIHk9IjE1IiBkYXRhLXJlYWN0aWQ9Ii4wLjEuMC41LjIiPiZndDsgOTAwMDwvdGV4dD48dGV4dCB4PSI4MSIgeT0iMTQiIGRhdGEtcmVhY3RpZD0iLjAuMS4wLjUuMyI+Jmd0OyA5MDAwPC90ZXh0PjwvZz48L3N2Zz4=)

Playing with [`ruby-fann`](https://github.com/tangledpath/ruby-fann).

- Implement the game [Set](http://www.setgame.com/) in Ruby
  - Cards have 4 attributes: color, number, fill and shape
  - A valid set is 3 cards where, for each attribute, they're:
    - all the same value; or
    - all different values
  - A deck has one of each possible combination (3^4, 81 cards)

- Can you teach it to the computer just with examples?
  - No
  - This is stupid anyways, you should just give it the rules

- How do you model a Set card (or cards) as meaningful inputs? (See `Set#to_a`)
  - I don't really understand how this works
  - I tried making each attribute 1 or 0. Awful
  - I tried making each attribute one decimal place. Awful
  - It works if you provide it the `same_or_different` result, but that's too easy.

- `$ ruby robot.rb`
