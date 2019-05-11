with open('ColorPages.txt') as f:
    log=f.read().splitlines()

j=0

for log_line in log:
    j=j+1
    log_line_data=log_line.split(' ')
    if(log_line_data[1]!=log_line_data[3] or log_line_data[3]!=log_line_data[5]):
        print("color page : {}".format(j))