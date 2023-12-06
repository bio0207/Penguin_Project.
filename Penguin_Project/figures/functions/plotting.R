# Linear Regression Plot to show each sex separately. Annotated the plot to show the results from the stats test. 
plot_regression_figure_1 <- function(culmen_data) {
  penguin_linear_model <- lm(culmen_depth_mm ~ culmen_length_mm + sex, data = culmen_data)
  
  culmen_data %>% 
    ggplot(aes(x = culmen_length_mm, y = culmen_depth_mm, colour = sex )) +
    geom_point() + 
    geom_smooth(method = 'lm', formula = y ~ x, se = FALSE) +  # Remove confidence interval
    labs(x = "Culmen Length (mm)", y = "Culmen Depth (mm)") +
    ggtitle("A linear regression plot to show the relationship between culmen length,\n depth and sex across Antarctica penguins") +
    annotate("text", x = 35, y = 14.5, label = paste("R-squared = 0.2618")) +
    annotate("text", x = 35, y = 14, label = paste("p-value < 2.2e-16")) + 
    theme_bw()
}

# Linear regression plot to show the overall regression line. Annotated the plot to show the results from the stats test.
plot_regression_figure_2 <- function(culmen_data) {
  penguin_linear_model <- lm(culmen_depth_mm ~ culmen_length_mm + sex, data = culmen_data)
  
  culmen_data %>% 
    ggplot(aes(x = culmen_length_mm, y = culmen_depth_mm, colour = sex)) +
    geom_point() + 
    geom_smooth(method = "lm", colour = "blue", formula = y ~ x, se = FALSE) +  # Remove confidence interval
    labs(x = "Culmen Length (mm)", y = "Culmen Depth (mm)") +
    ggtitle("A linear regression plot to show the relationship between culmen length,\n depth and sex across Antarctica penguins") +
    annotate("text", x = 35, y = 14.5, label = paste("R-squared = 0.2618")) +
    annotate("text", x = 35, y = 14, label = paste("p-value < 2.2e-16")) + 
    theme_bw()
}



