# Vector:
vector1 <- c(5,6,7) # Format is: Row x Column, hence its a 1x3 vector.
vector2 <- c(8,9,0)
vector3 <- c(1,2,3)
print(vector1)
print(vector1+vector2)
vector4 <- c(10, 20, 30.5)
print(vector4)


# List:
list1 <- list(10, 20, 30.5)
list2 = list(20, 3i+3, "Sreya BB")
print(list1)
print(list2)


# Data Frame: 
# Its a Tabular Data Format with VECTOR elements. 
df1 <- c(101, 102, 103) # It's a Vector
df2 <- c("Prach", "Sreya", "5") # And this also a Vector
df <- data.frame(df1, df2)
print(df)

# Real Life Example:
student_name <- c("Prach", "Sreya", "Ralph", "Croco", "Tolouse")
student_id <- c(101, 102, 103, 104, 105)
.final_result <- c(92, 95, 10, 49, 68)
df <- data.frame(student_id, student_name, .final_result)
print(df)


# Array: 
array1 <- array(c(10, 20, 30, 40, 50, 60), dim <- c(2,5,1)) 
# Dim representing Dimension which consist of row, col, number of array
# 2,5,1 means its a 2x5 array format with 1 array
print(array1)


# Matrix: 
# Represent by n-rows (nrow) and n-columns (ncol)
# Row wise order/format by using "byrow = TRUE". [By default it represent col wise.]
matrix1 <- matrix(c(10, 20, 30, 40), nrow <- 3, ncol <- 2, byrow = TRUE)
print(matrix1)

