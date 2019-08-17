df=read.csv("wholesale.csv", header = TRUE)

#PREPROCESSING DATA#

#memeriksa missing value
sum(is.na(df))

#memeriksa outlier
boxplot(df)

#outlier treatment Fresh
boxplot(df$Fresh)$out
outlierFresh <- boxplot(df$Fresh, plot = FALSE)$out
print(outlierFresh)
df[which(df$Fresh %in% outlierFresh),]
df <- df[-which(df$Fresh %in% outlierFresh),]
boxplot(df$Fresh)$out

#outlier treatment Milk
boxplot(df$Milk)$out
outlierMilk <- boxplot(df$Milk, plot = FALSE)$out
print(outlierMilk)
df[which(df$Milk %in% outlierMilk),]
df <- df[-which(df$Milk %in% outlierMilk),]
boxplot(df$Milk)$out

#outlier treatment Grocery
boxplot(df$Grocery)$out
outlierGrocery <- boxplot(df$Grocery, plot = FALSE)$out
print(outlierGrocery)
df[which(df$Grocery %in% outlierGrocery),]
df <- df[-which(df$Grocery %in% outlierGrocery),]
boxplot(df$Grocery)$out

#outlier treatment Frozen
boxplot(df$Frozen)$out
outlierFrozen <- boxplot(df$Frozen, plot = FALSE)$out
print(outlierFrozen)
df[which(df$Frozen %in% outlierFrozen),]
df <- df[-which(df$Frozen %in% outlierFrozen),]
boxplot(df$Frozen)$out

#outlier treatment Detergents_Paper
boxplot(df$Detergents_Paper)$out
outlierDetergents_Paper <- boxplot(df$Detergents_Paper, plot = FALSE)$out
print(outlierDetergents_Paper)
df[which(df$Detergents_Paper %in% outlierDetergents_Paper),]
df <- df[-which(df$Detergents_Paper %in% outlierDetergents_Paper),]
boxplot(df$Detergents_Paper)$out

#outlier treatment Delicassen
boxplot(df$Delicassen)$out
outlierDelicassen <- boxplot(df$Delicassen, plot = FALSE)$out
print(outlierDelicassen)
df[which(df$Delicassen %in% outlierDelicassen),]
df <- df[-which(df$Delicassen %in% outlierDelicassen),]
boxplot(df$Delicassen)$out

#memeriksa duplikasi data
duplicated(df)
which(duplicated(df))

write.csv(df, file="hasilpreprocess.csv", row.names=FALSE)

