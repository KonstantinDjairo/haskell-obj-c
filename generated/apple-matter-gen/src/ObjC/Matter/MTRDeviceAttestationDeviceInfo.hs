{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDeviceAttestationDeviceInfo@.
module ObjC.Matter.MTRDeviceAttestationDeviceInfo
  ( MTRDeviceAttestationDeviceInfo
  , IsMTRDeviceAttestationDeviceInfo(..)
  , init_
  , new
  , dacCertificate
  , dacPAICertificate
  , certificateDeclaration
  , certificateDeclarationSelector
  , dacCertificateSelector
  , dacPAICertificateSelector
  , initSelector
  , newSelector


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
init_ :: IsMTRDeviceAttestationDeviceInfo mtrDeviceAttestationDeviceInfo => mtrDeviceAttestationDeviceInfo -> IO (Id MTRDeviceAttestationDeviceInfo)
init_ mtrDeviceAttestationDeviceInfo =
  sendOwnedMessage mtrDeviceAttestationDeviceInfo initSelector

-- | @+ new@
new :: IO (Id MTRDeviceAttestationDeviceInfo)
new  =
  do
    cls' <- getRequiredClass "MTRDeviceAttestationDeviceInfo"
    sendOwnedClassMessage cls' newSelector

-- | @- dacCertificate@
dacCertificate :: IsMTRDeviceAttestationDeviceInfo mtrDeviceAttestationDeviceInfo => mtrDeviceAttestationDeviceInfo -> IO (Id NSData)
dacCertificate mtrDeviceAttestationDeviceInfo =
  sendMessage mtrDeviceAttestationDeviceInfo dacCertificateSelector

-- | @- dacPAICertificate@
dacPAICertificate :: IsMTRDeviceAttestationDeviceInfo mtrDeviceAttestationDeviceInfo => mtrDeviceAttestationDeviceInfo -> IO (Id NSData)
dacPAICertificate mtrDeviceAttestationDeviceInfo =
  sendMessage mtrDeviceAttestationDeviceInfo dacPAICertificateSelector

-- | @- certificateDeclaration@
certificateDeclaration :: IsMTRDeviceAttestationDeviceInfo mtrDeviceAttestationDeviceInfo => mtrDeviceAttestationDeviceInfo -> IO (Id NSData)
certificateDeclaration mtrDeviceAttestationDeviceInfo =
  sendMessage mtrDeviceAttestationDeviceInfo certificateDeclarationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDeviceAttestationDeviceInfo)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRDeviceAttestationDeviceInfo)
newSelector = mkSelector "new"

-- | @Selector@ for @dacCertificate@
dacCertificateSelector :: Selector '[] (Id NSData)
dacCertificateSelector = mkSelector "dacCertificate"

-- | @Selector@ for @dacPAICertificate@
dacPAICertificateSelector :: Selector '[] (Id NSData)
dacPAICertificateSelector = mkSelector "dacPAICertificate"

-- | @Selector@ for @certificateDeclaration@
certificateDeclarationSelector :: Selector '[] (Id NSData)
certificateDeclarationSelector = mkSelector "certificateDeclaration"

