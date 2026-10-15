{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAccessControlClusterExtensionEntry@.
module ObjC.Matter.MTRAccessControlClusterExtensionEntry
  ( MTRAccessControlClusterExtensionEntry
  , IsMTRAccessControlClusterExtensionEntry(..)
  , init_
  , copyWithZone
  , data_
  , setData
  , fabricIndex
  , setFabricIndex
  , copyWithZoneSelector
  , dataSelector
  , fabricIndexSelector
  , initSelector
  , setDataSelector
  , setFabricIndexSelector


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
init_ :: IsMTRAccessControlClusterExtensionEntry mtrAccessControlClusterExtensionEntry => mtrAccessControlClusterExtensionEntry -> IO (Id MTRAccessControlClusterExtensionEntry)
init_ mtrAccessControlClusterExtensionEntry =
  sendOwnedMessage mtrAccessControlClusterExtensionEntry initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRAccessControlClusterExtensionEntry mtrAccessControlClusterExtensionEntry => mtrAccessControlClusterExtensionEntry -> Ptr () -> IO RawId
copyWithZone mtrAccessControlClusterExtensionEntry zone =
  sendOwnedMessage mtrAccessControlClusterExtensionEntry copyWithZoneSelector zone

-- | @- data@
data_ :: IsMTRAccessControlClusterExtensionEntry mtrAccessControlClusterExtensionEntry => mtrAccessControlClusterExtensionEntry -> IO (Id NSData)
data_ mtrAccessControlClusterExtensionEntry =
  sendMessage mtrAccessControlClusterExtensionEntry dataSelector

-- | @- setData:@
setData :: (IsMTRAccessControlClusterExtensionEntry mtrAccessControlClusterExtensionEntry, IsNSData value) => mtrAccessControlClusterExtensionEntry -> value -> IO ()
setData mtrAccessControlClusterExtensionEntry value =
  sendMessage mtrAccessControlClusterExtensionEntry setDataSelector (toNSData value)

-- | @- fabricIndex@
fabricIndex :: IsMTRAccessControlClusterExtensionEntry mtrAccessControlClusterExtensionEntry => mtrAccessControlClusterExtensionEntry -> IO (Id NSNumber)
fabricIndex mtrAccessControlClusterExtensionEntry =
  sendMessage mtrAccessControlClusterExtensionEntry fabricIndexSelector

-- | @- setFabricIndex:@
setFabricIndex :: (IsMTRAccessControlClusterExtensionEntry mtrAccessControlClusterExtensionEntry, IsNSNumber value) => mtrAccessControlClusterExtensionEntry -> value -> IO ()
setFabricIndex mtrAccessControlClusterExtensionEntry value =
  sendMessage mtrAccessControlClusterExtensionEntry setFabricIndexSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRAccessControlClusterExtensionEntry)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @data@
dataSelector :: Selector '[] (Id NSData)
dataSelector = mkSelector "data"

-- | @Selector@ for @setData:@
setDataSelector :: Selector '[Id NSData] ()
setDataSelector = mkSelector "setData:"

-- | @Selector@ for @fabricIndex@
fabricIndexSelector :: Selector '[] (Id NSNumber)
fabricIndexSelector = mkSelector "fabricIndex"

-- | @Selector@ for @setFabricIndex:@
setFabricIndexSelector :: Selector '[Id NSNumber] ()
setFabricIndexSelector = mkSelector "setFabricIndex:"

