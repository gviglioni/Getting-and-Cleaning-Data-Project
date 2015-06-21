## Getting and Cleaning Data
### Course Project

You should create one R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Steps to work on this course project

* Download the data source and put into a folder on your local drive. You'll have a UCI HAR Dataset folder.
* Put run_analysis.R in the parent folder of UCI HAR Dataset, then set it as your working directory using setwd() function in RStudio.
* Run source("run_analysis.R"), then it will generate a new file tiny_data.txt in your working directory.

### Dependencies

run_analysis.R file will help you to install the dependencies automatically. It depends on reshape2 and data.table.

### Projeto de Curso (Em português)

Você deve criar um roteiro chamado R run_analysis.R que faz o seguinte.

* Mescla os arquvios de treinamento e teste para criar um novo conjunto de dados.
* Extrai apenas as medições sobre a média e o desvio padrão de cada medição.
* Use nomes descritivos de atividades para citar as atividades no conjunto de dados.
* Coloque nomes apropriados nas colunas das atividades descritas.
* Crie um segundo e independente arquivo com os dados da média de cada variável para cada atividade e cada sujeito um segundo dados arrumado.

### Passos para trabalhar neste projeto

* Faça o download do arquvio de fonte de dados e colocar em uma pasta em seu disco local. Você terá que criar uma pasta chamada UCI HAR Dataset.
* Coloque run_analysis.R na pasta pai da UCI HAR Dataset, em seguida, defina-o como seu diretório de trabalho usando a função setwd () in rstudio.
* Executte o arquivo ("run_analysis.R"), que gerará um arquivo chamado tiny_data.txt no seu diretório de trabalho.

### Dependências

A execução do arquivo run_analysis.R instalará as dependências automaticamente, que são: reshape2 e data.table.
