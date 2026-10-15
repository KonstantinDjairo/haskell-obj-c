{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRSetupPayload@.
module ObjC.Matter.MTRSetupPayload
  ( MTRSetupPayload
  , IsMTRSetupPayload(..)
  , getAllOptionalVendorData
  , generateRandomPIN
  , generateRandomSetupPasscode
  , setupPayloadWithOnboardingPayload_error
  , initWithSetupPasscode_discriminator
  , manualEntryCode
  , qrCodeString
  , version
  , setVersion
  , vendorID
  , setVendorID
  , productID
  , setProductID
  , commissioningFlow
  , setCommissioningFlow
  , rendezvousInformation
  , setRendezvousInformation
  , discriminator
  , setDiscriminator
  , hasShortDiscriminator
  , setHasShortDiscriminator
  , setUpPINCode
  , setSetUpPINCode
  , serialNumber
  , setSerialNumber
  , commissioningFlowSelector
  , discriminatorSelector
  , generateRandomPINSelector
  , generateRandomSetupPasscodeSelector
  , getAllOptionalVendorDataSelector
  , hasShortDiscriminatorSelector
  , initWithSetupPasscode_discriminatorSelector
  , manualEntryCodeSelector
  , productIDSelector
  , qrCodeStringSelector
  , rendezvousInformationSelector
  , serialNumberSelector
  , setCommissioningFlowSelector
  , setDiscriminatorSelector
  , setHasShortDiscriminatorSelector
  , setProductIDSelector
  , setRendezvousInformationSelector
  , setSerialNumberSelector
  , setSetUpPINCodeSelector
  , setUpPINCodeSelector
  , setVendorIDSelector
  , setVersionSelector
  , setupPayloadWithOnboardingPayload_errorSelector
  , vendorIDSelector
  , versionSelector

  -- * Enum types
  , MTRCommissioningFlow(MTRCommissioningFlow)
  , pattern MTRCommissioningFlowStandard
  , pattern MTRCommissioningFlowUserActionRequired
  , pattern MTRCommissioningFlowCustom
  , pattern MTRCommissioningFlowInvalid

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Matter.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- getAllOptionalVendorData:@
getAllOptionalVendorData :: (IsMTRSetupPayload mtrSetupPayload, IsNSError error_) => mtrSetupPayload -> error_ -> IO (Id NSArray)
getAllOptionalVendorData mtrSetupPayload error_ =
  sendMessage mtrSetupPayload getAllOptionalVendorDataSelector (toNSError error_)

-- | Generate a random Matter-valid setup PIN.
--
-- ObjC selector: @+ generateRandomPIN@
generateRandomPIN :: IO CULong
generateRandomPIN  =
  do
    cls' <- getRequiredClass "MTRSetupPayload"
    sendClassMessage cls' generateRandomPINSelector

-- | Generate a random Matter-valid setup passcode.
--
-- ObjC selector: @+ generateRandomSetupPasscode@
generateRandomSetupPasscode :: IO (Id NSNumber)
generateRandomSetupPasscode  =
  do
    cls' <- getRequiredClass "MTRSetupPayload"
    sendClassMessage cls' generateRandomSetupPasscodeSelector

-- | Create an MTRSetupPayload with the given onboarding payload.
--
-- Will return nil on errors (e.g. if the onboarding payload cannot be parsed).
--
-- ObjC selector: @+ setupPayloadWithOnboardingPayload:error:@
setupPayloadWithOnboardingPayload_error :: (IsNSString onboardingPayload, IsNSError error_) => onboardingPayload -> error_ -> IO (Id MTRSetupPayload)
setupPayloadWithOnboardingPayload_error onboardingPayload error_ =
  do
    cls' <- getRequiredClass "MTRSetupPayload"
    sendClassMessage cls' setupPayloadWithOnboardingPayload_errorSelector (toNSString onboardingPayload) (toNSError error_)

-- | Initialize an MTRSetupPayload with the given passcode and discriminator. This will pre-set version, product id, and vendor id to 0.
--
-- ObjC selector: @- initWithSetupPasscode:discriminator:@
initWithSetupPasscode_discriminator :: (IsMTRSetupPayload mtrSetupPayload, IsNSNumber setupPasscode, IsNSNumber discriminator) => mtrSetupPayload -> setupPasscode -> discriminator -> IO (Id MTRSetupPayload)
initWithSetupPasscode_discriminator mtrSetupPayload setupPasscode discriminator =
  sendOwnedMessage mtrSetupPayload initWithSetupPasscode_discriminatorSelector (toNSNumber setupPasscode) (toNSNumber discriminator)

-- | Get 11 digit manual entry code from the setup payload.
--
-- ObjC selector: @- manualEntryCode@
manualEntryCode :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> IO (Id NSString)
manualEntryCode mtrSetupPayload =
  sendMessage mtrSetupPayload manualEntryCodeSelector

-- | Get a QR code from the setup payload.
--
-- Returns nil on failure (e.g. if the setup payload does not have all the information a QR code needs).
--
-- ObjC selector: @- qrCodeString:@
qrCodeString :: (IsMTRSetupPayload mtrSetupPayload, IsNSError error_) => mtrSetupPayload -> error_ -> IO (Id NSString)
qrCodeString mtrSetupPayload error_ =
  sendMessage mtrSetupPayload qrCodeStringSelector (toNSError error_)

-- | @- version@
version :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> IO (Id NSNumber)
version mtrSetupPayload =
  sendMessage mtrSetupPayload versionSelector

-- | @- setVersion:@
setVersion :: (IsMTRSetupPayload mtrSetupPayload, IsNSNumber value) => mtrSetupPayload -> value -> IO ()
setVersion mtrSetupPayload value =
  sendMessage mtrSetupPayload setVersionSelector (toNSNumber value)

-- | @- vendorID@
vendorID :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> IO (Id NSNumber)
vendorID mtrSetupPayload =
  sendMessage mtrSetupPayload vendorIDSelector

-- | @- setVendorID:@
setVendorID :: (IsMTRSetupPayload mtrSetupPayload, IsNSNumber value) => mtrSetupPayload -> value -> IO ()
setVendorID mtrSetupPayload value =
  sendMessage mtrSetupPayload setVendorIDSelector (toNSNumber value)

-- | @- productID@
productID :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> IO (Id NSNumber)
productID mtrSetupPayload =
  sendMessage mtrSetupPayload productIDSelector

-- | @- setProductID:@
setProductID :: (IsMTRSetupPayload mtrSetupPayload, IsNSNumber value) => mtrSetupPayload -> value -> IO ()
setProductID mtrSetupPayload value =
  sendMessage mtrSetupPayload setProductIDSelector (toNSNumber value)

-- | @- commissioningFlow@
commissioningFlow :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> IO MTRCommissioningFlow
commissioningFlow mtrSetupPayload =
  sendMessage mtrSetupPayload commissioningFlowSelector

-- | @- setCommissioningFlow:@
setCommissioningFlow :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> MTRCommissioningFlow -> IO ()
setCommissioningFlow mtrSetupPayload value =
  sendMessage mtrSetupPayload setCommissioningFlowSelector value

-- | rendezvousInformation is nil when the discovery capabilities bitmask is unknown.
--
-- Otherwise its value is made up of the MTRDiscoveryCapabilities flags.
--
-- ObjC selector: @- rendezvousInformation@
rendezvousInformation :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> IO (Id NSNumber)
rendezvousInformation mtrSetupPayload =
  sendMessage mtrSetupPayload rendezvousInformationSelector

-- | rendezvousInformation is nil when the discovery capabilities bitmask is unknown.
--
-- Otherwise its value is made up of the MTRDiscoveryCapabilities flags.
--
-- ObjC selector: @- setRendezvousInformation:@
setRendezvousInformation :: (IsMTRSetupPayload mtrSetupPayload, IsNSNumber value) => mtrSetupPayload -> value -> IO ()
setRendezvousInformation mtrSetupPayload value =
  sendMessage mtrSetupPayload setRendezvousInformationSelector (toNSNumber value)

-- | @- discriminator@
discriminator :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> IO (Id NSNumber)
discriminator mtrSetupPayload =
  sendMessage mtrSetupPayload discriminatorSelector

-- | @- setDiscriminator:@
setDiscriminator :: (IsMTRSetupPayload mtrSetupPayload, IsNSNumber value) => mtrSetupPayload -> value -> IO ()
setDiscriminator mtrSetupPayload value =
  sendMessage mtrSetupPayload setDiscriminatorSelector (toNSNumber value)

-- | @- hasShortDiscriminator@
hasShortDiscriminator :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> IO Bool
hasShortDiscriminator mtrSetupPayload =
  sendMessage mtrSetupPayload hasShortDiscriminatorSelector

-- | @- setHasShortDiscriminator:@
setHasShortDiscriminator :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> Bool -> IO ()
setHasShortDiscriminator mtrSetupPayload value =
  sendMessage mtrSetupPayload setHasShortDiscriminatorSelector value

-- | @- setUpPINCode@
setUpPINCode :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> IO (Id NSNumber)
setUpPINCode mtrSetupPayload =
  sendMessage mtrSetupPayload setUpPINCodeSelector

-- | @- setSetUpPINCode:@
setSetUpPINCode :: (IsMTRSetupPayload mtrSetupPayload, IsNSNumber value) => mtrSetupPayload -> value -> IO ()
setSetUpPINCode mtrSetupPayload value =
  sendMessage mtrSetupPayload setSetUpPINCodeSelector (toNSNumber value)

-- | @- serialNumber@
serialNumber :: IsMTRSetupPayload mtrSetupPayload => mtrSetupPayload -> IO (Id NSString)
serialNumber mtrSetupPayload =
  sendMessage mtrSetupPayload serialNumberSelector

-- | @- setSerialNumber:@
setSerialNumber :: (IsMTRSetupPayload mtrSetupPayload, IsNSString value) => mtrSetupPayload -> value -> IO ()
setSerialNumber mtrSetupPayload value =
  sendMessage mtrSetupPayload setSerialNumberSelector (toNSString value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @getAllOptionalVendorData:@
getAllOptionalVendorDataSelector :: Selector '[Id NSError] (Id NSArray)
getAllOptionalVendorDataSelector = mkSelector "getAllOptionalVendorData:"

-- | @Selector@ for @generateRandomPIN@
generateRandomPINSelector :: Selector '[] CULong
generateRandomPINSelector = mkSelector "generateRandomPIN"

-- | @Selector@ for @generateRandomSetupPasscode@
generateRandomSetupPasscodeSelector :: Selector '[] (Id NSNumber)
generateRandomSetupPasscodeSelector = mkSelector "generateRandomSetupPasscode"

-- | @Selector@ for @setupPayloadWithOnboardingPayload:error:@
setupPayloadWithOnboardingPayload_errorSelector :: Selector '[Id NSString, Id NSError] (Id MTRSetupPayload)
setupPayloadWithOnboardingPayload_errorSelector = mkSelector "setupPayloadWithOnboardingPayload:error:"

-- | @Selector@ for @initWithSetupPasscode:discriminator:@
initWithSetupPasscode_discriminatorSelector :: Selector '[Id NSNumber, Id NSNumber] (Id MTRSetupPayload)
initWithSetupPasscode_discriminatorSelector = mkSelector "initWithSetupPasscode:discriminator:"

-- | @Selector@ for @manualEntryCode@
manualEntryCodeSelector :: Selector '[] (Id NSString)
manualEntryCodeSelector = mkSelector "manualEntryCode"

-- | @Selector@ for @qrCodeString:@
qrCodeStringSelector :: Selector '[Id NSError] (Id NSString)
qrCodeStringSelector = mkSelector "qrCodeString:"

-- | @Selector@ for @version@
versionSelector :: Selector '[] (Id NSNumber)
versionSelector = mkSelector "version"

-- | @Selector@ for @setVersion:@
setVersionSelector :: Selector '[Id NSNumber] ()
setVersionSelector = mkSelector "setVersion:"

-- | @Selector@ for @vendorID@
vendorIDSelector :: Selector '[] (Id NSNumber)
vendorIDSelector = mkSelector "vendorID"

-- | @Selector@ for @setVendorID:@
setVendorIDSelector :: Selector '[Id NSNumber] ()
setVendorIDSelector = mkSelector "setVendorID:"

-- | @Selector@ for @productID@
productIDSelector :: Selector '[] (Id NSNumber)
productIDSelector = mkSelector "productID"

-- | @Selector@ for @setProductID:@
setProductIDSelector :: Selector '[Id NSNumber] ()
setProductIDSelector = mkSelector "setProductID:"

-- | @Selector@ for @commissioningFlow@
commissioningFlowSelector :: Selector '[] MTRCommissioningFlow
commissioningFlowSelector = mkSelector "commissioningFlow"

-- | @Selector@ for @setCommissioningFlow:@
setCommissioningFlowSelector :: Selector '[MTRCommissioningFlow] ()
setCommissioningFlowSelector = mkSelector "setCommissioningFlow:"

-- | @Selector@ for @rendezvousInformation@
rendezvousInformationSelector :: Selector '[] (Id NSNumber)
rendezvousInformationSelector = mkSelector "rendezvousInformation"

-- | @Selector@ for @setRendezvousInformation:@
setRendezvousInformationSelector :: Selector '[Id NSNumber] ()
setRendezvousInformationSelector = mkSelector "setRendezvousInformation:"

-- | @Selector@ for @discriminator@
discriminatorSelector :: Selector '[] (Id NSNumber)
discriminatorSelector = mkSelector "discriminator"

-- | @Selector@ for @setDiscriminator:@
setDiscriminatorSelector :: Selector '[Id NSNumber] ()
setDiscriminatorSelector = mkSelector "setDiscriminator:"

-- | @Selector@ for @hasShortDiscriminator@
hasShortDiscriminatorSelector :: Selector '[] Bool
hasShortDiscriminatorSelector = mkSelector "hasShortDiscriminator"

-- | @Selector@ for @setHasShortDiscriminator:@
setHasShortDiscriminatorSelector :: Selector '[Bool] ()
setHasShortDiscriminatorSelector = mkSelector "setHasShortDiscriminator:"

-- | @Selector@ for @setUpPINCode@
setUpPINCodeSelector :: Selector '[] (Id NSNumber)
setUpPINCodeSelector = mkSelector "setUpPINCode"

-- | @Selector@ for @setSetUpPINCode:@
setSetUpPINCodeSelector :: Selector '[Id NSNumber] ()
setSetUpPINCodeSelector = mkSelector "setSetUpPINCode:"

-- | @Selector@ for @serialNumber@
serialNumberSelector :: Selector '[] (Id NSString)
serialNumberSelector = mkSelector "serialNumber"

-- | @Selector@ for @setSerialNumber:@
setSerialNumberSelector :: Selector '[Id NSString] ()
setSerialNumberSelector = mkSelector "setSerialNumber:"

