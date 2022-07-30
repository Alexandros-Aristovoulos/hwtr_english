### Getting started
1. Install the dependencies from the [Dependencies section](#dependencies)

2. Get the IAM Handwriting Database

    - In order to download the dataset from IAM you first have to [register to their website](https://fki.tic.heia-fr.ch/register)

    - Go to [Download the IAM Handwriting Database](https://fki.tic.heia-fr.ch/databases/download-the-iam-handwriting-database) and download the files:
        - `data/words.tgz` (this contains the images of the words)
        - `data/ascii.tgz` (this contains the labels and other usefull information) <br><br>
    
        (If you are not logged it will first ask you log in before allowing the files to download). 

    - After you have downloaded everything unzip the contents of `words.tgz\words.tar\` to a `words` folder and extract the `words.txt` from `ascii.tgz\ascii.tar\`
    - Put the aforementioned folder and txt file inside the `Dataset` folder that already exists in this project

### Use guide and folder structure
1. Create your Dataset
    - Start by creating your dataset inside `create_hwtr_datasets.ipynb`
    - if you want to **create your own dataset** start by changing some variable values and run all the cells from the start
    - if you want to **use the exact same dataset as me** then you need to run:
        - the first 2 cells to import all that is needed
        - Continue by running cell 12 ( # read the data (Start from here if you want to have the same dataset as me) )
        - run the rest of the cells after this cell 

2. Iteration folders
    - Every `iteration` is trying to determine a strategy that will improve the validation accuracy of the hwtr model
    - Inside the `iterations` folders are the folders `models` and `logs`. These folders contain the models that I trained and the logs of the training procedure to be viewed by TensorBoard.
    - Inside the `.ipynb` is the code that produced these models. Before the cell with the excecutable code there is a cell with markdown braking down the results.

3. labels_and_paths folder
    - This folder contains the image paths and labels the way I split them into training, validation and test.
    - These are used to create the final dataset structures (which are too big to upload to github) that will be placed in the `my_dataset` folder
    - If you choose to run the entirety of `create_hwtr_datasets.ipynb` the paths and labels will be replaced by your own.

4. my_dataset folder
    - This is the folder that stores the datasets that the models will use.
    - The datasets are too big to upload to github so they need to be created by the user as described earlier

### Dependencies
- [Tensorflow](https://www.tensorflow.org/install/pip) <br>
Create and train the neural network

- [Numpy](https://numpy.org/install/) <br>
Perform calculations with arrays, load and read arrays from .npy files

- [OpenCV](https://pypi.org/project/opencv-python/) <br>
Display images and read their pixel values as arrays 

- [Matplotlib](https://pypi.org/project/matplotlib/) <br>
Display images