# Bibliotekos užkrovimas --------------------------------------------------
library(data.table)

# Tekstinių duomenų nuskaitymas --------------------------------------------
# Naudojant `data.table` bibliotekos funkciją `fread` 

rankos <- fread("duomenys/01-csv1.csv",
                  stringsAsFactors = TRUE,
                  data.table = FALSE)

# Duomenų lentelės susvestinė ---------------------------------------------
str(rankos)
head(rankos)
tail(rankos)
summary(rankos)

# Duomenų transformavimas -------------------------------------------------
rankos$lytis <- as.factor(rankos$lytis)

# Vizualizavimas ----------------------------------------------------------
plot(rankos)



