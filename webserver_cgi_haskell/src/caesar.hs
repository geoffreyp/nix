import Network.CGI
import Data.Maybe
import Data.Char (chr, isLower, ord)

main :: IO ()
main = runCGI $ handleErrors cgiMain

cgiMain :: CGI CGIResult
cgiMain = do
  text <- getInput "text"
  key <- getInput "key"
  output $ renderPage text key

renderPage :: Maybe String -> Maybe String -> String
renderPage text key = "<!DOCTYPE html>\n"
  ++ "<html>\n"
  ++ "<h1>\n"
   ++ "<form method='get' action='caesar.cgi'><input type='text' name='text' placeholder='text'/><input type='text' name='key' placeholder='key'/> <input type='submit' /></form>"
  ++ "code " ++ codeCaesar (read (fromMaybe "0" key)::Int) (fromMaybe "" text) ++"\n"
  ++ "</h1>\n"
  ++ "</html>\n"

shiftChar :: Int -> Char -> Char
shiftChar n c | isLower c = chr $ ord 'a' + ((n + ord c - ord 'a') `mod` 26)
              | otherwise = c

codeCaesar :: Int -> String -> String
codeCaesar n = map (shiftChar n)
