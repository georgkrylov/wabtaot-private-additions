string = ""
for i in range(0,20):
    string = string + "{(void*)pc["+str(i*4)+"]} {(void*)pc["+str(i*4+1)+"]} {(void*)pc["+str(i*4+2)+"]}"+" {(void*)pc["+str(i*4+3)+"]}\n"
print(string)
