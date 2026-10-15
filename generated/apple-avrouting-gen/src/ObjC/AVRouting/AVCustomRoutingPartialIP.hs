{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVCustomRoutingPartialIP
--
-- Represents a full or partial IP address. To be used in conjunction with AVCustomRoutingController.knownRouteIPs
--
-- Generated bindings for @AVCustomRoutingPartialIP@.
module ObjC.AVRouting.AVCustomRoutingPartialIP
  ( AVCustomRoutingPartialIP
  , IsAVCustomRoutingPartialIP(..)
  , initWithAddress_mask
  , init_
  , new
  , address
  , mask
  , addressSelector
  , initSelector
  , initWithAddress_maskSelector
  , maskSelector
  , newSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVRouting.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | initWithAddress:mask:
--
-- Initializes an IP fragment.
--
-- ObjC selector: @- initWithAddress:mask:@
initWithAddress_mask :: (IsAVCustomRoutingPartialIP avCustomRoutingPartialIP, IsNSData address, IsNSData mask) => avCustomRoutingPartialIP -> address -> mask -> IO (Id AVCustomRoutingPartialIP)
initWithAddress_mask avCustomRoutingPartialIP address mask =
  sendOwnedMessage avCustomRoutingPartialIP initWithAddress_maskSelector (toNSData address) (toNSData mask)

-- | @- init@
init_ :: IsAVCustomRoutingPartialIP avCustomRoutingPartialIP => avCustomRoutingPartialIP -> IO (Id AVCustomRoutingPartialIP)
init_ avCustomRoutingPartialIP =
  sendOwnedMessage avCustomRoutingPartialIP initSelector

-- | @+ new@
new :: IO (Id AVCustomRoutingPartialIP)
new  =
  do
    cls' <- getRequiredClass "AVCustomRoutingPartialIP"
    sendOwnedClassMessage cls' newSelector

-- | address
--
-- Bytes of the IP address. A full or partial IP address for a device known to be on the network.
--
-- To create full known IP, the app would do the following:                    var anIPAddressInBytes:[Byte] = [192, 168, 10, 5]                    var address = Data(bytes: anAddressInBytes, length: anAddressInBytes.count)                    var aMaskInBytes:[Byte] = [255, 255, 255, 255]                    var mask = Data(bytes: aMaskInBytes, length: aMaskInBytes.count)                    var partialIP = AVCustomRoutingPartialIP(address: address, mask: mask)
--
-- ObjC selector: @- address@
address :: IsAVCustomRoutingPartialIP avCustomRoutingPartialIP => avCustomRoutingPartialIP -> IO RawId
address avCustomRoutingPartialIP =
  sendMessage avCustomRoutingPartialIP addressSelector

-- | mask
--
-- A mask representing how many octets of the ip address to respect.
--
-- An app can use this mask to only pass e.g. the last two bytes of the IP address. So instead of passing the full IP address, the app can pass just the last two bytes by masking the first two.                    var anIPAddressInBytes:[Byte] = [0, 0, 10, 5]                    var address = Data(bytes: anAddressInBytes, length: anAddressInBytes.count)                    var aMaskInBytes:[Byte] = [0, 0, 255, 255]                    var mask = Data(bytes: aMaskInBytes, length: aMaskInBytes.count)                    var partialIP =AVCustomRoutingPartialIP(address: address, mask: mask)
--
-- ObjC selector: @- mask@
mask :: IsAVCustomRoutingPartialIP avCustomRoutingPartialIP => avCustomRoutingPartialIP -> IO RawId
mask avCustomRoutingPartialIP =
  sendMessage avCustomRoutingPartialIP maskSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithAddress:mask:@
initWithAddress_maskSelector :: Selector '[Id NSData, Id NSData] (Id AVCustomRoutingPartialIP)
initWithAddress_maskSelector = mkSelector "initWithAddress:mask:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVCustomRoutingPartialIP)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVCustomRoutingPartialIP)
newSelector = mkSelector "new"

-- | @Selector@ for @address@
addressSelector :: Selector '[] RawId
addressSelector = mkSelector "address"

-- | @Selector@ for @mask@
maskSelector :: Selector '[] RawId
maskSelector = mkSelector "mask"

