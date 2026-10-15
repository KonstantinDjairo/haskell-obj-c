{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRControllerFactory@.
module ObjC.Matter.MTRControllerFactory
  ( MTRControllerFactory
  , IsMTRControllerFactory(..)
  , init_
  , new
  , sharedInstance
  , startup
  , shutdown
  , startControllerOnExistingFabric
  , startControllerOnNewFabric
  , isRunning
  , initSelector
  , isRunningSelector
  , newSelector
  , sharedInstanceSelector
  , shutdownSelector
  , startControllerOnExistingFabricSelector
  , startControllerOnNewFabricSelector
  , startupSelector


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
init_ :: IsMTRControllerFactory mtrControllerFactory => mtrControllerFactory -> IO (Id MTRControllerFactory)
init_ mtrControllerFactory =
  sendOwnedMessage mtrControllerFactory initSelector

-- | @+ new@
new :: IO (Id MTRControllerFactory)
new  =
  do
    cls' <- getRequiredClass "MTRControllerFactory"
    sendOwnedClassMessage cls' newSelector

-- | Return the single MTRControllerFactory we support existing.  It starts off in a "not started" state.
--
-- ObjC selector: @+ sharedInstance@
sharedInstance :: IO (Id MTRControllerFactory)
sharedInstance  =
  do
    cls' <- getRequiredClass "MTRControllerFactory"
    sendClassMessage cls' sharedInstanceSelector

-- | Start the controller factory. Repeated calls to startup without calls to shutdown in between are NO-OPs. Use the isRunning property to check whether the controller factory needs to be started up.
--
-- @startupParams@ — data needed to start up the controller factory.
--
-- Returns: Whether startup succeded.
--
-- ObjC selector: @- startup:@
startup :: (IsMTRControllerFactory mtrControllerFactory, IsMTRControllerFactoryParams startupParams) => mtrControllerFactory -> startupParams -> IO Bool
startup mtrControllerFactory startupParams =
  sendMessage mtrControllerFactory startupSelector (toMTRControllerFactoryParams startupParams)

-- | Shut down the controller factory. This will shut down any outstanding controllers as part of the factory shutdown.
--
-- Repeated calls to shutdown without calls to startup in between are NO-OPs.
--
-- ObjC selector: @- shutdown@
shutdown :: IsMTRControllerFactory mtrControllerFactory => mtrControllerFactory -> IO ()
shutdown mtrControllerFactory =
  sendMessage mtrControllerFactory shutdownSelector

-- | Create a MTRDeviceController on an existing fabric.  Returns nil on failure.
--
-- This method will fail if there is no such fabric or if there is already a controller started for that fabric.
--
-- The fabric is identified by the root public key and fabric id in the startupParams.
--
-- ObjC selector: @- startControllerOnExistingFabric:@
startControllerOnExistingFabric :: (IsMTRControllerFactory mtrControllerFactory, IsMTRDeviceControllerStartupParams startupParams) => mtrControllerFactory -> startupParams -> IO (Id MTRDeviceController)
startControllerOnExistingFabric mtrControllerFactory startupParams =
  sendMessage mtrControllerFactory startControllerOnExistingFabricSelector (toMTRDeviceControllerStartupParams startupParams)

-- | Create a MTRDeviceController on a new fabric.  Returns nil on failure.
--
-- This method will fail if the given fabric already exists.
--
-- The fabric is identified by the root public key and fabric id in the startupParams.
--
-- ObjC selector: @- startControllerOnNewFabric:@
startControllerOnNewFabric :: (IsMTRControllerFactory mtrControllerFactory, IsMTRDeviceControllerStartupParams startupParams) => mtrControllerFactory -> startupParams -> IO (Id MTRDeviceController)
startControllerOnNewFabric mtrControllerFactory startupParams =
  sendMessage mtrControllerFactory startControllerOnNewFabricSelector (toMTRDeviceControllerStartupParams startupParams)

-- | @- isRunning@
isRunning :: IsMTRControllerFactory mtrControllerFactory => mtrControllerFactory -> IO Bool
isRunning mtrControllerFactory =
  sendMessage mtrControllerFactory isRunningSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRControllerFactory)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRControllerFactory)
newSelector = mkSelector "new"

-- | @Selector@ for @sharedInstance@
sharedInstanceSelector :: Selector '[] (Id MTRControllerFactory)
sharedInstanceSelector = mkSelector "sharedInstance"

-- | @Selector@ for @startup:@
startupSelector :: Selector '[Id MTRControllerFactoryParams] Bool
startupSelector = mkSelector "startup:"

-- | @Selector@ for @shutdown@
shutdownSelector :: Selector '[] ()
shutdownSelector = mkSelector "shutdown"

-- | @Selector@ for @startControllerOnExistingFabric:@
startControllerOnExistingFabricSelector :: Selector '[Id MTRDeviceControllerStartupParams] (Id MTRDeviceController)
startControllerOnExistingFabricSelector = mkSelector "startControllerOnExistingFabric:"

-- | @Selector@ for @startControllerOnNewFabric:@
startControllerOnNewFabricSelector :: Selector '[Id MTRDeviceControllerStartupParams] (Id MTRDeviceController)
startControllerOnNewFabricSelector = mkSelector "startControllerOnNewFabric:"

-- | @Selector@ for @isRunning@
isRunningSelector :: Selector '[] Bool
isRunningSelector = mkSelector "isRunning"

