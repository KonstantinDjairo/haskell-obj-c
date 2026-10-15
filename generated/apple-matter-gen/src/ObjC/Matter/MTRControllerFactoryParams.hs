{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRControllerFactoryParams@.
module ObjC.Matter.MTRControllerFactoryParams
  ( MTRControllerFactoryParams
  , IsMTRControllerFactoryParams(..)
  , init_
  , initWithStorage
  , storageDelegate
  , otaProviderDelegate
  , setOtaProviderDelegate
  , paaCerts
  , setPaaCerts
  , cdCerts
  , setCdCerts
  , port
  , setPort
  , startServer
  , setStartServer
  , cdCertsSelector
  , initSelector
  , initWithStorageSelector
  , otaProviderDelegateSelector
  , paaCertsSelector
  , portSelector
  , setCdCertsSelector
  , setOtaProviderDelegateSelector
  , setPaaCertsSelector
  , setPortSelector
  , setStartServerSelector
  , startServerSelector
  , storageDelegateSelector


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
init_ :: IsMTRControllerFactoryParams mtrControllerFactoryParams => mtrControllerFactoryParams -> IO (Id MTRControllerFactoryParams)
init_ mtrControllerFactoryParams =
  sendOwnedMessage mtrControllerFactoryParams initSelector

-- | @- initWithStorage:@
initWithStorage :: IsMTRControllerFactoryParams mtrControllerFactoryParams => mtrControllerFactoryParams -> RawId -> IO (Id MTRControllerFactoryParams)
initWithStorage mtrControllerFactoryParams storageDelegate =
  sendOwnedMessage mtrControllerFactoryParams initWithStorageSelector storageDelegate

-- | @- storageDelegate@
storageDelegate :: IsMTRControllerFactoryParams mtrControllerFactoryParams => mtrControllerFactoryParams -> IO RawId
storageDelegate mtrControllerFactoryParams =
  sendMessage mtrControllerFactoryParams storageDelegateSelector

-- | @- otaProviderDelegate@
otaProviderDelegate :: IsMTRControllerFactoryParams mtrControllerFactoryParams => mtrControllerFactoryParams -> IO RawId
otaProviderDelegate mtrControllerFactoryParams =
  sendMessage mtrControllerFactoryParams otaProviderDelegateSelector

-- | @- setOtaProviderDelegate:@
setOtaProviderDelegate :: IsMTRControllerFactoryParams mtrControllerFactoryParams => mtrControllerFactoryParams -> RawId -> IO ()
setOtaProviderDelegate mtrControllerFactoryParams value =
  sendMessage mtrControllerFactoryParams setOtaProviderDelegateSelector value

-- | @- paaCerts@
paaCerts :: IsMTRControllerFactoryParams mtrControllerFactoryParams => mtrControllerFactoryParams -> IO (Id NSArray)
paaCerts mtrControllerFactoryParams =
  sendMessage mtrControllerFactoryParams paaCertsSelector

-- | @- setPaaCerts:@
setPaaCerts :: (IsMTRControllerFactoryParams mtrControllerFactoryParams, IsNSArray value) => mtrControllerFactoryParams -> value -> IO ()
setPaaCerts mtrControllerFactoryParams value =
  sendMessage mtrControllerFactoryParams setPaaCertsSelector (toNSArray value)

-- | @- cdCerts@
cdCerts :: IsMTRControllerFactoryParams mtrControllerFactoryParams => mtrControllerFactoryParams -> IO (Id NSArray)
cdCerts mtrControllerFactoryParams =
  sendMessage mtrControllerFactoryParams cdCertsSelector

-- | @- setCdCerts:@
setCdCerts :: (IsMTRControllerFactoryParams mtrControllerFactoryParams, IsNSArray value) => mtrControllerFactoryParams -> value -> IO ()
setCdCerts mtrControllerFactoryParams value =
  sendMessage mtrControllerFactoryParams setCdCertsSelector (toNSArray value)

-- | @- port@
port :: IsMTRControllerFactoryParams mtrControllerFactoryParams => mtrControllerFactoryParams -> IO (Id NSNumber)
port mtrControllerFactoryParams =
  sendMessage mtrControllerFactoryParams portSelector

-- | @- setPort:@
setPort :: (IsMTRControllerFactoryParams mtrControllerFactoryParams, IsNSNumber value) => mtrControllerFactoryParams -> value -> IO ()
setPort mtrControllerFactoryParams value =
  sendMessage mtrControllerFactoryParams setPortSelector (toNSNumber value)

-- | @- startServer@
startServer :: IsMTRControllerFactoryParams mtrControllerFactoryParams => mtrControllerFactoryParams -> IO Bool
startServer mtrControllerFactoryParams =
  sendMessage mtrControllerFactoryParams startServerSelector

-- | @- setStartServer:@
setStartServer :: IsMTRControllerFactoryParams mtrControllerFactoryParams => mtrControllerFactoryParams -> Bool -> IO ()
setStartServer mtrControllerFactoryParams value =
  sendMessage mtrControllerFactoryParams setStartServerSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRControllerFactoryParams)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithStorage:@
initWithStorageSelector :: Selector '[RawId] (Id MTRControllerFactoryParams)
initWithStorageSelector = mkSelector "initWithStorage:"

-- | @Selector@ for @storageDelegate@
storageDelegateSelector :: Selector '[] RawId
storageDelegateSelector = mkSelector "storageDelegate"

-- | @Selector@ for @otaProviderDelegate@
otaProviderDelegateSelector :: Selector '[] RawId
otaProviderDelegateSelector = mkSelector "otaProviderDelegate"

-- | @Selector@ for @setOtaProviderDelegate:@
setOtaProviderDelegateSelector :: Selector '[RawId] ()
setOtaProviderDelegateSelector = mkSelector "setOtaProviderDelegate:"

-- | @Selector@ for @paaCerts@
paaCertsSelector :: Selector '[] (Id NSArray)
paaCertsSelector = mkSelector "paaCerts"

-- | @Selector@ for @setPaaCerts:@
setPaaCertsSelector :: Selector '[Id NSArray] ()
setPaaCertsSelector = mkSelector "setPaaCerts:"

-- | @Selector@ for @cdCerts@
cdCertsSelector :: Selector '[] (Id NSArray)
cdCertsSelector = mkSelector "cdCerts"

-- | @Selector@ for @setCdCerts:@
setCdCertsSelector :: Selector '[Id NSArray] ()
setCdCertsSelector = mkSelector "setCdCerts:"

-- | @Selector@ for @port@
portSelector :: Selector '[] (Id NSNumber)
portSelector = mkSelector "port"

-- | @Selector@ for @setPort:@
setPortSelector :: Selector '[Id NSNumber] ()
setPortSelector = mkSelector "setPort:"

-- | @Selector@ for @startServer@
startServerSelector :: Selector '[] Bool
startServerSelector = mkSelector "startServer"

-- | @Selector@ for @setStartServer:@
setStartServerSelector :: Selector '[Bool] ()
setStartServerSelector = mkSelector "setStartServer:"

