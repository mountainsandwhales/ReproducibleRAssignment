clean_function <- function(penguins_data) {
  penguins_data %>%
    select(-Comments) %>% #removes comments column
    clean_names() %>% #cleans names
    na.omit()  %>% #remove NAs
    #shorten species names
    mutate(species = case_when(
      species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
      species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
      species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo"
    ))
}