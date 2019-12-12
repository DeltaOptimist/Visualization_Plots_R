# histogram in R using mtcars data set

hist(mtcars$mpg)
# mtcars is the name of the dataset and mpg is the attribute
# $ is used for letting you know that mpg is present in mtcars.
# hist is the command for histogram (no of bars in the histogram can be controlled & bars can be coloured)


hist(mtcars$mpg, breaks=5, col="red")

_________________________________________________________
# simple bar plot from the dataset mtcars on the attributes
# gears.count is the variable name having that contains numerical values in the table
#barplot is the function for barplot


counts <- table(mtcars$gear)
print(counts)
barplot(counts, main= "Car Distribution", xlab= "Number of Gears")

__________________________________________________________________
# Simple Horzontal Bar plot with Added Labels 


Counts <- table(mtcars$gear)
barplot(Counts, main = "Car Distribution", horiz = TRUE, names.arg = c("3 Gears",'4 Gears','5 Gears'))
__________________________________________________________________
# Stacked  bar plot with colors & legend on mtcars dataset
# here gear and VS attributes are used

counts <- table(mtcars$vs, mtcars$gear)
print(counts)
barplot(counts,main = "Car Distribuution by gears & VS", xlab = "Number of Gear", col= c("yellow","red"), legend = rownames(counts))


_____________________________________________________________________


# Grouped Bar Plot from mtcars dataset

counts <- table(mtcars$vs, mtcars$gear)
barplot(counts,main = "Car Distribution by Gears and VS",xlab = "Number of gears", col = c("darkblue","red"), legend= rownames(counts),beside = TRUE)
print(mtcars)

___________________________________________________________________________
# simple Pie Chart

l <-c(20,20,30,30)

# pie has the values for the sizes
label <-c("India","US","Dubai","France")

# pie is the command for the pie chart
pie(l, labels = label,main = "Pie Chart of Countries")

__________________________________________________________________________

# pie Chart with Percentage
l <- c(20,20,30,30)
label <-c("India","US","Dubai","France")
percntg <-round(l/sum(l)*100)

# add percentage to labels
label <- paste(label, percntg)


# add % to labels
label <- paste(label,"%", sep = "")

pie(l, labels = label,main = "Pie Chart of Countries with percentage", col = rainbow(length(label)))
______________________________________________________________________________


# Box Plot
# Box plot of MPG by Car Cylinders 
boxplot(mpg~cyl, data = mtcars, main = "Car Mileage Data", xlab = "Number of cylinders", ylab = "Miles Per Gallons")
_______________________________________________________________________________


# Scatter Plot from natcars dataset
attach(mtcars)

plot(wt, mpg, main = "Scatter Plot Example", ylab = "Miles per gallons",xlab= "Car weight", pch = 19)



