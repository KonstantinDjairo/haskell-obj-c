{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRThreadOperationalDataset@.
module ObjC.Matter.MTRThreadOperationalDataset
  ( MTRThreadOperationalDataset
  , IsMTRThreadOperationalDataset(..)
  , init_
  , new
  , initWithNetworkName_extendedPANID_masterKey_PSKc_channel_panID
  , initWithData
  , data_
  , networkName
  , extendedPANID
  , masterKey
  , psKc
  , channel
  , setChannel
  , panID
  , channelSelector
  , dataSelector
  , extendedPANIDSelector
  , initSelector
  , initWithDataSelector
  , initWithNetworkName_extendedPANID_masterKey_PSKc_channel_panIDSelector
  , masterKeySelector
  , networkNameSelector
  , newSelector
  , panIDSelector
  , psKcSelector
  , setChannelSelector


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
init_ :: IsMTRThreadOperationalDataset mtrThreadOperationalDataset => mtrThreadOperationalDataset -> IO (Id MTRThreadOperationalDataset)
init_ mtrThreadOperationalDataset =
  sendOwnedMessage mtrThreadOperationalDataset initSelector

-- | @+ new@
new :: IO (Id MTRThreadOperationalDataset)
new  =
  do
    cls' <- getRequiredClass "MTRThreadOperationalDataset"
    sendOwnedClassMessage cls' newSelector

-- | Create a Thread Operational Dataset object with the individual network fields.  This initializer will return nil if any of the NSData fields don't match the expected size.
--
-- Note: The panID is expected to be a uint16_t stored as 2-bytes in host order
--
-- ObjC selector: @- initWithNetworkName:extendedPANID:masterKey:PSKc:channel:panID:@
initWithNetworkName_extendedPANID_masterKey_PSKc_channel_panID :: (IsMTRThreadOperationalDataset mtrThreadOperationalDataset, IsNSString networkName, IsNSData extendedPANID, IsNSData masterKey, IsNSData psKc, IsNSData panID) => mtrThreadOperationalDataset -> networkName -> extendedPANID -> masterKey -> psKc -> CUShort -> panID -> IO (Id MTRThreadOperationalDataset)
initWithNetworkName_extendedPANID_masterKey_PSKc_channel_panID mtrThreadOperationalDataset networkName extendedPANID masterKey psKc channel panID =
  sendOwnedMessage mtrThreadOperationalDataset initWithNetworkName_extendedPANID_masterKey_PSKc_channel_panIDSelector (toNSString networkName) (toNSData extendedPANID) (toNSData masterKey) (toNSData psKc) channel (toNSData panID)

-- | Create a Thread Operational Dataset object with a RCP formatted active operational dataset.  This initializer will return nil if the input data cannot be parsed correctly
--
-- ObjC selector: @- initWithData:@
initWithData :: (IsMTRThreadOperationalDataset mtrThreadOperationalDataset, IsNSData data_) => mtrThreadOperationalDataset -> data_ -> IO (Id MTRThreadOperationalDataset)
initWithData mtrThreadOperationalDataset data_ =
  sendOwnedMessage mtrThreadOperationalDataset initWithDataSelector (toNSData data_)

-- | Get the underlying data that represents the Thread Active Operational Dataset
--
-- ObjC selector: @- data@
data_ :: IsMTRThreadOperationalDataset mtrThreadOperationalDataset => mtrThreadOperationalDataset -> IO (Id NSData)
data_ mtrThreadOperationalDataset =
  sendMessage mtrThreadOperationalDataset dataSelector

-- | The Thread Network name
--
-- ObjC selector: @- networkName@
networkName :: IsMTRThreadOperationalDataset mtrThreadOperationalDataset => mtrThreadOperationalDataset -> IO (Id NSString)
networkName mtrThreadOperationalDataset =
  sendMessage mtrThreadOperationalDataset networkNameSelector

-- | The Thread Network extendended PAN ID
--
-- ObjC selector: @- extendedPANID@
extendedPANID :: IsMTRThreadOperationalDataset mtrThreadOperationalDataset => mtrThreadOperationalDataset -> IO (Id NSData)
extendedPANID mtrThreadOperationalDataset =
  sendMessage mtrThreadOperationalDataset extendedPANIDSelector

-- | The 16 byte Master Key
--
-- ObjC selector: @- masterKey@
masterKey :: IsMTRThreadOperationalDataset mtrThreadOperationalDataset => mtrThreadOperationalDataset -> IO (Id NSData)
masterKey mtrThreadOperationalDataset =
  sendMessage mtrThreadOperationalDataset masterKeySelector

-- | The Thread PSKc
--
-- ObjC selector: @- PSKc@
psKc :: IsMTRThreadOperationalDataset mtrThreadOperationalDataset => mtrThreadOperationalDataset -> IO (Id NSData)
psKc mtrThreadOperationalDataset =
  sendMessage mtrThreadOperationalDataset psKcSelector

-- | The Thread network channel
--
-- ObjC selector: @- channel@
channel :: IsMTRThreadOperationalDataset mtrThreadOperationalDataset => mtrThreadOperationalDataset -> IO CUShort
channel mtrThreadOperationalDataset =
  sendMessage mtrThreadOperationalDataset channelSelector

-- | The Thread network channel
--
-- ObjC selector: @- setChannel:@
setChannel :: IsMTRThreadOperationalDataset mtrThreadOperationalDataset => mtrThreadOperationalDataset -> CUShort -> IO ()
setChannel mtrThreadOperationalDataset value =
  sendMessage mtrThreadOperationalDataset setChannelSelector value

-- | A uint16_t stored as 2-bytes in host order representing the Thread PAN ID
--
-- ObjC selector: @- panID@
panID :: IsMTRThreadOperationalDataset mtrThreadOperationalDataset => mtrThreadOperationalDataset -> IO (Id NSData)
panID mtrThreadOperationalDataset =
  sendMessage mtrThreadOperationalDataset panIDSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRThreadOperationalDataset)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRThreadOperationalDataset)
