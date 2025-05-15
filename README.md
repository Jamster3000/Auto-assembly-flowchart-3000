# Auto-assmebly-flowchart-3000
A python script that reads assembly code files (and linked files) and generates a HTMl file which presents a flowchart of the code layout, each function and all the code. I created this project because I was working on an assmebly script and wanted flowcharts to see the code in a different perspective. I manually created a flowchart but constantly making changes to the assmebly and having to update the flowchart each time was time taking, even more so than writing assmebly code.

# About & Features
This is a python script I created which first reads all assmebly files in the given directory, processes all the instructions, functions and comments then creates nodes for each one - giving each one different colours depending on what they specifically do and using any given comments (to functions and alike) to provide each node with a description. 

> I have only tested with `.asm` files though the following are logically supported in the script:
> - .asm
> - .s
> - .nasm
> - .inc
> - .mac
> - .z80
> - .x86
> - .gas
>
> Again though, I have only fully tested with .asm.

---

To recognise the instructions/finds the instructions, it uses a basic python dictionary, which helps the code diffieniate what different lines and functions are supposed to achieve - See (instruction_categories.py)[https://github.com/Jamster3000/Auto-assembly-flowchart-3000/blob/main/instruction_categories.py]. This is put in another file to keep the code less cluttered. 

The code uses pyvis.Network to interact with the actual JavaScript vis network library - this is what is creating the actual flowcharts, using nodes. The code also provides each node a colour depending on what they do (e.g., Data operations, Control Flow, etc.). The colours are explained in a fixed legend and a tooltip to explain what each legend means.

There is a basic search filter that can search for different labels, purposes, files or just make a general search for any/all of them. The search comes up with results to what you searched and clicking on a result gracefully takes you to that node.

---

## Comments
The code uses comments to explain what each function/section does. For this to work, the comment has to be on the same line as the name of the function/name.
For example
```assembly
print_newline: ; Outputs a newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80
    ret
```
Putting the comment above or below that line will not appear in the node. The script won't include a comment/description in a node if there is no given comment for a function/section.

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
To use this python script, install the following library
`pip install pyvis`
Other libraries used are standard with python installation.

# usage
Ensure there is an assmebly ready file in the same directory as the python script or any other directionary. Ensure that you have installed the pyvis library.
1. Open a terminal.
2. Run `python auto_flowchart_3000.py [path to directory here]

# Contribution
Open to accepting **pull requests** (where useful and applicable) and will try to solve any issues raised. I developed this for myself in mind so there may be bugs on other systems or some ways of improvement for other people.

# License
Distributed under the Apche-2.0 License. See LICENSE for more information.

![GitHub issues](https://img.shields.io/github/issues/Jamster3000/Auto-assembly-flowchart-3000)
![Last Commit](https://img.shields.io/github/last-commit/Jamster3000/Auto-assembly-flowchart-3000)
![GitHub Stars](https://img.shields.io/github/stars/Jamster3000/Auto-assembly-flowchart-3000)
