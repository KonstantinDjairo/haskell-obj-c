{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterDoubleNestedStructList@.
module ObjC.Matter.MTRTestClusterClusterDoubleNestedStructList
  ( MTRTestClusterClusterDoubleNestedStructList
  , IsMTRTestClusterClusterDoubleNestedStructList(..)
  , init_
  , copyWithZone
  , a
  , setA
  , aSelector
  , copyWithZoneSelector
  , initSelector
  , setASelector


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
init_ :: IsMTRTestClusterClusterDoubleNestedStructList mtrTestClusterClusterDoubleNestedStructList => mtrTestClusterClusterDoubleNestedStructList -> IO (Id MTRTestClusterClusterDoubleNestedStructList)
init_ mtrTestClusterClusterDoubleNestedStructList =
  sendOwnedMessage mtrTestClusterClusterDoubleNestedStructList initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterDoubleNestedStructList mtrTestClusterClusterDoubleNestedStructList => mtrTestClusterClusterDoubleNestedStructList -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterDoubleNestedStructList zone =
  sendOwnedMessage mtrTestClusterClusterDoubleNestedStructList copyWithZoneSelector zone

-- | @- a@
a :: IsMTRTestClusterClusterDoubleNestedStructList mtrTestClusterClusterDoubleNestedStructList => mtrTestClusterClusterDoubleNestedStructList -> IO (Id NSArray)
a mtrTestClusterClusterDoubleNestedStructList =
  sendMessage mtrTestClusterClusterDoubleNestedStructList aSelector

-- | @- setA:@
setA :: (IsMTRTestClusterClusterDoubleNestedStructList mtrTestClusterClusterDoubleNestedStructList, IsNSArray value) => mtrTestClusterClusterDoubleNestedStructList -> value -> IO ()
setA mtrTestClusterClusterDoubleNestedStructList value =
  sendMessage mtrTestClusterClusterDoubleNestedStructList setASelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterDoubleNestedStructList)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @a@
aSelector :: Selector '[] (Id NSArray)
aSelector = mkSelector "a"

-- | @Selector@ for @setA:@
setASelector :: Selector '[Id NSArray] ()
setASelector = mkSelector "setA:"

