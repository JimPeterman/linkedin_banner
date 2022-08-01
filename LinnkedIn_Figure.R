
library(ggplot2)
# https://github.com/kevinsblake/NatParksPalettes
library(NatParksPalettes)


x_values <- c(1:10)
mtn_1 <- c(4.5, 4.7, 4.4, 4.8, 4.5, 4.5, 4.4, 4, 4.3, 3.9)
mtn_2 <- c(3.5, 3.9, 3.5, 3.2, 3.5, 3.1, 3.8, 3.9, 3.5, 3.3)
mtn_3 <- c(2.3, 2.9, 2.5, 2.7, 2.5, 2.1, 2.8, 2.4, 2, 2.3)
mtn_4 <- c(1.8, 1, 1.8, 1.6, 1.6, 1.9, 1.5, 1.2, 1.5, 1.1)

data <- data.frame(x_values, mtn_1, mtn_2, mtn_3, mtn_4)


ggplot(data) +
  theme_classic() +
  geom_point(aes(x=8.5, y=4.5), size=50, shape=21, stroke=2, 
             color="gold4", fill="gold4") +
  geom_point(aes(x=8.5, y=4.5), size=45, shape=21, 
             color="gold4", fill="lightgoldenrod", ) +
  geom_area(aes(x = x_values, y=mtn_1, fill="blue")) +
  geom_area(aes(x = x_values, y=mtn_2, fill="dodgerblue")) +
  geom_area(aes(x = x_values, y=mtn_3, fill="red")) +
  geom_area(aes(x = x_values, y=mtn_4, fill="yellow")) +
  scale_fill_manual(values=rev(natparks.pals("Acadia", 4))) +
  # scale_fill_manual(values=c("lightskyblue3", "steelblue", "steelblue4", "dodgerblue4")) +
  theme(panel.background = element_rect(fill = "lightsalmon"),
        legend.position = "none",
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.title.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.title.y=element_blank()) +
  coord_cartesian(xlim = c(1.4, 9.6), ylim = c(1,5)) +
  annotate(geom = "text", x=8.5, y=1, label="github.com/JimPeterman",
           color="orange", fontface="bold")


