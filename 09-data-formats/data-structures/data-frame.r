# Data frame

v_numeric <- c(1, 2, 3)
v_character <- c("a", "b", "c")
v_logical <- c(T, F, T)

# Coercion to character (most general data type in this case)
dfa <- cbind(v_numeric, v_character, v_logical)
dfa

# Data frame with different data types
df <- cbind.data.frame(v_numeric, v_character, v_logical)
df
