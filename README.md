# GoogleAI: Gemini LLM API Implementation
Python API link to Google AI LLM

This repo contains a simple implementations of the GoogleAI API for using Gemini LLMs.

## Installation Instructions

### Prerequisites
- [Python 3.x and Pip](https://www.python.org/) Python package manager installed
- [Git](https://git-scm.com/) distributed version control system installed

### Installation Steps

1. Clone this repository:

    `git clone https://github.com/colinmccrae/GoogleAI/`

2. Navigate to the project directory:

    `cd GoogleAI`

3. Run the installation script: `install.bat`. If you do this you can move straight to Step 8. If you don't want to run this batch file, you can alternatively manually swtich to a virtual environment and install the dependencies as per Steps 4-7.

4. Create a virtual environment:

    `python -m venv venv`

5. Activate the virtual environment:

    `venv\Scripts\activate`

6. Install dependencies from requirements.txt

    `pip install -r requirements.txt -U`

7. Create a new file called '.env'.

8. Edit the `.env` file to add your API keys. Enter your [GoogleAI](https://aistudio.google.com/app/apikey) API key into the .env file, as per example text shown below.

```
# GoogleAI API Key
GEMINI_API_KEY = "your_googleai_api_key"
```

9. Execute any of the Python scripts. For example: `python main.py`

Note: These will require API access to run and it may cost you money.


## LLMs with Google

For more information about Google AI Studio, see [here](https://ai.google.dev/gemini-api/docs/ai-studio-quickstart).


## Projects in this Repo

Below are the projects I'm currently working on in this repo.

### 1. main.py

A simple implemention of Google's Gemma 1.5 Pro model (gemini-1.5-pro-exp-0801).