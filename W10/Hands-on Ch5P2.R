## Hands-on Ch5p2
<<<<<<< HEAD
=======
# Part 1
# Question: By using *vjust* argument in geom_text() function, label all points in the vertical direction above or below each point. (two plots should be drawn, below and above each point by changing the value of *vjust*)
# ========================== Answer part a =====================
>>>>>>> main

library(gapminder)
library(tidyverse)
library(socviz)

# Reloading by_country from organdata
organdata <- organdata
view(organdata)

by_country <- organdata %>% group_by(consent_law, country) %>%
  summarize(donors_mean= mean(donors, na.rm = TRUE),
            donors_sd = sd(donors, na.rm = TRUE),
            gdp_mean = mean(gdp, na.rm = TRUE),
            health_mean = mean(health, na.rm = TRUE),
            roads_mean = mean(roads, na.rm = TRUE),
            cerebvas_mean = mean(cerebvas, na.rm = TRUE))

view(by_country)

<<<<<<< HEAD
by_country
=======
# Part 2)
# For the summarized *gss_sm* dataset grouped by only *padeg*, laebl the mean of children and siblings based on the paternal degree.
# ========================== Answer part b =====================
>>>>>>> main

# Part 1
# Question: By using *vjust* argument in geom_text() function, label all points in the vertical direction above or below each point. (two plots should be drawn, below and above each point by changing the value of *vjust*)
# ========================== Answer part a =====================

<<<<<<< HEAD
p <- ggplot(data = by_country,
            mapping = aes(x = roads_mean, y = donors_mean))

p + geom_point() + geom_text(mapping = aes(label = country), hjust = -.1, vjust=-.15)
=======

>>>>>>> main


# Part 2)
# For the summarized *gss_sm* dataset grouped by only *padeg*, laebl the mean of children and siblings based on the paternal degree.
# ========================== Answer part b =====================

<<<<<<< HEAD
gss_sm

padeg.df <- gss_sm %>% group_by(padeg) %>%
  summarize(children_mean= mean(childs, na.rm = TRUE),
            siblings_mean = mean(sibs, na.rm = TRUE))
 
p <- ggplot(padeg.df, aes(x = children_mean, y = siblings_mean,
                                    label = padeg))  
p + geom_point() + geom_text_repel()
=======
## Part 3) 
# Question: For the by-country dataframe, choose observations from the united state of america (ccdoe=USA) after 1998, and then highlight them in the plot of road fatalities average against the average percentage of donors. 
# ========================== Answer part c =====================

>>>>>>> main


## Part 3) 
# Question: For the organdata dataframe, choose observations from the united state of america (ccdoe=USA) after 1998, and then highlight them in the plot of road fatalities average against the average percentage of donors. 
# ========================== Answer part c =====================

<<<<<<< HEAD
organdata$ind <- organdata$ccode %in% c("USA") &
  organdata$year > 1998

p <- ggplot(data = organdata,
            mapping = aes(x = roads,
                          y = donors, color = ind))
p + geom_point() +
  geom_text_repel(data = subset(organdata, ind),
                  mapping = aes(label = ccode)) +
  guides(color = "none")   # Remove some guides


## Part 4)
# Using gapminder dataset, specify the outliers in the plot of gdpPercap over lifeExp. 
# ========================== Answer part d =====================

p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point() +
  annotate(geom = "rect", xmin = 58000, xmax = 115000,
           ymin = 55, ymax = 70, fill = "red", alpha = 0.2) + 
  annotate(geom = "text", x = 60000, y = 72,
           label = "A surprisingly high recovery rate.", hjust = 0)      



=======
## Part 4)
# Using gapminder dataset, specify the outliers in the plot of gdpPercap over lifeExp. 
# ========================== Answer part d =====================
>>>>>>> main

