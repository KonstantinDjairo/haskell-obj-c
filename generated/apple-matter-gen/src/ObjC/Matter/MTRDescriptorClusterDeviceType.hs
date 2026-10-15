{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDescriptorClusterDeviceType@.
module ObjC.Matter.MTRDescriptorClusterDeviceType
  ( MTRDescriptorClusterDeviceType
  , IsMTRDescriptorClusterDeviceType(..)
  , init_
  , copyWithZone
  , type_
  , setType
  , revision
  , setRevision
  , copyWithZoneSelector
  , initSelector
  , revisionSelector
  , setRevisionSelector
  , setTypeSelector
  , typeSelector


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
init_ :: IsMTRDescriptorClusterDeviceType mtrDescriptorClusterDeviceType => mtrDescriptorClusterDeviceType -> IO (Id MTRDescriptorClusterDeviceType)
init_ mtrDescriptorClusterDeviceType =
  sendOwnedMessage mtrDescriptorClusterDeviceType initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDescriptorClusterDeviceType mtrDescriptorClusterDeviceType => mtrDescriptorClusterDeviceType -> Ptr () -> IO RawId
copyWithZone mtrDescriptorClusterDeviceType zone =
  sendOwnedMessage mtrDescriptorClusterDeviceType copyWithZoneSelector zone

-- | @- type@
type_ :: IsMTRDescriptorClusterDeviceType mtrDescriptorClusterDeviceType => mtrDescriptorClusterDeviceType -> IO (Id NSNumber)
type_ mtrDescriptorClusterDeviceType =
  sendMessage mtrDescriptorClusterDeviceType typeSelector

-- | @- setType:@
setType :: (IsMTRDescriptorClusterDeviceType mtrDescriptorClusterDeviceType, IsNSNumber value) => mtrDescriptorClusterDeviceType -> value -> IO ()
setType mtrDescriptorClusterDeviceType value =
  sendMessage mtrDescriptorClusterDeviceType setTypeSelector (toNSNumber value)

-- | @- revision@
revision :: IsMTRDescriptorClusterDeviceType mtrDescriptorClusterDeviceType => mtrDescriptorClusterDeviceType -> IO (Id NSNumber)
revision mtrDescriptorClusterDeviceType =
  sendMessage mtrDescriptorClusterDeviceType revisionSelector

-- | @- setRevision:@
setRevision :: (IsMTRDescriptorClusterDeviceType mtrDescriptorClusterDeviceType, IsNSNumber value) => mtrDescriptorClusterDeviceType -> value -> IO ()
setRevision mtrDescriptorClusterDeviceType value =
  sendMessage mtrDescriptorClusterDeviceType setRevisionSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDescriptorClusterDeviceType)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @type@
typeSelector :: Selector '[] (Id NSNumber)
typeSelector = mkSelector "type"

-- | @Selector@ for @setType:@
setTypeSelector :: Selector '[Id NSNumber] ()
setTypeSelector = mkSelector "setType:"

-- | @Selector@ for @revision@
revisionSelector :: Selector '[] (Id NSNumber)
revisionSelector = mkSelector "revision"

-- | @Selector@ for @setRevision:@
setRevisionSelector :: Selector '[Id NSNumber] ()
setRevisionSelector = mkSelector "setRevision:"

