import Text.XHtml


main = putStr $ renderHtml $
  body << (h1 << "Calcul Xhtml "
          +++  "21*2 = " ++ show (21*2))
