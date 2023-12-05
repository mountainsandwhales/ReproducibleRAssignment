#Exploratory plot
plot_exploratory_figure <- function(penguins_clean) {
  penguins_clean %>%
    ggplot(aes(x = body_mass_g, y = flipper_length_mm, colour = species)) +
    geom_point(alpha=0.5) +
    labs(title = "Body mass against flipper Length for 3 species of penguin", x = "Body Mass (g)", y = "Flipper Length (mm)")
}
exploratory_figure <- plot_exploratory_figure(penguins_clean)

