dataTable <- matrix(data = NA, nrow = 9, ncol = 3, byrow = TRUE)
dataTable <- as.data.frame(dataTable)
colnames(dataTable) <- c("You", "Opponent", "Outcome")

# Fill in columns
dataTable[, 1] <- c(rep("Rock", 3), rep("Paper", 3), rep("Scissors", 3))
dataTable[, 2] <- c(rep(c("Rock", "Paper", "Scissors"), 3))
dataTable[, 3] <- c(c("Draw", "Lose", "Win"), c("Win", "Draw", "Lose"), c("Lose", "Win", "Draw"))
# Check:
dataTable

#### Alternate Table Creation:
choices <- c("Rock", "Paper", "Scissors")
cartesianProd <- expand.grid(choices, choices)
cartesianProd <- as.data.frame(cartesianProd)
# Check:
cartesianProd 


# Convert Outcome as Factors:
dataTable[, 3] <- as.factor(dataTable[, 3] )
str(dataTable)


ggplot(dataTable,aes(x = dataTable[, 1],y = dataTable[, 2],fill = dataTable[, 3])) + 
  geom_tile() + 
  scale_fill_manual(values = c('blue','red', "green")) +
  labs(x = "Your Choice", y = "Opponent's Choice", 
       title = "Rock, Paper, Scissors Chart", fill = "Your Outcome") + 
  theme(plot.title = element_text(hjust = 0.5), 
        axis.title.x = element_text(face="bold", colour="#FF7A33", size = 12),
        axis.title.y = element_text(face="bold", colour="#FF7A33", size = 12),
        legend.title = element_text(face="bold", size = 10))
install.packages("ggplot2")
