{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_calcul (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/gpruvost/.cabal/bin"
libdir     = "/home/gpruvost/.cabal/lib/x86_64-linux-ghc-8.0.2/calcul-0.1-1HYC0YWLvYg2Y3XhgxYUkh-calcul.cgi"
dynlibdir  = "/home/gpruvost/.cabal/lib/x86_64-linux-ghc-8.0.2"
datadir    = "/home/gpruvost/.cabal/share/x86_64-linux-ghc-8.0.2/calcul-0.1"
libexecdir = "/home/gpruvost/.cabal/libexec/x86_64-linux-ghc-8.0.2/calcul-0.1"
sysconfdir = "/home/gpruvost/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "calcul_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "calcul_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "calcul_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "calcul_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "calcul_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "calcul_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
