setwd("~/Studia/Moja praca/Rozdzia³ IV")
dane <- read_excel("~/Studia/Moja praca/Rozdzia³ IV/ALL_DO R.xlsx", col_types = c("numeric", "text", "text", "text", "text", "text", "text", "text", "text", "numeric", "text", "text", "text", "text", "text", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na = "n/a")
library(stargazer)




target <- c("Jednoosobowa w³asnoœæ prywatna", "Oddzia³ przedsiêbiorcy zagranicznego","Przedsiêbiorstwo Pañstwowe", "Przedsiêbiorstwo zagraniczne", "Spó³dzielnia", "Spó³ka akcyjna","Spó³ka cywilna", "Spó³ka jawna", "Spó³ka komandytowa", "Spó³ka komandytowo-akcyjna", "Spó³ka z ograniczon¹ odpowiedzialnoœci¹", "Towarzystwo ubezpieczeñ wzajemnych")

dane %>% select(forma %in% target)


dane %>% filter(forma == c("Jednoosobowa w³asnoœæ prywatna"))
stargazer(as.data.frame(dane_2016), summary = TRUE, na.rm = TRUE, type = "html", out = "statystyki_2016.html", style = "aer")


ggplot(dane_2016, aes(dane_2016$przychody_total), na.rm=TRUE) + geom_histogram()




ggplot(melt_2015, aes(x = variable, y = value)) +
        boxplot()




box2_4 <- melt_2015 %>%
        filter(variable %in% vector[2:4]) %>%
        ggplot(aes(variable)) +
        facet_wrap(~value, scales = "free") +
geom_density()
box2_4  