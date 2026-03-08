########################################################################
#                 MUHAMMAD DAWOOD KHAN                                 #
########################################################################
# Course      :   Advanced Statistics                                  #
########################################################################
# SAP ID      :         68024                                          # 
########################################################################
# LAB TASK    :           1                                            #
########################################################################
#                                                                      #
# Github  : https://github.com/Dawood-ML/Advanced_Statistics.git       #
#                                                                      #
########################################################################
#                                                                      #
# LinkedIN : https://www.linkedin.com/in/muhammad-dawood-khan-5a3292329/
#                                                                      #
########################################################################

gpa_data <-  read.table(file='https://advstats.psychstat.org/data/gpa.txt', header=TRUE, na.string="999", comment.char = "#")
gpa_data

# EXAMPLE 1.1 Perform Basic operations in R 
# R can be first used as an advanced calculator. Develop code showing the use of addition (+), subtraction (-), multiplication (*), 
#                                                                                division (/), logarithm (ln), exponential (exp).

only_numeric <- data.frame(gpa_data$id,
                           gpa_data$gpa,
                           gpa_data$weight)
only_numeric

# NOw OPerations like addition, subtraction, multiplication, division, logarithm and exponential can be done


# Addition
only_numeric + 5

# Subtraction
only_numeric - 5

# Multiplication
only_numeric * 100

# Division
only_numeric / 5

# Logarithm
log(only_numeric)

# Exponential
exp(only_numeric)



# Example 1-3. Creation and Operation on a vector 

# A vector can be created using the c() function, which combines its arguments or input to form a vector.  

# a) Illustrate data in example dataset as vector: As for the simple operations, names can be used for vectors. By typing its name, 
#    the content of a vector should be printed. 

# b) Present the subsets of vector considered: Since there should be multiple elements in a vector, the elements can be taken 
#    using their index. The index of an element is its position in the vector. Take out the first value and the last value. Note that 
#    the index is put into a set of brackets “[ ]”. Also provide a vector of indexes as a vector to take out multiple elements.  

# c) Vector operations: Operate a vector like a scalar in R. Demonstrate any three operations for a scalar (shall operate on all 
#    elements in a vector). The outcome is called a logical vector that includes values FALSE or TRUE. 
#
# d) Basic statistical function operating on vectors: Since a vector is a collection of values, apply some statistical functions to the 
#    example data. For example, find the sample size (the number of elements) of a vector, adds all the values in the vector 
#    together. Also find the minimum, maximum, median, standard deviation, variance etc.



# a 
gpa_data_as_vector <- c(gpa_data)
gpa_data_as_vector

#b 
gpa_data_as_vector_first_element <- gpa_data_as_vector['id']
gpa_data_as_vector_first_element


gpa_data_as_vector_last_element <- gpa_data_as_vector['weight']
gpa_data_as_vector_last_element


# c
weight_greater_than_80 <- gpa_data_as_vector$weight > 80
weight_greater_than_80

weight_less_than_150 <- gpa_data_as_vector$weight > 150
weight_less_than_150

gende_only_male <- gpa_data_as_vector$gender == 'm'
gende_only_male


# d
# length
length(gpa_data_as_vector)

# add all
sum(gpa_data_as_vector$id, gpa_data_as_vector$weight)

# summary stats
summary(gpa_data)

# standard deviation
sd(gpa_data$weight)

# Variance
var(gpa_data$weight)



# Example 1-4. Array and Matrix 

# R saves a table of data in an array or a matrix. We usually deal with two-dimensional matrix but higher-dimensional matrix can also 
# be used in R.

# a) Create an array/matrix: Use functions array() and matrix() to create a matrix,. Show how to create a 4 by 5 matrix. Use the 
#    sequence of values to create the matrix. Tell the number of rows and columns in the matrix. Also change the positions of the 
#    values in the matrix by changing the input values. Show the difference in the creation of matrix. Illustrate how we can control 
#    filling the values in a matrix for example, if the values will be filled by rows instead of by columns. Explain why to use the 
#    function, one needs to tell either the number of rows using nrow or the number of columns using ncol. 

# b) Operating an array or matrix: Take out a subset of values in a matrix on your example data. x[i,j] takes out values according 
#    to the index i for the rows and j for the columns. Demonstrate what happen when i is replaced by blank, and when j is 
#    replaced by blank. Note that when a vector of values are taken out, by default, the sub-matrix will be converted to a vector 
#    and lose the matrix property. So, illustrate how to keep the matrix property. 


# a)
# Create from array function
set.seed((42))
array_method <- array(
  data = round(runif(20, min = 0, max = 4), 2), 
  dim = c(4, 5)
)
array_method
# Create a 4x5 matrix with random values between 0 and 4
gpa_matrix <- round(matrix(runif(20, min = 0, max = 4), nrow = 4, ncol = 5), 2)
gpa_matrix

row_matrix <- round(matrix(runif(20, min = 0, max = 4), nrow = 4, ncol = 5, byrow = TRUE), 2)
row_matrix

# Take out a single value
gpa_matrix[1,1]

# i replaced by blank
gpa_matrix[,1]

# j replaced by blank
gpa_matrix[1,]

# keep matrix property
gpa_matrix[2, , drop=FALSE]

# Example 1-6. List 

# A list is a collection of multiple objects which can be a scalar, a vector, a matrix, etc. Each object in a list can have its own name. 

# a) Create a list: Create a list in your example data. 

# b) Access the object of a list: Present at least two ways to access the objects in a list. 

# a
gpa_list <- list(
  gpa_data
)
gpa_list

# b
gpa_list$weight

# c
gpa_list[['gender']]


#Example 1-7. Data Frame 

#A data frame is a special list in which every object has the same size. 

# a) Create a data frame: Create a data frame in your example data. The data read from a file into R are often saved into a data 
#   frame. 

# b) Access the components of a data frame: Can we use the same methods for access the objects in a list can be used for a data 
#    frame? If so, illustrate it for your example data. Illustrate how can we conveniently copy all objects in a data frame into R 
#    workspace so that they can be accessed using their names directly. Also demonstrate how we can remove those objects.

# Create data frame
y <-data.frame(a=1:4,b=5:8,d=9:12)
y

gpa_data

# b
gpa_data$gpa


# Attach 
attach(gpa_data)

gpa

detach(gpa_data)