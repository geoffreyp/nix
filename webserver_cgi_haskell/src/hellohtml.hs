import Network.CGI
import Data.Maybe
import Text.XHtml

main :: IO ()
main = runCGI $ handleErrors cgiMain

cgiMain :: CGI CGIResult
cgiMain = do
  name <- getInput "name"
  output $ renderPage name

renderPage :: Maybe String -> String
renderPage name = renderHtml $ body << (h1 << ("Hello " ++ show (fromMaybe "" name)))
