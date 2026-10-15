{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAdministratorCommissioningClusterOpenCommissioningWindowParams@.
module ObjC.Matter.MTRAdministratorCommissioningClusterOpenCommissioningWindowParams
  ( MTRAdministratorCommissioningClusterOpenCommissioningWindowParams
  , IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams(..)
  , init_
  , copyWithZone
  , commissioningTimeout
  , setCommissioningTimeout
  , pakeVerifier
  , setPakeVerifier
  , discriminator
  , setDiscriminator
  , iterations
  , setIterations
  , salt
  , setSalt
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , commissioningTimeoutSelector
  , copyWithZoneSelector
  , discriminatorSelector
  , initSelector
  , iterationsSelector
  , pakeVerifierSelector
  , saltSelector
  , setCommissioningTimeoutSelector
  , setDiscriminatorSelector
  , setIterationsSelector
  , setPakeVerifierSelector
  , setSaltSelector
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
init_ :: IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> IO (Id MTRAdministratorCommissioningClusterOpenCommissioningWindowParams)
init_ mtrAdministratorCommissioningClusterOpenCommissioningWindowParams =
  sendOwnedMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> Ptr () -> IO RawId
copyWithZone mtrAdministratorCommissioningClusterOpenCommissioningWindowParams zone =
  sendOwnedMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams copyWithZoneSelector zone

-- | @- commissioningTimeout@
commissioningTimeout :: IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> IO (Id NSNumber)
commissioningTimeout mtrAdministratorCommissioningClusterOpenCommissioningWindowParams =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams commissioningTimeoutSelector

-- | @- setCommissioningTimeout:@
setCommissioningTimeout :: (IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams, IsNSNumber value) => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> value -> IO ()
setCommissioningTimeout mtrAdministratorCommissioningClusterOpenCommissioningWindowParams value =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams setCommissioningTimeoutSelector (toNSNumber value)

-- | @- pakeVerifier@
pakeVerifier :: IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> IO (Id NSData)
pakeVerifier mtrAdministratorCommissioningClusterOpenCommissioningWindowParams =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams pakeVerifierSelector

-- | @- setPakeVerifier:@
setPakeVerifier :: (IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams, IsNSData value) => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> value -> IO ()
setPakeVerifier mtrAdministratorCommissioningClusterOpenCommissioningWindowParams value =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams setPakeVerifierSelector (toNSData value)

-- | @- discriminator@
discriminator :: IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> IO (Id NSNumber)
discriminator mtrAdministratorCommissioningClusterOpenCommissioningWindowParams =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams discriminatorSelector

-- | @- setDiscriminator:@
setDiscriminator :: (IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams, IsNSNumber value) => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> value -> IO ()
setDiscriminator mtrAdministratorCommissioningClusterOpenCommissioningWindowParams value =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams setDiscriminatorSelector (toNSNumber value)

-- | @- iterations@
iterations :: IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> IO (Id NSNumber)
iterations mtrAdministratorCommissioningClusterOpenCommissioningWindowParams =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams iterationsSelector

-- | @- setIterations:@
setIterations :: (IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams, IsNSNumber value) => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> value -> IO ()
setIterations mtrAdministratorCommissioningClusterOpenCommissioningWindowParams value =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams setIterationsSelector (toNSNumber value)

-- | @- salt@
salt :: IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> IO (Id NSData)
salt mtrAdministratorCommissioningClusterOpenCommissioningWindowParams =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams saltSelector

-- | @- setSalt:@
setSalt :: (IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams, IsNSData value) => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> value -> IO ()
setSalt mtrAdministratorCommissioningClusterOpenCommissioningWindowParams value =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams setSaltSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrAdministratorCommissioningClusterOpenCommissioningWindowParams =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams mtrAdministratorCommissioningClusterOpenCommissioningWindowParams, IsNSNumber value) => mtrAdministratorCommissioningClusterOpenCommissioningWindowParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrAdministratorCommissioningClusterOpenCommissioningWindowParams value =
  sendMessage mtrAdministratorCommissioningClusterOpenCommissioningWindowParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRAdministratorCommissioningClusterOpenCommissioningWindowParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @commissioningTimeout@
commissioningTimeoutSelector :: Selector '[] (Id NSNumber)
commissioningTimeoutSelector = mkSelector "commissioningTimeout"

-- | @Selector@ for @setCommissioningTimeout:@
setCommissioningTimeoutSelector :: Selector '[Id NSNumber] ()
setCommissioningTimeoutSelector = mkSelector "setCommissioningTimeout:"

-- | @Selector@ for @pakeVerifier@
pakeVerifierSelector :: Selector '[] (Id NSData)
pakeVerifierSelector = mkSelector "pakeVerifier"

-- | @Selector@ for @setPakeVerifier:@
setPakeVerifierSelector :: Selector '[Id NSData] ()
setPakeVerifierSelector = mkSelector "setPakeVerifier:"

-- | @Selector@ for @discriminator@
discriminatorSelector :: Selector '[] (Id NSNumber)
discriminatorSelector = mkSelector "discriminator"

-- | @Selector@ for @setDiscriminator:@
setDiscriminatorSelector :: Selector '[Id NSNumber] ()
setDiscriminatorSelector = mkSelector "setDiscriminator:"

-- | @Selector@ for @iterations@
iterationsSelector :: Selector '[] (Id NSNumber)
iterationsSelector = mkSelector "iterations"

-- | @Selector@ for @setIterations:@
setIterationsSelector :: Selector '[Id NSNumber] ()
setIterationsSelector = mkSelector "setIterations:"

-- | @Selector@ for @salt@
saltSelector :: Selector '[] (Id NSData)
saltSelector = mkSelector "salt"

-- | @Selector@ for @setSalt:@
setSaltSelector :: Selector '[Id NSData] ()
setSaltSelector = mkSelector "setSalt:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

