:timer.tc(fn ->
  for a <- 1..99, b <- (a + 1)..99, c <- (b + 1)..99, a * a + b * b == c * c, do: [a, b, c]
end)
|> IO.inspect()
