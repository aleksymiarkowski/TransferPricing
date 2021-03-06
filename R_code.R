setwd("~/Studia/Moja praca/Rozdzia� IV")
dane <- read_excel("~/Studia/Moja praca/Rozdzia� IV/ALL_DO R.xlsx", col_types = c("numeric", "text", "text", "text", "text", "text", "text", "text", "text", "numeric", "text", "text", "text", "text", "text", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na = "n/a")
library(stargazer)




target <- c("Jednoosobowa w�asno�� prywatna", "Oddzia� przedsi�biorcy zagranicznego","Przedsi�biorstwo Pa�stwowe", "Przedsi�biorstwo zagraniczne", "Sp�dzielnia", "Sp�ka akcyjna","Sp�ka cywilna", "Sp�ka jawna", "Sp�ka komandytowa", "Sp�ka komandytowo-akcyjna", "Sp�ka z ograniczon� odpowiedzialno�ci�", "Towarzystwo ubezpiecze� wzajemnych")

dane %>% select(forma %in% target)


dane %>% filter(forma == c("Jednoosobowa w�asno�� prywatna"))
stargazer(as.data.frame(dane_2016), summary = TRUE, na.rm = TRUE, type = "html", out = "statystyki_2016.html", style = "aer")


ggplot(dane_2016, aes(dane_2016$przychody_total), na.rm=TRUE) + geom_histogram()
ggplot(dane_2016, aes(dane_2016$przychody_total), na.rm=TRUE) + geom_denisty()



ggplot(melt_2015, aes(x = variable, y = value)) +
        boxplot()




box2_4 <- melt_2015 %>%
        filter(variable %in% vector[2:4]) %>%
        ggplot(aes(variable)) +
        facet_wrap(~value, scales = "free") +
geom_density()
box2_4  