newSelector = mkSelector "new"

-- | @Selector@ for @initWithNetworkName:extendedPANID:masterKey:PSKc:channel:panID:@
initWithNetworkName_extendedPANID_masterKey_PSKc_channel_panIDSelector :: Selector '[Id NSString, Id NSData, Id NSData, Id NSData, CUShort, Id NSData] (Id MTRThreadOperationalDataset)
initWithNetworkName_extendedPANID_masterKey_PSKc_channel_panIDSelector = mkSelector "initWithNetworkName:extendedPANID:masterKey:PSKc:channel:panID:"

-- | @Selector@ for @initWithData:@
initWithDataSelector :: Selector '[Id NSData] (Id MTRThreadOperationalDataset)
initWithDataSelector = mkSelector "initWithData:"

-- | @Selector@ for @data@
dataSelector :: Selector '[] (Id NSData)
dataSelector = mkSelector "data"

-- | @Selector@ for @networkName@
networkNameSelector :: Selector '[] (Id NSString)
networkNameSelector = mkSelector "networkName"

-- | @Selector@ for @extendedPANID@
extendedPANIDSelector :: Selector '[] (Id NSData)
extendedPANIDSelector = mkSelector "extendedPANID"

-- | @Selector@ for @masterKey@
masterKeySelector :: Selector '[] (Id NSData)
masterKeySelector = mkSelector "masterKey"

-- | @Selector@ for @PSKc@
psKcSelector :: Selector '[] (Id NSData)
psKcSelector = mkSelector "PSKc"

-- | @Selector@ for @channel@
channelSelector :: Selector '[] CUShort
channelSelector = mkSelector "channel"

-- | @Selector@ for @setChannel:@
setChannelSelector :: Selector '[CUShort] ()
setChannelSelector = mkSelector "setChannel:"

-- | @Selector@ for @panID@
panIDSelector :: Selector '[] (Id NSData)
panIDSelector = mkSelector "panID"

