# Imputed variables
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19) 

# Creating Dataframe
presidential_election <- data.frame(Name, ABC_political_poll_results, CBS_political_poll_results)
View(presidential_election)

# Construct presidential_election_matrix
pres_matrix <- c(ABC_political_poll_results, CBS_political_poll_results)
presidential_election_matrix <- matrix(pres_matrix, nrow = 2, byrow = TRUE)
# Naming rows & columns
Network <- c("ABC", "CBS")
rownames(presidential_election_matrix) <- Network
colnames(presidential_election_matrix) <- Name

presidential_election_matrix


