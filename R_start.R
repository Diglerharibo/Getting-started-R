#Objects classes:
#1. numeric (1 + 1)
#2. logical (TRUE/FALSE)
#3. character ("Hello_R")

#Vectors
vector1 = c(1, 2, 3, 4, 5)
vector1

#vector = scan()
#allows you to enter Vector data manually
#disadvantage - you can't edit it
vector2 = seq(1,7) #sequence from 1 to 7
vector2 = 1:7 #same result
vector2 = seq(from=1, to=7, by=1) #one more argument
vector3 = rep("bio", 5) #repeat
vector4 = c(1, 2, 3, 4, 5) #concatenation or simply--
#--combine vector values
vector5 = c(vector1, vector2, vector3)
vector5

#vector1[3] calling certain element by index
sort(vecor1, decreasing = TRUE) #sorting:)
vector1

#Matrices
#matrix(data = NA, nrow=x, ncol=y)
#rownames/colnames(matrix) = c("A", "B", etc.)
#building custom matrices by cbind/rbind(vector1, vector2, etc.)
#calling by matix[row, collumn]
#t(matrix) - transposition

#Factors
#converting a limited number of vector values into--
#--significance levels to create defining classes
treatment = c(1, 1, 1, 1, 1, 0, 0, 0, 0)
treatment = factor(treatment, levels=c(0, 1))
#it is separate class of objects and information--
#--inside factors treated like levels, not as--
#--numeric, logical or character
levels(treatment) = c("no", "yes")
#more concise version
factor1 = g1(2, 3, labels=c("Control", "Treatment"))
factor1

#Lists
x = seq(1, 3, 0.5)
y = c("A", "B", "C")
z = c(FALSE, TRUE)

t = list(Text=y, Number=x, Logic=z)
t
t$Text #calling lists components through dollar
t$Text[2:3] #[1] "B", "C" (answer)
#also we can use square brackets and double -ll- --
#-- for calling our list-vector-element
t[[1]][2:3] #We will obtain same result as previous string
#special function for lists structure understanding
str(t)
#answer
#List of 3
#$ Text  : chr [1:3] "A" "B" "C"
#$ Number: num [1:5] 1 1.5 2 2.5 3
#$ Logic : logi [1:2] FALSE TRUE

#Data frame
city = c("City1", "City1", "City2", "City2", "City3", "City3")
sex = c("Male", "Female", "Male", "Female", "Male", "Female")
number = c(12450, 10345, 5670, 5800, 25129, 26000)
#made 3 vectors, now we can combine them
CITY = data.frame(City=city, Sex=sex, Number=number)
CITY
#answer
#City    Sex Number
#1 City1   Male  12450
#2 City1 Female  10345
#3 City2   Male   5670
#4 City2 Female   5800
#5 City3   Male  25129
#6 City3 Female  26000
#function fix(frame) allows to edit some data in exel like panel
#missing values sign as NA (not available)
#To change all NA values to zero: frame[is.na(frame)] <- 0
#for example we want to unite two different data frames --
#-- so we have to make their format similar
DF1[,names(DF2)[!(names(DF2) %in% names(DF1))]] <- NA
DF2[,names(DF1)[!(names(DF1) %in% names(DF2))]] <- NA
rbind(DF1,DF2) #DF are names of frames
#by these strings we offer same sizes for both frames