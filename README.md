# Auto-assmebly-flowchart-3000
A python script that reads assembly code files (and linked files) and generates a HTMl file which presents a flowchart of the code layout, each function and all the code.

# About & Features





- Python script
- Uses a dictionary based approach to find and recognises different instructions, which helps the code diffieniate what different lines and functions are supposed to achieve - See (instruction_categories.py)[https://github.com/Jamster3000/Auto-assembly-flowchart-3000/blob/main/instruction_categories.py]. This is put in another file to keep the code less cluttered.
- Using the pyvis.network library to generate and create the actual flowchart using nodes.
- The script applies different colours depending on what they do (e.g., Data Operations, control flow, etc.)
- There is a search feature allowing the user to search by label, purpose, file, and a general search.
- there is a legend of what all the different colour nodes mean and what the different connection types mean (including a hover over tooltip of what eahc legend means)
- Reads comments to help provide a description to each node, explaining what they do {GO INTO DETAIL HERE} (print_newline: ;Outputs a newline)

# Screenshots
## Full Example
![image](https://github.com/user-attachments/assets/f00aee56-56eb-4539-a500-3dd1d3991ed2)

## Closer Up Example
![image](https://github.com/user-attachments/assets/2de919f5-51a5-4bc1-a9fa-2569d5933df4)

## Node Example
![image](https://github.com/user-attachments/assets/60323bfa-f432-4817-a1ef-a4b4e0f3d6a8)
In this image, the tooltip shows all the information and insight needed for that one specific node.
- `Label`: "look_castle" 
- `Node Type`: "Control Flow"
- `File`: "test.asm"
- `section`: ".text"
- `Description`: "Outputs the castle description"
- `Purpose`: "Unconditional Jump"
- `Code`: "Presents the code under the `look_castle`"

# Installation
To use this python 

# usage

# Contribution

# License

![GitHub issues](https://img.shields.io/github/issues/Jamster3000/Auto-assembly-flowchart-3000)
![Last Commit](https://img.shields.io/github/last-commit/Jamster3000/Auto-assembly-flowchart-3000)
![GitHub Stars](https://img.shields.io/github/stars/Jamster3000/Auto-assembly-flowchart-3000)
