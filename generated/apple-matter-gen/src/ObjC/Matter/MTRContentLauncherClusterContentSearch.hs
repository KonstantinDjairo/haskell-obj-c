{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRContentLauncherClusterContentSearch@.
module ObjC.Matter.MTRContentLauncherClusterContentSearch
  ( MTRContentLauncherClusterContentSearch
  , IsMTRContentLauncherClusterContentSearch(..)
  , init_
  , copyWithZone
  , parameterList
  , setParameterList
  , copyWithZoneSelector
  , initSelector
  , parameterListSelector
  , setParameterListSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTRContentLauncherClusterContentSearch mtrContentLauncherClusterContentSearch => mtrContentLauncherClusterContentSearch -> IO (Id MTRContentLauncherClusterContentSearch)
init_ mtrContentLauncherClusterContentSearch =
  sendOwnedMessage mtrContentLauncherClusterContentSearch initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRContentLauncherClusterContentSearch mtrContentLauncherClusterContentSearch => mtrContentLauncherClusterContentSearch -> Ptr () -> IO RawId
copyWithZone mtrContentLauncherClusterContentSearch zone =
  sendOwnedMessage mtrContentLauncherClusterContentSearch copyWithZoneSelector zone

-- | @- parameterList@
parameterList :: IsMTRContentLauncherClusterContentSearch mtrContentLauncherClusterContentSearch => mtrContentLauncherClusterContentSearch -> IO (Id NSArray)
parameterList mtrContentLauncherClusterContentSearch =
  sendMessage mtrContentLauncherClusterContentSearch parameterListSelector

-- | @- setParameterList:@
setParameterList :: (IsMTRContentLauncherClusterContentSearch mtrContentLauncherClusterContentSearch, IsNSArray value) => mtrContentLauncherClusterContentSearch -> value -> IO ()
setParameterList mtrContentLauncherClusterContentSearch value =
  sendMessage mtrContentLauncherClusterContentSearch setParameterListSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRContentLauncherClusterContentSearch)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @parameterList@
parameterListSelector :: Selector '[] (Id NSArray)
parameterListSelector = mkSelector "parameterList"

-- | @Selector@ for @setParameterList:@
setParameterListSelector :: Selector '[Id NSArray] ()
setParameterListSelector = mkSelector "setParameterList:"

