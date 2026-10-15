{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterExtensionFieldSet@.
module ObjC.Matter.MTRScenesClusterExtensionFieldSet
  ( MTRScenesClusterExtensionFieldSet
  , IsMTRScenesClusterExtensionFieldSet(..)
  , init_
  , copyWithZone
  , clusterId
  , setClusterId
  , attributeValueList
  , setAttributeValueList
  , attributeValueListSelector
  , clusterIdSelector
  , copyWithZoneSelector
  , initSelector
  , setAttributeValueListSelector
  , setClusterIdSelector


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
init_ :: IsMTRScenesClusterExtensionFieldSet mtrScenesClusterExtensionFieldSet => mtrScenesClusterExtensionFieldSet -> IO (Id MTRScenesClusterExtensionFieldSet)
init_ mtrScenesClusterExtensionFieldSet =
  sendOwnedMessage mtrScenesClusterExtensionFieldSet initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterExtensionFieldSet mtrScenesClusterExtensionFieldSet => mtrScenesClusterExtensionFieldSet -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterExtensionFieldSet zone =
  sendOwnedMessage mtrScenesClusterExtensionFieldSet copyWithZoneSelector zone

-- | @- clusterId@
clusterId :: IsMTRScenesClusterExtensionFieldSet mtrScenesClusterExtensionFieldSet => mtrScenesClusterExtensionFieldSet -> IO (Id NSNumber)
clusterId mtrScenesClusterExtensionFieldSet =
  sendMessage mtrScenesClusterExtensionFieldSet clusterIdSelector

-- | @- setClusterId:@
setClusterId :: (IsMTRScenesClusterExtensionFieldSet mtrScenesClusterExtensionFieldSet, IsNSNumber value) => mtrScenesClusterExtensionFieldSet -> value -> IO ()
setClusterId mtrScenesClusterExtensionFieldSet value =
  sendMessage mtrScenesClusterExtensionFieldSet setClusterIdSelector (toNSNumber value)

-- | @- attributeValueList@
attributeValueList :: IsMTRScenesClusterExtensionFieldSet mtrScenesClusterExtensionFieldSet => mtrScenesClusterExtensionFieldSet -> IO (Id NSArray)
attributeValueList mtrScenesClusterExtensionFieldSet =
  sendMessage mtrScenesClusterExtensionFieldSet attributeValueListSelector

-- | @- setAttributeValueList:@
setAttributeValueList :: (IsMTRScenesClusterExtensionFieldSet mtrScenesClusterExtensionFieldSet, IsNSArray value) => mtrScenesClusterExtensionFieldSet -> value -> IO ()
setAttributeValueList mtrScenesClusterExtensionFieldSet value =
  sendMessage mtrScenesClusterExtensionFieldSet setAttributeValueListSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterExtensionFieldSet)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @clusterId@
clusterIdSelector :: Selector '[] (Id NSNumber)
clusterIdSelector = mkSelector "clusterId"

-- | @Selector@ for @setClusterId:@
setClusterIdSelector :: Selector '[Id NSNumber] ()
setClusterIdSelector = mkSelector "setClusterId:"

-- | @Selector@ for @attributeValueList@
attributeValueListSelector :: Selector '[] (Id NSArray)
attributeValueListSelector = mkSelector "attributeValueList"

-- | @Selector@ for @setAttributeValueList:@
setAttributeValueListSelector :: Selector '[Id NSArray] ()
setAttributeValueListSelector = mkSelector "setAttributeValueList:"

