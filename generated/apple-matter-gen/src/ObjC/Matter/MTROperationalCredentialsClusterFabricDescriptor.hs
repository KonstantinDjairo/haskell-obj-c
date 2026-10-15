{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROperationalCredentialsClusterFabricDescriptor@.
module ObjC.Matter.MTROperationalCredentialsClusterFabricDescriptor
  ( MTROperationalCredentialsClusterFabricDescriptor
  , IsMTROperationalCredentialsClusterFabricDescriptor(..)
  , init_
  , copyWithZone
  , rootPublicKey
  , setRootPublicKey
  , vendorId
  , setVendorId
  , fabricId
  , setFabricId
  , nodeId
  , setNodeId
  , label
  , setLabel
  , fabricIndex
  , setFabricIndex
  , copyWithZoneSelector
  , fabricIdSelector
  , fabricIndexSelector
  , initSelector
  , labelSelector
  , nodeIdSelector
  , rootPublicKeySelector
  , setFabricIdSelector
  , setFabricIndexSelector
  , setLabelSelector
  , setNodeIdSelector
  , setRootPublicKeySelector
  , setVendorIdSelector
  , vendorIdSelector


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
init_ :: IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor => mtrOperationalCredentialsClusterFabricDescriptor -> IO (Id MTROperationalCredentialsClusterFabricDescriptor)
init_ mtrOperationalCredentialsClusterFabricDescriptor =
  sendOwnedMessage mtrOperationalCredentialsClusterFabricDescriptor initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor => mtrOperationalCredentialsClusterFabricDescriptor -> Ptr () -> IO RawId
copyWithZone mtrOperationalCredentialsClusterFabricDescriptor zone =
  sendOwnedMessage mtrOperationalCredentialsClusterFabricDescriptor copyWithZoneSelector zone

-- | @- rootPublicKey@
rootPublicKey :: IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor => mtrOperationalCredentialsClusterFabricDescriptor -> IO (Id NSData)
rootPublicKey mtrOperationalCredentialsClusterFabricDescriptor =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor rootPublicKeySelector

-- | @- setRootPublicKey:@
setRootPublicKey :: (IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor, IsNSData value) => mtrOperationalCredentialsClusterFabricDescriptor -> value -> IO ()
setRootPublicKey mtrOperationalCredentialsClusterFabricDescriptor value =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor setRootPublicKeySelector (toNSData value)

-- | @- vendorId@
vendorId :: IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor => mtrOperationalCredentialsClusterFabricDescriptor -> IO (Id NSNumber)
vendorId mtrOperationalCredentialsClusterFabricDescriptor =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor vendorIdSelector

-- | @- setVendorId:@
setVendorId :: (IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor, IsNSNumber value) => mtrOperationalCredentialsClusterFabricDescriptor -> value -> IO ()
setVendorId mtrOperationalCredentialsClusterFabricDescriptor value =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor setVendorIdSelector (toNSNumber value)

-- | @- fabricId@
fabricId :: IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor => mtrOperationalCredentialsClusterFabricDescriptor -> IO (Id NSNumber)
fabricId mtrOperationalCredentialsClusterFabricDescriptor =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor fabricIdSelector

-- | @- setFabricId:@
setFabricId :: (IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor, IsNSNumber value) => mtrOperationalCredentialsClusterFabricDescriptor -> value -> IO ()
setFabricId mtrOperationalCredentialsClusterFabricDescriptor value =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor setFabricIdSelector (toNSNumber value)

-- | @- nodeId@
nodeId :: IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor => mtrOperationalCredentialsClusterFabricDescriptor -> IO (Id NSNumber)
nodeId mtrOperationalCredentialsClusterFabricDescriptor =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor nodeIdSelector

-- | @- setNodeId:@
setNodeId :: (IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor, IsNSNumber value) => mtrOperationalCredentialsClusterFabricDescriptor -> value -> IO ()
setNodeId mtrOperationalCredentialsClusterFabricDescriptor value =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor setNodeIdSelector (toNSNumber value)

-- | @- label@
label :: IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor => mtrOperationalCredentialsClusterFabricDescriptor -> IO (Id NSString)
label mtrOperationalCredentialsClusterFabricDescriptor =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor labelSelector

-- | @- setLabel:@
setLabel :: (IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor, IsNSString value) => mtrOperationalCredentialsClusterFabricDescriptor -> value -> IO ()
setLabel mtrOperationalCredentialsClusterFabricDescriptor value =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor setLabelSelector (toNSString value)

-- | @- fabricIndex@
fabricIndex :: IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor => mtrOperationalCredentialsClusterFabricDescriptor -> IO (Id NSNumber)
fabricIndex mtrOperationalCredentialsClusterFabricDescriptor =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor fabricIndexSelector

-- | @- setFabricIndex:@
setFabricIndex :: (IsMTROperationalCredentialsClusterFabricDescriptor mtrOperationalCredentialsClusterFabricDescriptor, IsNSNumber value) => mtrOperationalCredentialsClusterFabricDescriptor -> value -> IO ()
setFabricIndex mtrOperationalCredentialsClusterFabricDescriptor value =
  sendMessage mtrOperationalCredentialsClusterFabricDescriptor setFabricIndexSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROperationalCredentialsClusterFabricDescriptor)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @rootPublicKey@
rootPublicKeySelector :: Selector '[] (Id NSData)
rootPublicKeySelector = mkSelector "rootPublicKey"

-- | @Selector@ for @setRootPublicKey:@
setRootPublicKeySelector :: Selector '[Id NSData] ()
setRootPublicKeySelector = mkSelector "setRootPublicKey:"

-- | @Selector@ for @vendorId@
vendorIdSelector :: Selector '[] (Id NSNumber)
vendorIdSelector = mkSelector "vendorId"

-- | @Selector@ for @setVendorId:@
setVendorIdSelector :: Selector '[Id NSNumber] ()
setVendorIdSelector = mkSelector "setVendorId:"

-- | @Selector@ for @fabricId@
fabricIdSelector :: Selector '[] (Id NSNumber)
fabricIdSelector = mkSelector "fabricId"

-- | @Selector@ for @setFabricId:@
setFabricIdSelector :: Selector '[Id NSNumber] ()
setFabricIdSelector = mkSelector "setFabricId:"

-- | @Selector@ for @nodeId@
nodeIdSelector :: Selector '[] (Id NSNumber)
nodeIdSelector = mkSelector "nodeId"

-- | @Selector@ for @setNodeId:@
setNodeIdSelector :: Selector '[Id NSNumber] ()
setNodeIdSelector = mkSelector "setNodeId:"

-- | @Selector@ for @label@
labelSelector :: Selector '[] (Id NSString)
labelSelector = mkSelector "label"

-- | @Selector@ for @setLabel:@
setLabelSelector :: Selector '[Id NSString] ()
setLabelSelector = mkSelector "setLabel:"

-- | @Selector@ for @fabricIndex@
fabricIndexSelector :: Selector '[] (Id NSNumber)
fabricIndexSelector = mkSelector "fabricIndex"

-- | @Selector@ for @setFabricIndex:@
setFabricIndexSelector :: Selector '[Id NSNumber] ()
setFabricIndexSelector = mkSelector "setFabricIndex:"

