import os
query_string = os.environ["QUERY_STRING"]

print("Content-type:text/html")
print("")
print("<!DOCTYPE html>")
print("<html>")
print("<p>")
  
with open("assets/captain.txt", "r") as ins:
    for line in ins:
        print(line)
        print("<br>")

print("</p>")
print("<a href='/'>back to index.html</a>")
print("")
print("")
print("</html>")
