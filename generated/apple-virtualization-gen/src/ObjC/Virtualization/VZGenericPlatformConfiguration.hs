{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | The platform configuration for a generic Intel or ARM virtual machine.
--
-- Generated bindings for @VZGenericPlatformConfiguration@.
module ObjC.Virtualization.VZGenericPlatformConfiguration
  ( VZGenericPlatformConfiguration
  , IsVZGenericPlatformConfiguration(..)
  , init_
  , machineIdentifier
  , setMachineIdentifier
  , initSelector
  , machineIdentifierSelector
  , setMachineIdentifierSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Virtualization.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsVZGenericPlatformConfiguration vzGenericPlatformConfiguration => vzGenericPlatformConfiguration -> IO (Id VZGenericPlatformConfiguration)
init_ vzGenericPlatformConfiguration =
  sendOwnedMessage vzGenericPlatformConfiguration initSelector

-- | The machine identifier.
--
-- ObjC selector: @- machineIdentifier@
machineIdentifier :: IsVZGenericPlatformConfiguration vzGenericPlatformConfiguration => vzGenericPlatformConfiguration -> IO RawId
machineIdentifier vzGenericPlatformConfiguration =
  sendMessage vzGenericPlatformConfiguration machineIdentifierSelector

-- | The machine identifier.
--
-- ObjC selector: @- setMachineIdentifier:@
setMachineIdentifier :: IsVZGenericPlatformConfiguration vzGenericPlatformConfiguration => vzGenericPlatformConfiguration -> RawId -> IO ()
setMachineIdentifier vzGenericPlatformConfiguration value =
  sendMessage vzGenericPlatformConfiguration setMachineIdentifierSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id VZGenericPlatformConfiguration)
initSelector = mkSelector "init"

-- | @Selector@ for @machineIdentifier@
machineIdentifierSelector :: Selector '[] RawId
machineIdentifierSelector = mkSelector "machineIdentifier"

-- | @Selector@ for @setMachineIdentifier:@
setMachineIdentifierSelector :: Selector '[RawId] ()
setMachineIdentifierSelector = mkSelector "setMachineIdentifier:"

