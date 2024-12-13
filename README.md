# Athenry Weather Data Download Workflow and Analysis

This repository contains resources for automating the daily retrieval of weather data for Athenry and provides a Jupyter notebook that documents the learning journey of creating and analysing this data. It has been created as part of my studies in Computer Science and Data Analytics at the Atlantic Technical University, Ireland.  

## Repository Structure

- **`.github/workflows`**: Contains a GitHub Actions workflow that:
  - Downloads daily weather data for Athenry at 10am every day as directed by `weather-data.yml` and `weather.sh`.
  - Saves the data to the `data/weather` directory in the repository, each file is timestamped to show the day of download.

- **`data/weather`**: Directory where the downloaded weather data files are stored.

- **`weather.ipynb`(https://github.com/kknb1982/computer_infrastructure/blob/main/weather.ipynb)**: A Jupyter notebook documenting:
    - How to create a repository using the command line.
    - Techniques for formatting timestamps.
    - Using `wget` to download a file.
    - Writing a Bash script to download data.
    - Using `pandas` to analyse the downloaded data.
It can be opened in Visual Studio Code or GitHub Codespaces.

## Getting Started

Follow the instructions below to explore the repository and run the Jupyter notebook.

### Prerequisites

- [Git](https://git-scm.com/)
- [Python](https://www.python.org/) (Recommended: Python 3.9+)
- [Anaconda](https://www.anaconda.com/) (for running the notebook locally) or access to [GitHub Codespaces](https://github.com/features/codespaces).

---

### Running the Notebook Locally

1. **Clone the Repository**  
   Open a terminal and run:
   ```
   git clone https://github.com/kknb1982/computer_infrastructure.git
   cd computer_infrastructure
   ```

2. **Set Up the Environment**
Create and activate a virtual environment using Anaconda:
```conda create --name weather_analysis python=3.9
conda activate weather_analysis
pip install -r requirements.txt
```

3. **Launch Jupyter Notebook**
Open the notebook using Visual Studio Code:
- Open Visual Studio Code and navigate to the cloned repository.
- Install the "Python" and "Jupyter" extensions if prompted.
- Launch the notebook by opening ``weather.ipynb` and running the cells.

Or run from the command line with:
```jupyter notebook```
Then navigate to `weather.ipynb`.

### Running the notebook in GitHub Codespaces
1. Open the Repository in Codespaces
- Navigate to the repository on GitHub.
- Click the Code button and select Codespaces.
- Launch a new Codespace or open an existing one.

2. Install Dependencies
In the Codespaces terminal, run:
```pip install -r requirements.txt```

3. Open the notebook
- Locate and open `weather.ipynb`.
- Execute the cells to explore the analysis and learning materials.

## Workflow details
The GitHub Actions workflow automatically runs at 10am every day to:
- Download the weather data for Athenry from Met Eirann's API. 
- Saves the data in a timestamped file in `data/weather`
This ensures the repository always has the latest data log available.

The scripting to download the data is in two parts:
1. **`weather_data.yml`** codes the scheduling of the activity, running the data collection script and uploading the information to the repository.
2. **`weather.sh`** codes the data fetching and saving.

![Image of a chart showing the change in windspped readings at Athenry on 8 November 2024](https://atlantictu-my.sharepoint.com/:i:/r/personal/g00425638_atu_ie/Documents/Computer_infrastructure/chart_image.png?csf=1&web=1&e=R2wnKW)