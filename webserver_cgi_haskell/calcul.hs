import Network.CGI

main :: IO ()
main = runCGI $ handleErrors cgiMain

cgiMain :: CGI CGIResult
cgiMain = do
  email <- getInput "email"
  output $ renderPage email

renderPage :: Maybe String -> String
renderPage email = "<!DOCTYPE html>\n"
  ++ "<html>\n"
  ++ "<h1>\n"
  ++ "21*2 = 42\n"
  ++ "</h1>\n"
  ++ "</html>\n"
