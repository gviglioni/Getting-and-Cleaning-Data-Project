## CodeBook
This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

### The data source

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### The data

The dataset includes the following files:

* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

### Transformation details

There are 5 parts:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### How run_analysis.R implements the above steps:

* Require reshapre2 and data.table librareis.
* Load both test and train data
* Load the features and activity labels.
* Extract the mean and standard deviation column names and data.
* Process the data. There are two parts processing test and train data respectively.
* Merge data set.
* Saves the output file tidy_data.txt.

### Resumo (Versão em português)
Este é um livro de código que descreve as variáveis, os dados, e quaisquer transformações ou de trabalho que você executou para limpar os dados.

### A fonte de dados

* Dados Original: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Descrição original do conjunto de dados: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Conjunto de Dados de Informação

As experiências foram efectuadas com um grupo de 30 voluntários dentro de uma faixa etária dos 19-48 anos. Cada pessoa realizada seis atividades (caminhada, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, sentado, em pé, deitado) usando um smartphone (Samsung Galaxy S II) na cintura. Usando seu acelerômetro embutido e giroscópio, nós capturamos aceleração linear 3-axial e velocidade angular 3-axial a uma taxa constante de 50Hz. Os experimentos foram para rotular os dados manualmente gravadas em vídeo. O conjunto de dados obtidos foi particionado aleatoriamente em dois grupos, em que 70% dos voluntários foi seleccionado para gerar os dados de treino e 30% dos dados de teste.

Os sinais dos sensores (acelerômetros e giroscópios) foram pré-processados ??através da aplicação de filtros de ruído e, em seguida, amostrado em janelas de largura fixa de 2,56 seg e 50% de sobreposição (128 leituras / janela) deslizante. O sinal do sensor de aceleração, que tem componentes gravitacionais e movimento do corpo, foi separada através de um filtro passa-baixo em Butterworth aceleração do corpo e da gravidade. A força gravitacional é assumido ter apenas componentes de baixa frequência, portanto, foi utilizado um filtro com freqüência de corte de 0,3 Hz. A partir de cada janela, um vector de características foi obtido por cálculo de variáveis ??de domínio do tempo e frequência.

### Os dados

O conjunto de dados inclui os seguintes arquivos:

* 'README.txt'
* 'Features_info.txt': Mostra informações sobre as variáveis ??utilizadas no vector recurso.
* 'Features.txt': Lista de todos os recursos.
* 'Activity_labels.txt': Ligações os rótulos de classe com o seu nome da atividade.
* 'Trem / X_train.txt': conjunto de treinamento.
* 'Trem / y_train.txt': Treinando etiquetas.
* 'Test / X_test.txt': Test set.
* 'Test / y_test.txt': etiquetas de teste.

Os seguintes arquivos estão disponíveis para os dados de treinamento e teste. Suas descrições são equivalentes.

* 'Trem / subject_train.txt': Cada linha identifica o sujeito que realizou a atividade para cada amostra janela. Seu alcance é de 1 a 30.
* 'Trem / Sinais de inércia / total_acc_x_train.txt': O sinal de aceleração do acelerômetro do smartphone eixo X em 'g' unidades de gravidade padrão. Cada linha mostra um vetor de 128 elemento. A mesma descrição se aplica para o 'total_acc_x_train.txt' e 'arquivos total_acc_z_train.txt' para o eixo Y e Z.
* 'Trem / Sinais de inércia / body_acc_x_train.txt': O sinal de aceleração corpo obtido subtraindo-se a gravidade da aceleração total.
* 'Trem / Sinais de inércia / body_gyro_x_train.txt': O vetor velocidade angular medido pelo giroscópio para cada amostra janela. As unidades são radianos / segundo.

### Transformação detalhes

Há 5 partes:

* Mescla os arquvios de treinamento e teste para criar um novo conjunto de dados.
* Extrai apenas as medições sobre a média e o desvio padrão de cada medição.
* Use nomes descritivos de atividades para citar as atividades no conjunto de dados.
* Coloque nomes apropriados nas colunas das atividades descritas.
* Crie um segundo e independente arquivo com os dados da média de cada variável para cada atividade e cada sujeito um segundo dados arrumado.

### Como run_analysis.R implementa os passos anteriores:

* Exige as bibliotecas reshapre2 e data.table que são carregadas automaticamente.
* Carrega tanto os arquivos de teste e treinmento.
* Coloque as características e etiquetas de atividade.
* Extrai a média e desvio padrão de todas as colunas.
* Processa os dados. Há duas peças de transformação dos dados de teste e treinamento, respectivamente.
* Mesclar conjunto de dados.
* Salva o tidy_data.txt arquivo de saída.
