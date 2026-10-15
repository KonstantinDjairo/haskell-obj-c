{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @DCDevice@.
module ObjC.DeviceCheck.DCDevice
  ( DCDevice
  , IsDCDevice(..)
  , generateTokenWithCompletionHandler
  , currentDevice
  , supported
  , currentDeviceSelector
  , generateTokenWithCompletionHandlerSelector
  , supportedSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.DeviceCheck.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Generate a new device token that can be used to get/set the persistent bits for this device. This call generates a new value every time.
--
-- ObjC selector: @- generateTokenWithCompletionHandler:@
generateTokenWithCompletionHandler :: IsDCDevice dcDevice => dcDevice -> Ptr () -> IO ()
generateTokenWithCompletionHandler dcDevice completion =
  sendMessage dcDevice generateTokenWithCompletionHandlerSelector completion

-- | The current device.
--
-- ObjC selector: @+ currentDevice@
currentDevice :: IO (Id DCDevice)
currentDevice  =
  do
    cls' <- getRequiredClass "DCDevice"
    sendClassMessage cls' currentDeviceSelector

-- | Check if this API is supported on the current device.
--
-- ObjC selector: @- supported@
supported :: IsDCDevice dcDevice => dcDevice -> IO Bool
supported dcDevice =
  sendMessage dcDevice supportedSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @generateTokenWithCompletionHandler:@
generateTokenWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
generateTokenWithCompletionHandlerSelector = mkSelector "generateTokenWithCompletionHandler:"

-- | @Selector@ for @currentDevice@
currentDeviceSelector :: Selector '[] (Id DCDevice)
currentDeviceSelector = mkSelector "currentDevice"

-- | @Selector@ for @supported@
supportedSelector :: Selector '[] Bool
supportedSelector = mkSelector "supported"

