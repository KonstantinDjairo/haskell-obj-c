{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGeneralCommissioningClusterSetRegulatoryConfigParams@.
module ObjC.Matter.MTRGeneralCommissioningClusterSetRegulatoryConfigParams
  ( MTRGeneralCommissioningClusterSetRegulatoryConfigParams
  , IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams(..)
  , init_
  , copyWithZone
  , newRegulatoryConfig
  , setNewRegulatoryConfig
  , countryCode
  , setCountryCode
  , breadcrumb
  , setBreadcrumb
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , breadcrumbSelector
  , copyWithZoneSelector
  , countryCodeSelector
  , initSelector
  , newRegulatoryConfigSelector
  , setBreadcrumbSelector
  , setCountryCodeSelector
  , setNewRegulatoryConfigSelector
  , setTimedInvokeTimeoutMsSelector
  , timedInvokeTimeoutMsSelector


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
init_ :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams mtrGeneralCommissioningClusterSetRegulatoryConfigParams => mtrGeneralCommissioningClusterSetRegulatoryConfigParams -> IO (Id MTRGeneralCommissioningClusterSetRegulatoryConfigParams)
init_ mtrGeneralCommissioningClusterSetRegulatoryConfigParams =
  sendOwnedMessage mtrGeneralCommissioningClusterSetRegulatoryConfigParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams mtrGeneralCommissioningClusterSetRegulatoryConfigParams => mtrGeneralCommissioningClusterSetRegulatoryConfigParams -> Ptr () -> IO RawId
copyWithZone mtrGeneralCommissioningClusterSetRegulatoryConfigParams zone =
  sendOwnedMessage mtrGeneralCommissioningClusterSetRegulatoryConfigParams copyWithZoneSelector zone

-- | @- newRegulatoryConfig@
newRegulatoryConfig :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams mtrGeneralCommissioningClusterSetRegulatoryConfigParams => mtrGeneralCommissioningClusterSetRegulatoryConfigParams -> IO (Id NSNumber)
newRegulatoryConfig mtrGeneralCommissioningClusterSetRegulatoryConfigParams =
  sendOwnedMessage mtrGeneralCommissioningClusterSetRegulatoryConfigParams newRegulatoryConfigSelector

-- | @- setNewRegulatoryConfig:@
setNewRegulatoryConfig :: (IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams mtrGeneralCommissioningClusterSetRegulatoryConfigParams, IsNSNumber value) => mtrGeneralCommissioningClusterSetRegulatoryConfigParams -> value -> IO ()
setNewRegulatoryConfig mtrGeneralCommissioningClusterSetRegulatoryConfigParams value =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigParams setNewRegulatoryConfigSelector (toNSNumber value)

-- | @- countryCode@
countryCode :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams mtrGeneralCommissioningClusterSetRegulatoryConfigParams => mtrGeneralCommissioningClusterSetRegulatoryConfigParams -> IO (Id NSString)
countryCode mtrGeneralCommissioningClusterSetRegulatoryConfigParams =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigParams countryCodeSelector

-- | @- setCountryCode:@
setCountryCode :: (IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams mtrGeneralCommissioningClusterSetRegulatoryConfigParams, IsNSString value) => mtrGeneralCommissioningClusterSetRegulatoryConfigParams -> value -> IO ()
setCountryCode mtrGeneralCommissioningClusterSetRegulatoryConfigParams value =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigParams setCountryCodeSelector (toNSString value)

-- | @- breadcrumb@
breadcrumb :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams mtrGeneralCommissioningClusterSetRegulatoryConfigParams => mtrGeneralCommissioningClusterSetRegulatoryConfigParams -> IO (Id NSNumber)
breadcrumb mtrGeneralCommissioningClusterSetRegulatoryConfigParams =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigParams breadcrumbSelector

-- | @- setBreadcrumb:@
setBreadcrumb :: (IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams mtrGeneralCommissioningClusterSetRegulatoryConfigParams, IsNSNumber value) => mtrGeneralCommissioningClusterSetRegulatoryConfigParams -> value -> IO ()
setBreadcrumb mtrGeneralCommissioningClusterSetRegulatoryConfigParams value =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigParams setBreadcrumbSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams mtrGeneralCommissioningClusterSetRegulatoryConfigParams => mtrGeneralCommissioningClusterSetRegulatoryConfigParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGeneralCommissioningClusterSetRegulatoryConfigParams =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams mtrGeneralCommissioningClusterSetRegulatoryConfigParams, IsNSNumber value) => mtrGeneralCommissioningClusterSetRegulatoryConfigParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGeneralCommissioningClusterSetRegulatoryConfigParams value =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGeneralCommissioningClusterSetRegulatoryConfigParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @newRegulatoryConfig@
newRegulatoryConfigSelector :: Selector '[] (Id NSNumber)
newRegulatoryConfigSelector = mkSelector "newRegulatoryConfig"

-- | @Selector@ for @setNewRegulatoryConfig:@
setNewRegulatoryConfigSelector :: Selector '[Id NSNumber] ()
setNewRegulatoryConfigSelector = mkSelector "setNewRegulatoryConfig:"

-- | @Selector@ for @countryCode@
countryCodeSelector :: Selector '[] (Id NSString)
countryCodeSelector = mkSelector "countryCode"

-- | @Selector@ for @setCountryCode:@
setCountryCodeSelector :: Selector '[Id NSString] ()
setCountryCodeSelector = mkSelector "setCountryCode:"

-- | @Selector@ for @breadcrumb@
breadcrumbSelector :: Selector '[] (Id NSNumber)
breadcrumbSelector = mkSelector "breadcrumb"

-- | @Selector@ for @setBreadcrumb:@
setBreadcrumbSelector :: Selector '[Id NSNumber] ()
setBreadcrumbSelector = mkSelector "setBreadcrumb:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

