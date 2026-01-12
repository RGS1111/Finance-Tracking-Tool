from dotenv import load_dotenv
import os
from google import genai 

load_dotenv()
#The API key is stored as a .env file, which is hidden in finder files but seen in VSCode
#dotenv is used to be able to open and access .env files which are kept seperate so git uploads don't include them
#os module is used so that the .env file can be found and used
#API key can be acessed on Google AI Studio
client = genai.Client(api_key=os.getenv("GEMINI_API_KEY"))
def looping_txt(ai_input):
    ask_ai = ai_input
    ai_response = client.models.generate_content(
        model="gemini-2.5-flash", contents=ask_ai)
    print(ai_response.text)

    
print("Enter "  " to exit (aka spacebar)")
while True: 
    ai_input = input(str("> "))
    if ai_input == " ":
        break
    looping_txt(ai_input)

#Program currently fails when run without initiating the venv and automatically registers input as ' '
#Too fix above problem, a .sh file has been created in order to run the .venv first and then the python script
