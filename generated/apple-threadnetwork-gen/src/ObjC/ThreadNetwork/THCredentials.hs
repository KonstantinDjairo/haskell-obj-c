{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @THCredentials@.
module ObjC.ThreadNetwork.THCredentials
  ( THCredentials
  , IsTHCredentials(..)
  , init_
  , new
  , networkName
  , extendedPANID
  , borderAgentID
  , activeOperationalDataSet
  , networkKey
  , pskc
  , channel
  , setChannel
  , panID
  , creationDate
  , lastModificationDate
  , activeOperationalDataSetSelector
  , borderAgentIDSelector
  , channelSelector
  , creationDateSelector
  , extendedPANIDSelector
  , initSelector
  , lastModificationDateSelector
  , networkKeySelector
  , networkNameSelector
  , newSelector
  , panIDSelector
  , pskcSelector
  , setChannelSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ThreadNetwork.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsTHCredentials thCredentials => thCredentials -> IO (Id THCredentials)
init_ thCredentials =
  sendOwnedMessage thCredentials initSelector

-- | @+ new@
new :: IO (Id THCredentials)
new  =
  do
    cls' <- getRequiredClass "THCredentials"
    sendOwnedClassMessage cls' newSelector

-- | networkName : Thread Network name
--
-- ObjC selector: @- networkName@
networkName :: IsTHCredentials thCredentials => thCredentials -> IO (Id NSString)
networkName thCredentials =
  sendMessage thCredentials networkNameSelector

-- | extendedPANID : Thread Network extended PAN ID
--
-- ObjC selector: @- extendedPANID@
extendedPANID :: IsTHCredentials thCredentials => thCredentials -> IO (Id NSData)
extendedPANID thCredentials =
  sendMessage thCredentials extendedPANIDSelector

-- | extendedPANID : Active Thread Network Border Agent Identifier
--
-- ObjC selector: @- borderAgentID@
borderAgentID :: IsTHCredentials thCredentials => thCredentials -> IO (Id NSData)
borderAgentID thCredentials =
  sendMessage thCredentials borderAgentIDSelector

-- | Active Operational Data Set in Bytes.
--
-- ObjC selector: @- activeOperationalDataSet@
activeOperationalDataSet :: IsTHCredentials thCredentials => thCredentials -> IO (Id NSData)
activeOperationalDataSet thCredentials =
  sendMessage thCredentials activeOperationalDataSetSelector

-- | networkKey : A 16 byte value. e.g. 7dd5b9bffe1285f27e78898658aa88f4
--
-- ObjC selector: @- networkKey@
networkKey :: IsTHCredentials thCredentials => thCredentials -> IO (Id NSData)
networkKey thCredentials =
  sendMessage thCredentials networkKeySelector

-- | PSKc : A 16 byte value. e.g. 0eec92e950c4cbc6966d32613f08efe0
--
-- ObjC selector: @- PSKC@
pskc :: IsTHCredentials thCredentials => thCredentials -> IO (Id NSData)
pskc thCredentials =
  sendMessage thCredentials pskcSelector

-- | channel : Thread network channel
--
-- ObjC selector: @- channel@
channel :: IsTHCredentials thCredentials => thCredentials -> IO CUChar
channel thCredentials =
  sendMessage thCredentials channelSelector

-- | channel : Thread network channel
--
-- ObjC selector: @- setChannel:@
setChannel :: IsTHCredentials thCredentials => thCredentials -> CUChar -> IO ()
setChannel thCredentials value =
  sendMessage thCredentials setChannelSelector value

-- | PANID : A 2 byte value. e.g. 308f
--
-- ObjC selector: @- panID@
panID :: IsTHCredentials thCredentials => thCredentials -> IO (Id NSData)
panID thCredentials =
  sendMessage thCredentials panIDSelector

-- | Metadata
--
-- ObjC selector: @- creationDate@
creationDate :: IsTHCredentials thCredentials => thCredentials -> IO (Id NSDate)
creationDate thCredentials =
  sendMessage thCredentials creationDateSelector

-- | @- lastModificationDate@
lastModificationDate :: IsTHCredentials thCredentials => thCredentials -> IO (Id NSDate)
lastModificationDate thCredentials =
  sendMessage thCredentials lastModificationDateSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id THCredentials)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id THCredentials)
newSelector = mkSelector "new"

-- | @Selector@ for @networkName@
networkNameSelector :: Selector '[] (Id NSString)
networkNameSelector = mkSelector "networkName"

-- | @Selector@ for @extendedPANID@
extendedPANIDSelector :: Selector '[] (Id NSData)
extendedPANIDSelector = mkSelector "extendedPANID"

-- | @Selector@ for @borderAgentID@
borderAgentIDSelector :: Selector '[] (Id NSData)
borderAgentIDSelector = mkSelector "borderAgentID"

-- | @Selector@ for @activeOperationalDataSet@
activeOperationalDataSetSelector :: Selector '[] (Id NSData)
activeOperationalDataSetSelector = mkSelector "activeOperationalDataSet"

-- | @Selector@ for @networkKey@
networkKeySelector :: Selector '[] (Id NSData)
networkKeySelector = mkSelector "networkKey"

-- | @Selector@ for @PSKC@
pskcSelector :: Selector '[] (Id NSData)
pskcSelector = mkSelector "PSKC"

-- | @Selector@ for @channel@
channelSelector :: Selector '[] CUChar
channelSelector = mkSelector "channel"

-- | @Selector@ for @setChannel:@
setChannelSelector :: Selector '[CUChar] ()
setChannelSelector = mkSelector "setChannel:"

-- | @Selector@ for @panID@
panIDSelector :: Selector '[] (Id NSData)
panIDSelector = mkSelector "panID"

-- | @Selector@ for @creationDate@
creationDateSelector :: Selector '[] (Id NSDate)
creationDateSelector = mkSelector "creationDate"

-- | @Selector@ for @lastModificationDate@
lastModificationDateSelector :: Selector '[] (Id NSDate)
lastModificationDateSelector = mkSelector "lastModificationDate"

