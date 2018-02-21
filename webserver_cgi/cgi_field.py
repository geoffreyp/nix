import cgi

form = cgi.FieldStorage()

print("Content-type:text/html")
print("")
print("<!DOCTYPE html>")
print("<html>")
print("<h1>Cgi field</h1>")
print("<p>"+form.getvalue("name")+" is "+form.getvalue("age")+" years old</p>")
print("<a href='/'>back to index.html</a>")
print("")
print("")
print("</html>")
