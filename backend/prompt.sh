#!/bin/bash
rm test.txt
rm final.txt
ollama run llama2 "Get all information about techinical System Requirements from this text: $(cat extracted_text.txt)" >> test.txt
ollama run llama2 "Considering the requirements: $(cat test.txt). Create a JSON following rules: $(cat template.md) and return just the json with this structure (not other text): $(cat structure.json)" >> final.txt