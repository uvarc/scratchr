# create bogus population projections
future <-
  ts(
    data = c(210,240,280,340,360,390),
    start = 1980,
    end = 2030,
    frequency = .1
  )

# combine future with built-in uspop dataset
futurepop <-
  ts(
    data  = c(datasets::uspop, future),
    start = 1790,
    end = 2030,
    frequency = .1
  )

save(futurepop, file = "data/futurepop.rda")
