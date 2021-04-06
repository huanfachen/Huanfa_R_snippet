# understanding_factor.R

# convert factor to numeric
year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(year_fct)               # Wrong! And there is no warning...
as.numeric(as.character(year_fct)) # Works...
as.numeric(levels(year_fct))[year_fct]    # The recommended way.

# setting the level orders
# Method 1: explicitly set the orders when creating thea factor
sizes <- factor(c("small", "large", "large", "small", "medium"),
                levels = c("small", "medium", "large"))
sizes

# Method 2: reset the reference level using 'relevel'
sizes <- factor(c("small", "large", "large", "small", "medium"),
                levels = c("small", "medium", "large"))
# set medium as reference level
sizes <- relevel(sizes, "medium")
sizes

# Method 3: use the reverse order
sizes <- factor(c("small", "large", "large", "small", "medium"), levels = c("small", "medium", "large"))
sizes
# reverse the order of the factor
sizes <- factor(sizes, levels=rev(levels(sizes)))
sizes

## ordered factor
sizes <- factor(c("small", "large", "large", "small", "medium"), levels = c("small", "medium", "large"), ordered = TRUE)
sizes

# another level to create an ordered factor
sizes <- factor(c("small", "large", "large", "small", "medium"), levels = c("small", "medium", "large"))
sizes
sizes <- ordered(sizes)
sizes
