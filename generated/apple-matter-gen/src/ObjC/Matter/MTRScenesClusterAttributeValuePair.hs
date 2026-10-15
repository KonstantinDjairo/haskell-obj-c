{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterAttributeValuePair@.
module ObjC.Matter.MTRScenesClusterAttributeValuePair
  ( MTRScenesClusterAttributeValuePair
  , IsMTRScenesClusterAttributeValuePair(..)
  , init_
  , copyWithZone
  , attributeId
  , setAttributeId
  , attributeValue
  , setAttributeValue
  , attributeIdSelector
  , attributeValueSelector
  , copyWithZoneSelector
  , initSelector
  , setAttributeIdSelector
  , setAttributeValueSelector


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
init_ :: IsMTRScenesClusterAttributeValuePair mtrScenesClusterAttributeValuePair => mtrScenesClusterAttributeValuePair -> IO (Id MTRScenesClusterAttributeValuePair)
init_ mtrScenesClusterAttributeValuePair =
  sendOwnedMessage mtrScenesClusterAttributeValuePair initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterAttributeValuePair mtrScenesClusterAttributeValuePair => mtrScenesClusterAttributeValuePair -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterAttributeValuePair zone =
  sendOwnedMessage mtrScenesClusterAttributeValuePair copyWithZoneSelector zone

-- | @- attributeId@
attributeId :: IsMTRScenesClusterAttributeValuePair mtrScenesClusterAttributeValuePair => mtrScenesClusterAttributeValuePair -> IO (Id NSNumber)
attributeId mtrScenesClusterAttributeValuePair =
  sendMessage mtrScenesClusterAttributeValuePair attributeIdSelector

-- | @- setAttributeId:@
setAttributeId :: (IsMTRScenesClusterAttributeValuePair mtrScenesClusterAttributeValuePair, IsNSNumber value) => mtrScenesClusterAttributeValuePair -> value -> IO ()
setAttributeId mtrScenesClusterAttributeValuePair value =
  sendMessage mtrScenesClusterAttributeValuePair setAttributeIdSelector (toNSNumber value)

-- | @- attributeValue@
attributeValue :: IsMTRScenesClusterAttributeValuePair mtrScenesClusterAttributeValuePair => mtrScenesClusterAttributeValuePair -> IO (Id NSArray)
attributeValue mtrScenesClusterAttributeValuePair =
  sendMessage mtrScenesClusterAttributeValuePair attributeValueSelector

-- | @- setAttributeValue:@
setAttributeValue :: (IsMTRScenesClusterAttributeValuePair mtrScenesClusterAttributeValuePair, IsNSArray value) => mtrScenesClusterAttributeValuePair -> value -> IO ()
setAttributeValue mtrScenesClusterAttributeValuePair value =
  sendMessage mtrScenesClusterAttributeValuePair setAttributeValueSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterAttributeValuePair)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @attributeId@
attributeIdSelector :: Selector '[] (Id NSNumber)
attributeIdSelector = mkSelector "attributeId"

-- | @Selector@ for @setAttributeId:@
setAttributeIdSelector :: Selector '[Id NSNumber] ()
setAttributeIdSelector = mkSelector "setAttributeId:"

-- | @Selector@ for @attributeValue@
attributeValueSelector :: Selector '[] (Id NSArray)
attributeValueSelector = mkSelector "attributeValue"

-- | @Selector@ for @setAttributeValue:@
setAttributeValueSelector :: Selector '[Id NSArray] ()
setAttributeValueSelector = mkSelector "setAttributeValue:"

