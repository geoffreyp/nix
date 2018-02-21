import os
query_string = os.environ["QUERY_STRING"]

print("Content-type:text/html")
print("")
print("<!DOCTYPE html>")
print("<html>")
print("")
print("<h1>Hello world</h1>")
print("<a href='/'>back to index.html</a>")
print("")
print("")
print("</html>")
