import cgi
import utils
form = cgi.FieldStorage()
size = form.getvalue("size")

print("Content-type:text/html")
print("")
print("<!DOCTYPE html>")
print("<html>")

print("<a href='/'>back to index.html</a>")
print("")
print("")
print("</html>")
