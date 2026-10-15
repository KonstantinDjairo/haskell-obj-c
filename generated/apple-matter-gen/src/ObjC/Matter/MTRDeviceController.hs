{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDeviceController@.
module ObjC.Matter.MTRDeviceController
  ( MTRDeviceController
  , IsMTRDeviceController(..)
  , setupCommissioningSessionWithPayload_newNodeID_error
  , pairDevice_discriminator_setupPINCode_error
  , pairDevice_address_port_setupPINCode_error
  , pairDevice_onboardingPayload_error
  , commissionDevice_commissioningParams_error
  , continueCommissioningDevice_ignoreAttestationFailure_error
  , stopDevicePairing_error
  , getDeviceBeingCommissioned_error
  , getBaseDevice_queue_completionHandler
  , openPairingWindow_duration_error
  , openPairingWindowWithPIN_duration_discriminator_setupPIN_error
  , init_
  , new
  , setPairingDelegate_queue
  , setNocChainIssuer_queue
  , fetchAttestationChallengeForDeviceId
  , computePaseVerifier_iterations_salt
  , shutdown
  , sharedControllerWithId_xpcConnectBlock
  , encodeXPCResponseValues
  , decodeXPCResponseValues
  , encodeXPCReadParams
  , decodeXPCReadParams
  , encodeXPCSubscribeParams
  , decodeXPCSubscribeParams
  , isRunning
  , controllerNodeId
  , commissionDevice_commissioningParams_errorSelector
  , computePaseVerifier_iterations_saltSelector
  , continueCommissioningDevice_ignoreAttestationFailure_errorSelector
  , controllerNodeIdSelector
  , decodeXPCReadParamsSelector
  , decodeXPCResponseValuesSelector
  , decodeXPCSubscribeParamsSelector
  , encodeXPCReadParamsSelector
  , encodeXPCResponseValuesSelector
  , encodeXPCSubscribeParamsSelector
  , fetchAttestationChallengeForDeviceIdSelector
  , getBaseDevice_queue_completionHandlerSelector
  , getDeviceBeingCommissioned_errorSelector
  , initSelector
  , isRunningSelector
  , newSelector
  , openPairingWindowWithPIN_duration_discriminator_setupPIN_errorSelector
  , openPairingWindow_duration_errorSelector
  , pairDevice_address_port_setupPINCode_errorSelector
  , pairDevice_discriminator_setupPINCode_errorSelector
  , pairDevice_onboardingPayload_errorSelector
  , setNocChainIssuer_queueSelector
  , setPairingDelegate_queueSelector
  , setupCommissioningSessionWithPayload_newNodeID_errorSelector
  , sharedControllerWithId_xpcConnectBlockSelector
  , shutdownSelector
  , stopDevicePairing_errorSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Set up a commissioning session for a device, using the provided setup payload to discover it and connect to it.
--
-- @payload@ — a setup payload (probably created from a QR code or numeric                code onboarding payload).
--
-- @newNodeID@ — the planned node id for the node.  error indication if discovery can't start at all (e.g. because the              setup payload is invalid).
--
-- The IP and port for the device will be discovered automatically based on the provided discriminator.
--
-- Then a PASE session will be established with the device, unless an error occurs.  MTRDevicePairingDelegate will be notified as follows:
--
-- * Discovery fails: onStatusUpdate with MTRPairingStatusFailed.
--
-- * Discovery succeeds but commissioning session setup fails: onPairingComplete   with an error.
--
-- * Commissioning session setup succeeds: onPairingComplete with no error.
--
-- Once a commissioning session is set up, getDeviceBeingCommissioned can be used to get an MTRBaseDevice and discover what sort of network credentials the device might need, and commissionDevice can be used to commission the device.
--
-- ObjC selector: @- setupCommissioningSessionWithPayload:newNodeID:error:@
setupCommissioningSessionWithPayload_newNodeID_error :: (IsMTRDeviceController mtrDeviceController, IsMTRSetupPayload payload, IsNSNumber newNodeID, IsNSError error_) => mtrDeviceController -> payload -> newNodeID -> error_ -> IO Bool
setupCommissioningSessionWithPayload_newNodeID_error mtrDeviceController payload newNodeID error_ =
  sendMessage mtrDeviceController setupCommissioningSessionWithPayload_newNodeID_errorSelector (toMTRSetupPayload payload) (toNSNumber newNodeID) (toNSError error_)

-- | Start pairing for a device with the given ID, using the provided setup PIN to establish a PASE connection.
--
-- The IP and port for the device will be discovered automatically based on the provided discriminator.
--
-- The pairing process will proceed until a PASE session is established or an error occurs, then notify onPairingComplete on the MTRDevicePairingDelegate for this controller.  That delegate is expected to call commissionDevice after that point if it wants to commission the device.
--
-- ObjC selector: @- pairDevice:discriminator:setupPINCode:error:@
pairDevice_discriminator_setupPINCode_error :: (IsMTRDeviceController mtrDeviceController, IsNSError error_) => mtrDeviceController -> CULong -> CUShort -> CUInt -> error_ -> IO Bool
pairDevice_discriminator_setupPINCode_error mtrDeviceController deviceID discriminator setupPINCode error_ =
  sendMessage mtrDeviceController pairDevice_discriminator_setupPINCode_errorSelector deviceID discriminator setupPINCode (toNSError error_)

-- | Start pairing for a device with the given ID, using the provided IP address and port to connect to the device and the provided setup PIN to establish a PASE connection.
--
-- The pairing process will proceed until a PASE session is established or an error occurs, then notify onPairingComplete on the MTRDevicePairingDelegate for this controller.  That delegate is expected to call commissionDevice after that point if it wants to commission the device.
--
-- ObjC selector: @- pairDevice:address:port:setupPINCode:error:@
pairDevice_address_port_setupPINCode_error :: (IsMTRDeviceController mtrDeviceController, IsNSString address, IsNSError error_) => mtrDeviceController -> CULong -> address -> CUShort -> CUInt -> error_ -> IO Bool
pairDevice_address_port_setupPINCode_error mtrDeviceController deviceID address port setupPINCode error_ =
  sendMessage mtrDeviceController pairDevice_address_port_setupPINCode_errorSelector deviceID (toNSString address) port setupPINCode (toNSError error_)

-- | Start pairing for a device with the given ID and onboarding payload (QR code or manual setup code).  The payload will be used to discover the device and establish a PASE connection.
--
-- The pairing process will proceed until a PASE session is established or an error occurs, then notify onPairingComplete on the MTRDevicePairingDelegate for this controller.  That delegate is expected to call commissionDevice after that point if it wants to commission the device.
--
-- ObjC selector: @- pairDevice:onboardingPayload:error:@
pairDevice_onboardingPayload_error :: (IsMTRDeviceController mtrDeviceController, IsNSString onboardingPayload, IsNSError error_) => mtrDeviceController -> CULong -> onboardingPayload -> error_ -> IO Bool
pairDevice_onboardingPayload_error mtrDeviceController deviceID onboardingPayload error_ =
  sendMessage mtrDeviceController pairDevice_onboardingPayload_errorSelector deviceID (toNSString onboardingPayload) (toNSError error_)

-- | @- commissionDevice:commissioningParams:error:@
commissionDevice_commissioningParams_error :: (IsMTRDeviceController mtrDeviceController, IsMTRCommissioningParameters commissioningParams, IsNSError error_) => mtrDeviceController -> CULong -> commissioningParams -> error_ -> IO Bool
commissionDevice_commissioningParams_error mtrDeviceController deviceId commissioningParams error_ =
  sendMessage mtrDeviceController commissionDevice_commissioningParams_errorSelector deviceId (toMTRCommissioningParameters commissioningParams) (toNSError error_)

-- | @- continueCommissioningDevice:ignoreAttestationFailure:error:@
continueCommissioningDevice_ignoreAttestationFailure_error :: (IsMTRDeviceController mtrDeviceController, IsNSError error_) => mtrDeviceController -> Ptr () -> Bool -> error_ -> IO Bool
continueCommissioningDevice_ignoreAttestationFailure_error mtrDeviceController device ignoreAttestationFailure error_ =
  sendMessage mtrDeviceController continueCommissioningDevice_ignoreAttestationFailure_errorSelector device ignoreAttestationFailure (toNSError error_)

-- | @- stopDevicePairing:error:@
stopDevicePairing_error :: (IsMTRDeviceController mtrDeviceController, IsNSError error_) => mtrDeviceController -> CULong -> error_ -> IO Bool
stopDevicePairing_error mtrDeviceController deviceID error_ =
  sendMessage mtrDeviceController stopDevicePairing_errorSelector deviceID (toNSError error_)

-- | @- getDeviceBeingCommissioned:error:@
getDeviceBeingCommissioned_error :: (IsMTRDeviceController mtrDeviceController, IsNSError error_) => mtrDeviceController -> CULong -> error_ -> IO (Id MTRBaseDevice)
getDeviceBeingCommissioned_error mtrDeviceController deviceId error_ =
  sendMessage mtrDeviceController getDeviceBeingCommissioned_errorSelector deviceId (toNSError error_)

-- | @- getBaseDevice:queue:completionHandler:@
getBaseDevice_queue_completionHandler :: (IsMTRDeviceController mtrDeviceController, IsNSObject queue) => mtrDeviceController -> CULong -> queue -> Ptr () -> IO Bool
getBaseDevice_queue_completionHandler mtrDeviceController deviceID queue completionHandler =
  sendMessage mtrDeviceController getBaseDevice_queue_completionHandlerSelector deviceID (toNSObject queue) completionHandler

-- | @- openPairingWindow:duration:error:@
openPairingWindow_duration_error :: (IsMTRDeviceController mtrDeviceController, IsNSError error_) => mtrDeviceController -> CULong -> CULong -> error_ -> IO Bool
openPairingWindow_duration_error mtrDeviceController deviceID duration error_ =
  sendMessage mtrDeviceController openPairingWindow_duration_errorSelector deviceID duration (toNSError error_)

-- | @- openPairingWindowWithPIN:duration:discriminator:setupPIN:error:@
openPairingWindowWithPIN_duration_discriminator_setupPIN_error :: (IsMTRDeviceController mtrDeviceController, IsNSError error_) => mtrDeviceController -> CULong -> CULong -> CULong -> CULong -> error_ -> IO (Id NSString)
openPairingWindowWithPIN_duration_discriminator_setupPIN_error mtrDeviceController deviceID duration discriminator setupPIN error_ =
  sendMessage mtrDeviceController openPairingWindowWithPIN_duration_discriminator_setupPIN_errorSelector deviceID duration discriminator setupPIN (toNSError error_)

-- | Controllers are created via the MTRControllerFactory object.
--
-- ObjC selector: @- init@
init_ :: IsMTRDeviceController mtrDeviceController => mtrDeviceController -> IO (Id MTRDeviceController)
init_ mtrDeviceController =
  sendOwnedMessage mtrDeviceController initSelector

-- | @+ new@
new :: IO (Id MTRDeviceController)
new  =
  do
    cls' <- getRequiredClass "MTRDeviceController"
    sendOwnedClassMessage cls' newSelector

-- | Set the Delegate for the Device Pairing  as well as the Queue on which the Delegate callbacks will be triggered
--
-- @delegate@ — The delegate the pairing process should use
--
-- @queue@ — The queue on which the callbacks will be delivered
--
-- ObjC selector: @- setPairingDelegate:queue:@
setPairingDelegate_queue :: (IsMTRDeviceController mtrDeviceController, IsNSObject queue) => mtrDeviceController -> RawId -> queue -> IO ()
setPairingDelegate_queue mtrDeviceController delegate queue =
  sendMessage mtrDeviceController setPairingDelegate_queueSelector delegate (toNSObject queue)

-- | Sets this MTRDeviceController to use the given issuer for issuing operational certs. By default, the MTRDeviceController uses an internal issuer.
--
-- When a nocChainIssuer is set, the device commissioner will delegate verification to the chip::Credentials::PartialDACVerifier so that DAC chain and CD validation can be performed by custom code triggered by MTRNOCChainIssuer.onNOCChainGenerationNeeded(). Otherwise, the device commissioner uses the chip::Credentials::DefaultDACVerifier
--
-- @nocChainIssuer@ — the NOC Chain issuer to use for issuer operational certs
--
-- @queue@ — The queue on which the callbacks will be delivered
--
-- ObjC selector: @- setNocChainIssuer:queue:@
setNocChainIssuer_queue :: (IsMTRDeviceController mtrDeviceController, IsNSObject queue) => mtrDeviceController -> RawId -> queue -> IO ()
setNocChainIssuer_queue mtrDeviceController nocChainIssuer queue =
  sendMessage mtrDeviceController setNocChainIssuer_queueSelector nocChainIssuer (toNSObject queue)

-- | Return the attestation challenge for the secure session of the device being commissioned.
--
-- Attempts to retrieve the attestation challenge for a commissionee with the given Device ID. Returns nil if given Device ID does not match an active commissionee, or if a Secure Session is not availale.
--
-- ObjC selector: @- fetchAttestationChallengeForDeviceId:@
fetchAttestationChallengeForDeviceId :: IsMTRDeviceController mtrDeviceController => mtrDeviceController -> CULong -> IO (Id NSData)
fetchAttestationChallengeForDeviceId mtrDeviceController deviceId =
  sendMessage mtrDeviceController fetchAttestationChallengeForDeviceIdSelector deviceId

-- | Compute a PASE verifier and passcode ID for the desired setup pincode.
--
-- @setupPincode@ — The desired PIN code to use
--
-- @iterations@ — The number of iterations to use when generating the verifier
--
-- @salt@ — The 16-byte salt for verifier computation
--
-- Returns nil on errors (e.g. salt has the wrong size), otherwise the computed verifier bytes.
--
-- ObjC selector: @- computePaseVerifier:iterations:salt:@
computePaseVerifier_iterations_salt :: (IsMTRDeviceController mtrDeviceController, IsNSData salt) => mtrDeviceController -> CUInt -> CUInt -> salt -> IO (Id NSData)
computePaseVerifier_iterations_salt mtrDeviceController setupPincode iterations salt =
  sendMessage mtrDeviceController computePaseVerifier_iterations_saltSelector setupPincode iterations (toNSData salt)

-- | Shutdown the controller. Calls to shutdown after the first one are NO-OPs.
--
-- ObjC selector: @- shutdown@
shutdown :: IsMTRDeviceController mtrDeviceController => mtrDeviceController -> IO ()
shutdown mtrDeviceController =
  sendMessage mtrDeviceController shutdownSelector

-- | Returns a shared device controller proxy for the controller object over XPC connection.
--
-- @controllerId@ — an implementation specific id in case multiple shared device controllers are available over XPC connection
--
-- @connectBlock@ — block to connect to an XPC listener serving the shared device controllers in an implementation specific way
--
-- ObjC selector: @+ sharedControllerWithId:xpcConnectBlock:@
sharedControllerWithId_xpcConnectBlock :: RawId -> Ptr () -> IO (Id MTRDeviceController)
sharedControllerWithId_xpcConnectBlock controllerId connectBlock =
  do
    cls' <- getRequiredClass "MTRDeviceController"
    sendClassMessage cls' sharedControllerWithId_xpcConnectBlockSelector controllerId connectBlock

-- | Returns an encoded values object to send over XPC for read, write and command interactions
--
-- ObjC selector: @+ encodeXPCResponseValues:@
encodeXPCResponseValues :: IsNSArray values => values -> IO (Id NSArray)
encodeXPCResponseValues values =
  do
    cls' <- getRequiredClass "MTRDeviceController"
    sendClassMessage cls' encodeXPCResponseValuesSelector (toNSArray values)

-- | Returns a decoded values object from a values object received from XPC for read, write and command interactions
--
-- ObjC selector: @+ decodeXPCResponseValues:@
decodeXPCResponseValues :: IsNSArray values => values -> IO (Id NSArray)
decodeXPCResponseValues values =
  do
    cls' <- getRequiredClass "MTRDeviceController"
    sendClassMessage cls' decodeXPCResponseValuesSelector (toNSArray values)

-- | Returns a serialized read parameter object to send over XPC
--
-- ObjC selector: @+ encodeXPCReadParams:@
encodeXPCReadParams :: IsMTRReadParams params => params -> IO (Id NSDictionary)
encodeXPCReadParams params =
  do
    cls' <- getRequiredClass "MTRDeviceController"
    sendClassMessage cls' encodeXPCReadParamsSelector (toMTRReadParams params)

-- | Returns a deserialized read parameter object from an object received over XPC
--
-- ObjC selector: @+ decodeXPCReadParams:@
decodeXPCReadParams :: IsNSDictionary params => params -> IO (Id MTRReadParams)
decodeXPCReadParams params =
  do
    cls' <- getRequiredClass "MTRDeviceController"
    sendClassMessage cls' decodeXPCReadParamsSelector (toNSDictionary params)

-- | Returns a serialized subscribe parameter object to send over XPC
--
-- ObjC selector: @+ encodeXPCSubscribeParams:@
encodeXPCSubscribeParams :: IsMTRSubscribeParams params => params -> IO (Id NSDictionary)
encodeXPCSubscribeParams params =
  do
    cls' <- getRequiredClass "MTRDeviceController"
    sendClassMessage cls' encodeXPCSubscribeParamsSelector (toMTRSubscribeParams params)

-- | Returns a deserialized subscribe parameter object from an object received over XPC
--
-- ObjC selector: @+ decodeXPCSubscribeParams:@
decodeXPCSubscribeParams :: IsNSDictionary params => params -> IO (Id MTRSubscribeParams)
decodeXPCSubscribeParams params =
  do
    cls' <- getRequiredClass "MTRDeviceController"
    sendClassMessage cls' decodeXPCSubscribeParamsSelector (toNSDictionary params)

-- | @- isRunning@
isRunning :: IsMTRDeviceController mtrDeviceController => mtrDeviceController -> IO Bool
isRunning mtrDeviceController =
  sendMessage mtrDeviceController isRunningSelector

-- | Return the Node Id assigned to the controller.  Will return nil if the controller is not running (and hence does not know its node id).
--
-- ObjC selector: @- controllerNodeId@
controllerNodeId :: IsMTRDeviceController mtrDeviceController => mtrDeviceController -> IO (Id NSNumber)
controllerNodeId mtrDeviceController =
  sendMessage mtrDeviceController controllerNodeIdSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @setupCommissioningSessionWithPayload:newNodeID:error:@
setupCommissioningSessionWithPayload_newNodeID_errorSelector :: Selector '[Id MTRSetupPayload, Id NSNumber, Id NSError] Bool
setupCommissioningSessionWithPayload_newNodeID_errorSelector = mkSelector "setupCommissioningSessionWithPayload:newNodeID:error:"

-- | @Selector@ for @pairDevice:discriminator:setupPINCode:error:@
pairDevice_discriminator_setupPINCode_errorSelector :: Selector '[CULong, CUShort, CUInt, Id NSError] Bool
pairDevice_discriminator_setupPINCode_errorSelector = mkSelector "pairDevice:discriminator:setupPINCode:error:"

-- | @Selector@ for @pairDevice:address:port:setupPINCode:error:@
pairDevice_address_port_setupPINCode_errorSelector :: Selector '[CULong, Id NSString, CUShort, CUInt, Id NSError] Bool
pairDevice_address_port_setupPINCode_errorSelector = mkSelector "pairDevice:address:port:setupPINCode:error:"

-- | @Selector@ for @pairDevice:onboardingPayload:error:@
pairDevice_onboardingPayload_errorSelector :: Selector '[CULong, Id NSString, Id NSError] Bool
pairDevice_onboardingPayload_errorSelector = mkSelector "pairDevice:onboardingPayload:error:"

-- | @Selector@ for @commissionDevice:commissioningParams:error:@
commissionDevice_commissioningParams_errorSelector :: Selector '[CULong, Id MTRCommissioningParameters, Id NSError] Bool
commissionDevice_commissioningParams_errorSelector = mkSelector "commissionDevice:commissioningParams:error:"

-- | @Selector@ for @continueCommissioningDevice:ignoreAttestationFailure:error:@
continueCommissioningDevice_ignoreAttestationFailure_errorSelector :: Selector '[Ptr (), Bool, Id NSError] Bool
continueCommissioningDevice_ignoreAttestationFailure_errorSelector = mkSelector "continueCommissioningDevice:ignoreAttestationFailure:error:"

-- | @Selector@ for @stopDevicePairing:error:@
stopDevicePairing_errorSelector :: Selector '[CULong, Id NSError] Bool
stopDevicePairing_errorSelector = mkSelector "stopDevicePairing:error:"

-- | @Selector@ for @getDeviceBeingCommissioned:error:@
getDeviceBeingCommissioned_errorSelector :: Selector '[CULong, Id NSError] (Id MTRBaseDevice)
getDeviceBeingCommissioned_errorSelector = mkSelector "getDeviceBeingCommissioned:error:"

-- | @Selector@ for @getBaseDevice:queue:completionHandler:@
getBaseDevice_queue_completionHandlerSelector :: Selector '[CULong, Id NSObject, Ptr ()] Bool
getBaseDevice_queue_completionHandlerSelector = mkSelector "getBaseDevice:queue:completionHandler:"

-- | @Selector@ for @openPairingWindow:duration:error:@
openPairingWindow_duration_errorSelector :: Selector '[CULong, CULong, Id NSError] Bool
openPairingWindow_duration_errorSelector = mkSelector "openPairingWindow:duration:error:"

-- | @Selector@ for @openPairingWindowWithPIN:duration:discriminator:setupPIN:error:@
openPairingWindowWithPIN_duration_discriminator_setupPIN_errorSelector :: Selector '[CULong, CULong, CULong, CULong, Id NSError] (Id NSString)
openPairingWindowWithPIN_duration_discriminator_setupPIN_errorSelector = mkSelector "openPairingWindowWithPIN:duration:discriminator:setupPIN:error:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDeviceController)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRDeviceController)
newSelector = mkSelector "new"

-- | @Selector@ for @setPairingDelegate:queue:@
setPairingDelegate_queueSelector :: Selector '[RawId, Id NSObject] ()
setPairingDelegate_queueSelector = mkSelector "setPairingDelegate:queue:"

-- | @Selector@ for @setNocChainIssuer:queue:@
setNocChainIssuer_queueSelector :: Selector '[RawId, Id NSObject] ()
setNocChainIssuer_queueSelector = mkSelector "setNocChainIssuer:queue:"

-- | @Selector@ for @fetchAttestationChallengeForDeviceId:@
fetchAttestationChallengeForDeviceIdSelector :: Selector '[CULong] (Id NSData)
fetchAttestationChallengeForDeviceIdSelector = mkSelector "fetchAttestationChallengeForDeviceId:"

-- | @Selector@ for @computePaseVerifier:iterations:salt:@
computePaseVerifier_iterations_saltSelector :: Selector '[CUInt, CUInt, Id NSData] (Id NSData)
computePaseVerifier_iterations_saltSelector = mkSelector "computePaseVerifier:iterations:salt:"

-- | @Selector@ for @shutdown@
shutdownSelector :: Selector '[] ()
shutdownSelector = mkSelector "shutdown"

-- | @Selector@ for @sharedControllerWithId:xpcConnectBlock:@
sharedControllerWithId_xpcConnectBlockSelector :: Selector '[RawId, Ptr ()] (Id MTRDeviceController)
sharedControllerWithId_xpcConnectBlockSelector = mkSelector "sharedControllerWithId:xpcConnectBlock:"

-- | @Selector@ for @encodeXPCResponseValues:@
encodeXPCResponseValuesSelector :: Selector '[Id NSArray] (Id NSArray)
encodeXPCResponseValuesSelector = mkSelector "encodeXPCResponseValues:"

-- | @Selector@ for @decodeXPCResponseValues:@
decodeXPCResponseValuesSelector :: Selector '[Id NSArray] (Id NSArray)
decodeXPCResponseValuesSelector = mkSelector "decodeXPCResponseValues:"

-- | @Selector@ for @encodeXPCReadParams:@
encodeXPCReadParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
encodeXPCReadParamsSelector = mkSelector "encodeXPCReadParams:"

-- | @Selector@ for @decodeXPCReadParams:@
decodeXPCReadParamsSelector :: Selector '[Id NSDictionary] (Id MTRReadParams)
decodeXPCReadParamsSelector = mkSelector "decodeXPCReadParams:"

-- | @Selector@ for @encodeXPCSubscribeParams:@
encodeXPCSubscribeParamsSelector :: Selector '[Id MTRSubscribeParams] (Id NSDictionary)
encodeXPCSubscribeParamsSelector = mkSelector "encodeXPCSubscribeParams:"

-- | @Selector@ for @decodeXPCSubscribeParams:@
decodeXPCSubscribeParamsSelector :: Selector '[Id NSDictionary] (Id MTRSubscribeParams)
decodeXPCSubscribeParamsSelector = mkSelector "decodeXPCSubscribeParams:"

-- | @Selector@ for @isRunning@
isRunningSelector :: Selector '[] Bool
isRunningSelector = mkSelector "isRunning"

-- | @Selector@ for @controllerNodeId@
controllerNodeIdSelector :: Selector '[] (Id NSNumber)
controllerNodeIdSelector = mkSelector "controllerNodeId"

