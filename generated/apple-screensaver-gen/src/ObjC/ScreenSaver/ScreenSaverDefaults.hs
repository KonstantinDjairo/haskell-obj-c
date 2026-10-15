{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ScreenSaverDefaults@.
module ObjC.ScreenSaver.ScreenSaverDefaults
  ( ScreenSaverDefaults
  , IsScreenSaverDefaults(..)
  , defaultsForModuleWithName
  , defaultsForModuleWithNameSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ScreenSaver.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ defaultsForModuleWithName:@
defaultsForModuleWithName :: IsNSString inModuleName => inModuleName -> IO (Id ScreenSaverDefaults)
defaultsForModuleWithName inModuleName =
  do
    cls' <- getRequiredClass "ScreenSaverDefaults"
    sendClassMessage cls' defaultsForModuleWithNameSelector (toNSString inModuleName)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @defaultsForModuleWithName:@
defaultsForModuleWithNameSelector :: Selector '[Id NSString] (Id ScreenSaverDefaults)
defaultsForModuleWithNameSelector = mkSelector "defaultsForModuleWithName:"

