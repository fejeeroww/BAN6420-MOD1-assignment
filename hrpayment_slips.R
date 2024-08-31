r
set.seed(123)  # For reproducibility

# Sample data for names and genders
names <- c("Efe", "Fejiro", "Grey", "Divine", "Tega", "Emeka", "Glory", "Harry", "Halle", "Ghenero")
genders <- c("Male", "Female")

# Function to generate workers
generate_workers <- function(num_workers) {
  workers <- data.frame(name = character(), salary = numeric(), gender = character(), stringsAsFactors = FALSE)
  for (i in 1:num_workers) {
    name <- sample(names, 1)
    salary <- sample(5000:35000, 1)  # Random salary between 5000 and 35000
    gender <- sample(genders, 1)
    workers <- rbind(workers, data.frame(name = name, salary = salary, gender = gender))
  }
  return(workers)
}

# Function to generate payment slips
generate_payment_slips <- function(workers) {
  payment_slips <- data.frame(name = character(), salary = numeric(), gender = character(), employee_level = character(), stringsAsFactors = FALSE)
  for (i in 1:nrow(workers)) {
    worker <- workers[i, ]
    level <- "N/A"  # Default if no condition matches
    if (worker$salary > 10000 & worker$salary < 20000) {
      level <- "A1"
    } else if (worker$salary > 7500 & worker$salary < 30000 & worker$gender == "Female") {
      level <- "A5-F"
    }
    payment_slip <- data.frame(name = worker$name, salary = worker$salary, gender = worker$gender, employee_level = level)
    payment_slips <- rbind(payment_slips, payment_slip)
  }
  return(payment_slips)
}

# Main execution
num_workers <- 400
workers <- generate_workers(num_workers)
payment_slips <- generate_payment_slips(workers)

# Save the payment slips to a CSV file
write.csv(payment_slips, 'payment_slips.csv', row.names = FALSE)
