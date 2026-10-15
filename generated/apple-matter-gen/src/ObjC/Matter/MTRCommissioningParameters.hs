{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | The class definition for the CHIPCommissioningParameters
--
-- Generated bindings for @MTRCommissioningParameters@.
module ObjC.Matter.MTRCommissioningParameters
  ( MTRCommissioningParameters
  , IsMTRCommissioningParameters(..)
  , csrNonce
  , setCSRNonce
  , attestationNonce
  , setAttestationNonce
  , wifiSSID
  , setWifiSSID
  , wifiCredentials
  , setWifiCredentials
  , threadOperationalDataset
  , setThreadOperationalDataset
  , deviceAttestationDelegate
  , setDeviceAttestationDelegate
  , failSafeExpiryTimeoutSecs
  , setFailSafeExpiryTimeoutSecs
  , attestationNonceSelector
  , csrNonceSelector
  , deviceAttestationDelegateSelector
  , failSafeExpiryTimeoutSecsSelector
  , setAttestationNonceSelector
  , setCSRNonceSelector
  , setDeviceAttestationDelegateSelector
  , setFailSafeExpiryTimeoutSecsSelector
  , setThreadOperationalDatasetSelector
  , setWifiCredentialsSelector
  , setWifiSSIDSelector
  , threadOperationalDatasetSelector
  , wifiCredentialsSelector
  , wifiSSIDSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | The CSRNonce
--
-- ObjC selector: @- CSRNonce@
csrNonce :: IsMTRCommissioningParameters mtrCommissioningParameters => mtrCommissioningParameters -> IO (Id NSData)
csrNonce mtrCommissioningParameters =
  sendMessage mtrCommissioningParameters csrNonceSelector

-- | The CSRNonce
--
-- ObjC selector: @- setCSRNonce:@
setCSRNonce :: (IsMTRCommissioningParameters mtrCommissioningParameters, IsNSData value) => mtrCommissioningParameters -> value -> IO ()
setCSRNonce mtrCommissioningParameters value =
  sendMessage mtrCommissioningParameters setCSRNonceSelector (toNSData value)

-- | The AttestationNonce
--
-- ObjC selector: @- attestationNonce@
attestationNonce :: IsMTRCommissioningParameters mtrCommissioningParameters => mtrCommissioningParameters -> IO (Id NSData)
attestationNonce mtrCommissioningParameters =
  sendMessage mtrCommissioningParameters attestationNonceSelector

-- | The AttestationNonce
--
-- ObjC selector: @- setAttestationNonce:@
setAttestationNonce :: (IsMTRCommissioningParameters mtrCommissioningParameters, IsNSData value) => mtrCommissioningParameters -> value -> IO ()
setAttestationNonce mtrCommissioningParameters value =
  sendMessage mtrCommissioningParameters setAttestationNonceSelector (toNSData value)

-- | The Wi-Fi SSID, if available.
--
-- ObjC selector: @- wifiSSID@
wifiSSID :: IsMTRCommissioningParameters mtrCommissioningParameters => mtrCommissioningParameters -> IO (Id NSData)
wifiSSID mtrCommissioningParameters =
  sendMessage mtrCommissioningParameters wifiSSIDSelector

-- | The Wi-Fi SSID, if available.
--
-- ObjC selector: @- setWifiSSID:@
setWifiSSID :: (IsMTRCommissioningParameters mtrCommissioningParameters, IsNSData value) => mtrCommissioningParameters -> value -> IO ()
setWifiSSID mtrCommissioningParameters value =
  sendMessage mtrCommissioningParameters setWifiSSIDSelector (toNSData value)

-- | The Wi-Fi Credentials.  Allowed to be nil or 0-length data for an open  network, as long as wifiSSID is not nil.
--
-- ObjC selector: @- wifiCredentials@
wifiCredentials :: IsMTRCommissioningParameters mtrCommissioningParameters => mtrCommissioningParameters -> IO (Id NSData)
wifiCredentials mtrCommissioningParameters =
  sendMessage mtrCommissioningParameters wifiCredentialsSelector

-- | The Wi-Fi Credentials.  Allowed to be nil or 0-length data for an open  network, as long as wifiSSID is not nil.
--
-- ObjC selector: @- setWifiCredentials:@
setWifiCredentials :: (IsMTRCommissioningParameters mtrCommissioningParameters, IsNSData value) => mtrCommissioningParameters -> value -> IO ()
setWifiCredentials mtrCommissioningParameters value =
  sendMessage mtrCommissioningParameters setWifiCredentialsSelector (toNSData value)

-- | The Thread operational dataset, if available.
--
-- ObjC selector: @- threadOperationalDataset@
threadOperationalDataset :: IsMTRCommissioningParameters mtrCommissioningParameters => mtrCommissioningParameters -> IO (Id NSData)
threadOperationalDataset mtrCommissioningParameters =
  sendMessage mtrCommissioningParameters threadOperationalDatasetSelector

-- | The Thread operational dataset, if available.
--
-- ObjC selector: @- setThreadOperationalDataset:@
setThreadOperationalDataset :: (IsMTRCommissioningParameters mtrCommissioningParameters, IsNSData value) => mtrCommissioningParameters -> value -> IO ()
setThreadOperationalDataset mtrCommissioningParameters value =
  sendMessage mtrCommissioningParameters setThreadOperationalDatasetSelector (toNSData value)

-- | The Device Attestation status delegate
--
-- ObjC selector: @- deviceAttestationDelegate@
deviceAttestationDelegate :: IsMTRCommissioningParameters mtrCommissioningParameters => mtrCommissioningParameters -> IO RawId
deviceAttestationDelegate mtrCommissioningParameters =
  sendMessage mtrCommissioningParameters deviceAttestationDelegateSelector

-- | The Device Attestation status delegate
--
-- ObjC selector: @- setDeviceAttestationDelegate:@
setDeviceAttestationDelegate :: IsMTRCommissioningParameters mtrCommissioningParameters => mtrCommissioningParameters -> RawId -> IO ()
setDeviceAttestationDelegate mtrCommissioningParameters value =
  sendMessage mtrCommissioningParameters setDeviceAttestationDelegateSelector value

-- | The timeout in secs to set for fail-safe when attestation fails
--
-- ObjC selector: @- failSafeExpiryTimeoutSecs@
failSafeExpiryTimeoutSecs :: IsMTRCommissioningParameters mtrCommissioningParameters => mtrCommissioningParameters -> IO (Id NSNumber)
failSafeExpiryTimeoutSecs mtrCommissioningParameters =
  sendMessage mtrCommissioningParameters failSafeExpiryTimeoutSecsSelector

-- | The timeout in secs to set for fail-safe when attestation fails
--
-- ObjC selector: @- setFailSafeExpiryTimeoutSecs:@
setFailSafeExpiryTimeoutSecs :: (IsMTRCommissioningParameters mtrCommissioningParameters, IsNSNumber value) => mtrCommissioningParameters -> value -> IO ()
setFailSafeExpiryTimeoutSecs mtrCommissioningParameters value =
  sendMessage mtrCommissioningParameters setFailSafeExpiryTimeoutSecsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @CSRNonce@
csrNonceSelector :: Selector '[] (Id NSData)
csrNonceSelector = mkSelector "CSRNonce"

-- | @Selector@ for @setCSRNonce:@
setCSRNonceSelector :: Selector '[Id NSData] ()
setCSRNonceSelector = mkSelector "setCSRNonce:"

-- | @Selector@ for @attestationNonce@
attestationNonceSelector :: Selector '[] (Id NSData)
attestationNonceSelector = mkSelector "attestationNonce"

-- | @Selector@ for @setAttestationNonce:@
setAttestationNonceSelector :: Selector '[Id NSData] ()
setAttestationNonceSelector = mkSelector "setAttestationNonce:"

-- | @Selector@ for @wifiSSID@
wifiSSIDSelector :: Selector '[] (Id NSData)
wifiSSIDSelector = mkSelector "wifiSSID"

-- | @Selector@ for @setWifiSSID:@
setWifiSSIDSelector :: Selector '[Id NSData] ()
setWifiSSIDSelector = mkSelector "setWifiSSID:"

-- | @Selector@ for @wifiCredentials@
wifiCredentialsSelector :: Selector '[] (Id NSData)
wifiCredentialsSelector = mkSelector "wifiCredentials"

-- | @Selector@ for @setWifiCredentials:@
setWifiCredentialsSelector :: Selector '[Id NSData] ()
setWifiCredentialsSelector = mkSelector "setWifiCredentials:"

-- | @Selector@ for @threadOperationalDataset@
threadOperationalDatasetSelector :: Selector '[] (Id NSData)
threadOperationalDatasetSelector = mkSelector "threadOperationalDataset"

-- | @Selector@ for @setThreadOperationalDataset:@
setThreadOperationalDatasetSelector :: Selector '[Id NSData] ()
setThreadOperationalDatasetSelector = mkSelector "setThreadOperationalDataset:"

-- | @Selector@ for @deviceAttestationDelegate@
deviceAttestationDelegateSelector :: Selector '[] RawId
deviceAttestationDelegateSelector = mkSelector "deviceAttestationDelegate"

-- | @Selector@ for @setDeviceAttestationDelegate:@
setDeviceAttestationDelegateSelector :: Selector '[RawId] ()
setDeviceAttestationDelegateSelector = mkSelector "setDeviceAttestationDelegate:"

-- | @Selector@ for @failSafeExpiryTimeoutSecs@
failSafeExpiryTimeoutSecsSelector :: Selector '[] (Id NSNumber)
failSafeExpiryTimeoutSecsSelector = mkSelector "failSafeExpiryTimeoutSecs"

-- | @Selector@ for @setFailSafeExpiryTimeoutSecs:@
setFailSafeExpiryTimeoutSecsSelector :: Selector '[Id NSNumber] ()
setFailSafeExpiryTimeoutSecsSelector = mkSelector "setFailSafeExpiryTimeoutSecs:"

