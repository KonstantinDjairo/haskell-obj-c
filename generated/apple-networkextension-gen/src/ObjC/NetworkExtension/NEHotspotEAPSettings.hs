{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | NEHotspotEAPSettings
--
-- NEHotspotEAPSettings class provides a set of properties that are required   to configure a WPA/WPA2 Enterprise or Hotspot 2.0 Wi-Fi networks.
--
-- Generated bindings for @NEHotspotEAPSettings@.
module ObjC.NetworkExtension.NEHotspotEAPSettings
  ( NEHotspotEAPSettings
  , IsNEHotspotEAPSettings(..)
  , setIdentity
  , setTrustedServerCertificates
  , username
  , setUsername
  , outerIdentity
  , setOuterIdentity
  , ttlsInnerAuthenticationType
  , setTtlsInnerAuthenticationType
  , password
  , setPassword
  , tlsClientCertificateRequired
  , setTlsClientCertificateRequired
  , preferredTLSVersion
  , setPreferredTLSVersion
  , outerIdentitySelector
  , passwordSelector
  , preferredTLSVersionSelector
  , setIdentitySelector
  , setOuterIdentitySelector
  , setPasswordSelector
  , setPreferredTLSVersionSelector
  , setTlsClientCertificateRequiredSelector
  , setTrustedServerCertificatesSelector
  , setTtlsInnerAuthenticationTypeSelector
  , setUsernameSelector
  , tlsClientCertificateRequiredSelector
  , ttlsInnerAuthenticationTypeSelector
  , usernameSelector

  -- * Enum types
  , NEHotspotConfigurationEAPTLSVersion(NEHotspotConfigurationEAPTLSVersion)
  , pattern NEHotspotConfigurationEAPTLSVersion_1_0
  , pattern NEHotspotConfigurationEAPTLSVersion_1_1
  , pattern NEHotspotConfigurationEAPTLSVersion_1_2
  , NEHotspotConfigurationTTLSInnerAuthenticationType(NEHotspotConfigurationTTLSInnerAuthenticationType)
  , pattern NEHotspotConfigurationEAPTTLSInnerAuthenticationPAP
  , pattern NEHotspotConfigurationEAPTTLSInnerAuthenticationCHAP
  , pattern NEHotspotConfigurationEAPTTLSInnerAuthenticationMSCHAP
  , pattern NEHotspotConfigurationEAPTTLSInnerAuthenticationMSCHAPv2
  , pattern NEHotspotConfigurationEAPTTLSInnerAuthenticationEAP

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.NetworkExtension.Internal.Classes
import ObjC.NetworkExtension.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | setIdentity
--
-- Setter to configure the EAP peer identity. The application needs to store this identity in keychain access group "$(TeamIdentifierPrefix)com.apple.networkextensionsharing". The API uses SecItemCopyMatching to obtain persistent reference for this identity from application's keychain and uses that at the time of EAP authentication. This property is mandatory when EAP-TLS is desired or tlsClientCertificateRequired is set to YES.
--
-- @identity@ — The identity of the EAP Peer. This is a SecIdentityRef object that contains a SecKeyRef object and an associated SecCertificateRef object.
--
-- Returns: returns NO if the parameter is not an object of SecIdentityRef type or if the persistent reference is not found in the application's keychain else returns YES.
--
-- ObjC selector: @- setIdentity:@
setIdentity :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> Ptr () -> IO Bool
setIdentity neHotspotEAPSettings identity =
  sendMessage neHotspotEAPSettings setIdentitySelector identity

-- | setTrustedServerCertificates
--
-- Setter to configure an array of trusted server certificates used for trust evaluation of the server certificate.
--
-- @certificates@ — Each value in the array is a SecCertificateRef object. Application needs to store the certificates in keychain access group "$(TeamIdentifierPrefix)com.apple.networkextensionsharing". The API uses SecItemCopyMatching to obtain persistent reference for each certificate from application's keychain and uses that at the time os EAP authentication. Number of elements in the array cannot be more than 10.
--
-- Returns: returns NO if any element in the array is not an object of type SecCertificateRef or if API fails to find persistent reference for each element from the application's keychain else return YES.
--
-- ObjC selector: @- setTrustedServerCertificates:@
setTrustedServerCertificates :: (IsNEHotspotEAPSettings neHotspotEAPSettings, IsNSArray certificates) => neHotspotEAPSettings -> certificates -> IO Bool
setTrustedServerCertificates neHotspotEAPSettings certificates =
  sendMessage neHotspotEAPSettings setTrustedServerCertificatesSelector (toNSArray certificates)

-- | username
--
-- A UTF-8 encoded string containing username component of the user authentication   credentials. Length of this property must be between 1 and 253 characters.
--
-- ObjC selector: @- username@
username :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> IO RawId
username neHotspotEAPSettings =
  sendMessage neHotspotEAPSettings usernameSelector

-- | username
--
-- A UTF-8 encoded string containing username component of the user authentication   credentials. Length of this property must be between 1 and 253 characters.
--
-- ObjC selector: @- setUsername:@
setUsername :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> RawId -> IO ()
setUsername neHotspotEAPSettings value =
  sendMessage neHotspotEAPSettings setUsernameSelector value

-- | outerIdentity
--
-- Identity string to be used in EAP-Response/Identity of the outer phase. This key is only   relevant to TTLS, PEAP, and EAP-FAST.
--
-- ObjC selector: @- outerIdentity@
outerIdentity :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> IO RawId
outerIdentity neHotspotEAPSettings =
  sendMessage neHotspotEAPSettings outerIdentitySelector

-- | outerIdentity
--
-- Identity string to be used in EAP-Response/Identity of the outer phase. This key is only   relevant to TTLS, PEAP, and EAP-FAST.
--
-- ObjC selector: @- setOuterIdentity:@
setOuterIdentity :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> RawId -> IO ()
setOuterIdentity neHotspotEAPSettings value =
  sendMessage neHotspotEAPSettings setOuterIdentitySelector value

-- | ttlsInnerAuthentication
--
-- Specifies the inner authentication used by the TTLS module.   Possible values are PAP, CHAP, MSCHAP, MSCHAPv2, and EAP. Defaults to EAP.
--
-- ObjC selector: @- ttlsInnerAuthenticationType@
ttlsInnerAuthenticationType :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> IO NEHotspotConfigurationTTLSInnerAuthenticationType
ttlsInnerAuthenticationType neHotspotEAPSettings =
  sendMessage neHotspotEAPSettings ttlsInnerAuthenticationTypeSelector

-- | ttlsInnerAuthentication
--
-- Specifies the inner authentication used by the TTLS module.   Possible values are PAP, CHAP, MSCHAP, MSCHAPv2, and EAP. Defaults to EAP.
--
-- ObjC selector: @- setTtlsInnerAuthenticationType:@
setTtlsInnerAuthenticationType :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> NEHotspotConfigurationTTLSInnerAuthenticationType -> IO ()
setTtlsInnerAuthenticationType neHotspotEAPSettings value =
  sendMessage neHotspotEAPSettings setTtlsInnerAuthenticationTypeSelector value

-- | password
--
-- The password component of the 802.1X authentication credential.   Length of this property must be between 1 and 64 characters.
--
-- ObjC selector: @- password@
password :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> IO RawId
password neHotspotEAPSettings =
  sendMessage neHotspotEAPSettings passwordSelector

-- | password
--
-- The password component of the 802.1X authentication credential.   Length of this property must be between 1 and 64 characters.
--
-- ObjC selector: @- setPassword:@
setPassword :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> RawId -> IO ()
setPassword neHotspotEAPSettings value =
  sendMessage neHotspotEAPSettings setPasswordSelector value

-- | isTLSClientCertificateRequired
--
-- If YES, supports two-factor authentication for EAP-TTLS, PEAP, or EAP-FAST.   If NO, allows for zero-factor authentication for EAP-TLS. The default is YES for EAP-TLS,   and NO for other EAP types.
--
-- ObjC selector: @- tlsClientCertificateRequired@
tlsClientCertificateRequired :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> IO Bool
tlsClientCertificateRequired neHotspotEAPSettings =
  sendMessage neHotspotEAPSettings tlsClientCertificateRequiredSelector

-- | isTLSClientCertificateRequired
--
-- If YES, supports two-factor authentication for EAP-TTLS, PEAP, or EAP-FAST.   If NO, allows for zero-factor authentication for EAP-TLS. The default is YES for EAP-TLS,   and NO for other EAP types.
--
-- ObjC selector: @- setTlsClientCertificateRequired:@
setTlsClientCertificateRequired :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> Bool -> IO ()
setTlsClientCertificateRequired neHotspotEAPSettings value =
  sendMessage neHotspotEAPSettings setTlsClientCertificateRequiredSelector value

-- | preferredTLSVersion
--
-- TLS version to use during the TLS handshake.   Default value is NEHotspotConfigurationEAPTLSVersion_1_2.
--
-- ObjC selector: @- preferredTLSVersion@
preferredTLSVersion :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> IO NEHotspotConfigurationEAPTLSVersion
preferredTLSVersion neHotspotEAPSettings =
  sendMessage neHotspotEAPSettings preferredTLSVersionSelector

-- | preferredTLSVersion
--
-- TLS version to use during the TLS handshake.   Default value is NEHotspotConfigurationEAPTLSVersion_1_2.
--
-- ObjC selector: @- setPreferredTLSVersion:@
setPreferredTLSVersion :: IsNEHotspotEAPSettings neHotspotEAPSettings => neHotspotEAPSettings -> NEHotspotConfigurationEAPTLSVersion -> IO ()
setPreferredTLSVersion neHotspotEAPSettings value =
  sendMessage neHotspotEAPSettings setPreferredTLSVersionSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @setIdentity:@
setIdentitySelector :: Selector '[Ptr ()] Bool
setIdentitySelector = mkSelector "setIdentity:"

-- | @Selector@ for @setTrustedServerCertificates:@
setTrustedServerCertificatesSelector :: Selector '[Id NSArray] Bool
setTrustedServerCertificatesSelector = mkSelector "setTrustedServerCertificates:"

-- | @Selector@ for @username@
usernameSelector :: Selector '[] RawId
usernameSelector = mkSelector "username"

-- | @Selector@ for @setUsername:@
setUsernameSelector :: Selector '[RawId] ()
setUsernameSelector = mkSelector "setUsername:"

-- | @Selector@ for @outerIdentity@
outerIdentitySelector :: Selector '[] RawId
outerIdentitySelector = mkSelector "outerIdentity"

-- | @Selector@ for @setOuterIdentity:@
setOuterIdentitySelector :: Selector '[RawId] ()
setOuterIdentitySelector = mkSelector "setOuterIdentity:"

-- | @Selector@ for @ttlsInnerAuthenticationType@
ttlsInnerAuthenticationTypeSelector :: Selector '[] NEHotspotConfigurationTTLSInnerAuthenticationType
ttlsInnerAuthenticationTypeSelector = mkSelector "ttlsInnerAuthenticationType"

-- | @Selector@ for @setTtlsInnerAuthenticationType:@
setTtlsInnerAuthenticationTypeSelector :: Selector '[NEHotspotConfigurationTTLSInnerAuthenticationType] ()
setTtlsInnerAuthenticationTypeSelector = mkSelector "setTtlsInnerAuthenticationType:"

-- | @Selector@ for @password@
passwordSelector :: Selector '[] RawId
passwordSelector = mkSelector "password"

-- | @Selector@ for @setPassword:@
setPasswordSelector :: Selector '[RawId] ()
setPasswordSelector = mkSelector "setPassword:"

-- | @Selector@ for @tlsClientCertificateRequired@
tlsClientCertificateRequiredSelector :: Selector '[] Bool
tlsClientCertificateRequiredSelector = mkSelector "tlsClientCertificateRequired"

-- | @Selector@ for @setTlsClientCertificateRequired:@
setTlsClientCertificateRequiredSelector :: Selector '[Bool] ()
setTlsClientCertificateRequiredSelector = mkSelector "setTlsClientCertificateRequired:"

-- | @Selector@ for @preferredTLSVersion@
preferredTLSVersionSelector :: Selector '[] NEHotspotConfigurationEAPTLSVersion
preferredTLSVersionSelector = mkSelector "preferredTLSVersion"

-- | @Selector@ for @setPreferredTLSVersion:@
setPreferredTLSVersionSelector :: Selector '[NEHotspotConfigurationEAPTLSVersion] ()
setPreferredTLSVersionSelector = mkSelector "setPreferredTLSVersion:"

