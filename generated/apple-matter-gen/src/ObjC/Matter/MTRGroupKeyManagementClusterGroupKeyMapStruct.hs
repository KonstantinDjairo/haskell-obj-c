{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupKeyManagementClusterGroupKeyMapStruct@.
module ObjC.Matter.MTRGroupKeyManagementClusterGroupKeyMapStruct
  ( MTRGroupKeyManagementClusterGroupKeyMapStruct
  , IsMTRGroupKeyManagementClusterGroupKeyMapStruct(..)
  , init_
  , copyWithZone
  , groupId
  , setGroupId
  , groupKeySetID
  , setGroupKeySetID
  , fabricIndex
  , setFabricIndex
  , copyWithZoneSelector
  , fabricIndexSelector
  , groupIdSelector
  , groupKeySetIDSelector
  , initSelector
  , setFabricIndexSelector
  , setGroupIdSelector
  , setGroupKeySetIDSelector


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
init_ :: IsMTRGroupKeyManagementClusterGroupKeyMapStruct mtrGroupKeyManagementClusterGroupKeyMapStruct => mtrGroupKeyManagementClusterGroupKeyMapStruct -> IO (Id MTRGroupKeyManagementClusterGroupKeyMapStruct)
init_ mtrGroupKeyManagementClusterGroupKeyMapStruct =
  sendOwnedMessage mtrGroupKeyManagementClusterGroupKeyMapStruct initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupKeyManagementClusterGroupKeyMapStruct mtrGroupKeyManagementClusterGroupKeyMapStruct => mtrGroupKeyManagementClusterGroupKeyMapStruct -> Ptr () -> IO RawId
copyWithZone mtrGroupKeyManagementClusterGroupKeyMapStruct zone =
  sendOwnedMessage mtrGroupKeyManagementClusterGroupKeyMapStruct copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRGroupKeyManagementClusterGroupKeyMapStruct mtrGroupKeyManagementClusterGroupKeyMapStruct => mtrGroupKeyManagementClusterGroupKeyMapStruct -> IO (Id NSNumber)
groupId mtrGroupKeyManagementClusterGroupKeyMapStruct =
  sendMessage mtrGroupKeyManagementClusterGroupKeyMapStruct groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRGroupKeyManagementClusterGroupKeyMapStruct mtrGroupKeyManagementClusterGroupKeyMapStruct, IsNSNumber value) => mtrGroupKeyManagementClusterGroupKeyMapStruct -> value -> IO ()
setGroupId mtrGroupKeyManagementClusterGroupKeyMapStruct value =
  sendMessage mtrGroupKeyManagementClusterGroupKeyMapStruct setGroupIdSelector (toNSNumber value)

-- | @- groupKeySetID@
groupKeySetID :: IsMTRGroupKeyManagementClusterGroupKeyMapStruct mtrGroupKeyManagementClusterGroupKeyMapStruct => mtrGroupKeyManagementClusterGroupKeyMapStruct -> IO (Id NSNumber)
groupKeySetID mtrGroupKeyManagementClusterGroupKeyMapStruct =
  sendMessage mtrGroupKeyManagementClusterGroupKeyMapStruct groupKeySetIDSelector

-- | @- setGroupKeySetID:@
setGroupKeySetID :: (IsMTRGroupKeyManagementClusterGroupKeyMapStruct mtrGroupKeyManagementClusterGroupKeyMapStruct, IsNSNumber value) => mtrGroupKeyManagementClusterGroupKeyMapStruct -> value -> IO ()
setGroupKeySetID mtrGroupKeyManagementClusterGroupKeyMapStruct value =
  sendMessage mtrGroupKeyManagementClusterGroupKeyMapStruct setGroupKeySetIDSelector (toNSNumber value)

-- | @- fabricIndex@
fabricIndex :: IsMTRGroupKeyManagementClusterGroupKeyMapStruct mtrGroupKeyManagementClusterGroupKeyMapStruct => mtrGroupKeyManagementClusterGroupKeyMapStruct -> IO (Id NSNumber)
fabricIndex mtrGroupKeyManagementClusterGroupKeyMapStruct =
  sendMessage mtrGroupKeyManagementClusterGroupKeyMapStruct fabricIndexSelector

-- | @- setFabricIndex:@
setFabricIndex :: (IsMTRGroupKeyManagementClusterGroupKeyMapStruct mtrGroupKeyManagementClusterGroupKeyMapStruct, IsNSNumber value) => mtrGroupKeyManagementClusterGroupKeyMapStruct -> value -> IO ()
setFabricIndex mtrGroupKeyManagementClusterGroupKeyMapStruct value =
  sendMessage mtrGroupKeyManagementClusterGroupKeyMapStruct setFabricIndexSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupKeyManagementClusterGroupKeyMapStruct)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @groupId@
groupIdSelector :: Selector '[] (Id NSNumber)
groupIdSelector = mkSelector "groupId"

-- | @Selector@ for @setGroupId:@
setGroupIdSelector :: Selector '[Id NSNumber] ()
setGroupIdSelector = mkSelector "setGroupId:"

-- | @Selector@ for @groupKeySetID@
groupKeySetIDSelector :: Selector '[] (Id NSNumber)
groupKeySetIDSelector = mkSelector "groupKeySetID"

-- | @Selector@ for @setGroupKeySetID:@
setGroupKeySetIDSelector :: Selector '[Id NSNumber] ()
setGroupKeySetIDSelector = mkSelector "setGroupKeySetID:"

-- | @Selector@ for @fabricIndex@
fabricIndexSelector :: Selector '[] (Id NSNumber)
fabricIndexSelector = mkSelector "fabricIndex"

-- | @Selector@ for @setFabricIndex:@
setFabricIndexSelector :: Selector '[Id NSNumber] ()
setFabricIndexSelector = mkSelector "setFabricIndex:"

