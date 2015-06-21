## Information in english
## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each 
##    measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each 
##    variable for each activity and each subject.
## Informações em português
## Criar um roteiro R chamado run_analysis.R que faz o seguinte:
## 1. Mescla o treinamento e teste de conjuntos para criar um conjunto de dados.
## 2. Extractos apenas as medições na média e desvio padrão para cada medição.
## 3. Usa nomes descritivos de actividade para citar as atividades no conjunto 
##    de dados
## 4. Apropriadamente rotula o conjunto de dados com nomes de atividade 
##    descritivos.
## 5. Cria estabelecidos com a média de cada variável para cada atividade e cada 
##    sujeito um segundo dados arrumado, independentes.

if (!require("data.table")) {
    install.packages("data.table")
}

if (!require("reshape2")) {
    install.packages("reshape2")
}

require("data.table")
require("reshape2")

setwd("E:/Aulas/Data Science/Módulo 3 - Obtenção e Limpeza de Dados/Trabalho Final")

# Load: activity labels
# Carga: tabela de atividade
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Load: data column names
# Carga: nomes das colunas de dados
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

# Extract only the measurements on the mean and standard deviation for each 
# measurement.
# Extre apenas as medições sobre a média e o desvio padrão para cada medição.
extract_features <- grepl("mean|std", features)

# Load and process X_test & y_test data.
# Carrega e processa os dados dos arquivos X_test & y_test.
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

names(X_test) = features

# Extract only the measurements on the mean and standard deviation for each 
# measurement.
# Extre apenas as medições da média e do desvio padrão de cada medição.
X_test = X_test[,extract_features]

# Load activity labels
# Carrega os registros de atividades
y_test[,2] = activity_labels[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Label")
names(subject_test) = "subject"

# Bind data
# Data Bind
test_data <- cbind(as.data.table(subject_test), y_test, X_test)

# Load and process X_train & y_train data.
# Carrega e processa os dados dos arquivos X_train & y_train.
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

names(X_train) = features

# Extract only the measurements on the mean and standard deviation for each 
# measurement.
# Extre apenas os valores da média e do desvio padrão de cada medição.
X_train = X_train[,extract_features]

# Load activity data
# Carrega os dados das atividades de carga
y_train[,2] = activity_labels[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"

# Bind data
# Dados Bind
train_data <- cbind(as.data.table(subject_train), y_train, X_train)

# Merge test and train data
# Une os  dados de teste e de treinamento
data = rbind(test_data, train_data)

id_labels   = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(data), id_labels)
melt_data      = melt(data, id = id_labels, measure.vars = data_labels)

# Apply mean function to dataset using dcast function
# Aplica a função média no conjunto de dados usando a função dcast
tidy_data   = dcast(melt_data, subject + Activity_Label ~ variable, mean)

# Saves the output file tidy_data.txt
# Grava o arquivo de saída tidy_data.txt
write.table(tidy_data, file = "./tidy_data.txt")
