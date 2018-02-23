import Network.CGI
import Data.Maybe

main :: IO ()
main = runCGI $ handleErrors cgiMain

cgiMain :: CGI CGIResult
cgiMain = do
  name <- getInput "name"
  output $ renderPage name

renderPage :: Maybe String -> String
renderPage name = "<!DOCTYPE html>\n"
  ++ "<html>\n"
  ++ "<h1>\n"
  ++ "hello " ++ show (fromMaybe "" name) ++"\n"
  ++ "</h1>\n"
  ++ "</html>\n"
