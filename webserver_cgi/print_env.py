import os
query_string = os.environ["QUERY_STRING"]

print("Content-type:text/html")
print("")
print("<!DOCTYPE html>")
print("<html>")
print("")

for name, value in os.environ.items():
	print("%s\t= %s <br/>" % (name, value))

print("<a href='/'>back to index.html</a>")
print("")
print("")
print("</html>")
