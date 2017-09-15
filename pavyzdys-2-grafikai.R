# Užkranam duomenis `BOD` iš bibliotekos `datasets` ---------------------------
data(BOD)

# Nusibraižom duomenis (bazine R sistema) -------------------------------------
plot(x = BOD$Time, y = BOD$demand,  main = "Pavyzdys 1")

with(BOD, plot(x = Time, y = demand, main = "Pavyzdys 2"))

# Nusibraižom duomenis (ggplot2 sistema) --------------------------------------
library(ggplot2)
ggplot(BOD, aes(x = Time, y = demand)) + geom_point() + ggtitle("Pavyzdys 3")

# Statinis ir interaktyvus grafikas (ggplot2 + plotly sistemos) ---------------
library(plotly)

grafikas <-
    ggplot(BOD, aes(x = Time, y = demand)) +
    geom_point() +
    ggtitle("Pavyzdys 4") +
    theme_bw()

# Statinis:
grafikas

# Interaktyvus:
ggplotly(grafikas)


