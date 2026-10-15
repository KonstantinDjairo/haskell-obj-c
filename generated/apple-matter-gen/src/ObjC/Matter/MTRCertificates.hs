{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRCertificates@.
module ObjC.Matter.MTRCertificates
  ( MTRCertificates
  , IsMTRCertificates(..)
  , generateRootCertificate_issuerId_fabricId_error
  , generateIntermediateCertificate_rootCertificate_intermediatePublicKey_issuerId_fabricId_error
  , generateOperationalCertificate_signingCertificate_operationalPublicKey_fabricId_nodeId_caseAuthenticatedTags_error
  , keypair_matchesCertificate
  , isCertificate_equalTo
  , generateCertificateSigningRequest_error
  , convertX509Certificate
  , convertX509CertificateSelector
  , generateCertificateSigningRequest_errorSelector
  , generateIntermediateCertificate_rootCertificate_intermediatePublicKey_issuerId_fabricId_errorSelector
  , generateOperationalCertificate_signingCertificate_operationalPublicKey_fabricId_nodeId_caseAuthenticatedTags_errorSelector
  , generateRootCertificate_issuerId_fabricId_errorSelector
  , isCertificate_equalToSelector
  , keypair_matchesCertificateSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Generate a root (self-signed) X.509 DER encoded certificate that has the right fields to be a valid Matter root certificate.
--
-- If issuerId is nil, a random issuer id is generated.  Otherwise the provided issuer id is used.
--
-- If fabricId is not nil, it will be included in the subject DN of the certificate.  In this case it must be a valid Matter fabric id.
--
-- On failure returns nil and if "error" is not null sets *error to the relevant error.
--
-- ObjC selector: @+ generateRootCertificate:issuerId:fabricId:error:@
generateRootCertificate_issuerId_fabricId_error :: (IsNSNumber issuerId, IsNSNumber fabricId, IsNSError error_) => RawId -> issuerId -> fabricId -> error_ -> IO (Id NSData)
generateRootCertificate_issuerId_fabricId_error keypair issuerId fabricId error_ =
  do
    cls' <- getRequiredClass "MTRCertificates"
    sendClassMessage cls' generateRootCertificate_issuerId_fabricId_errorSelector keypair (toNSNumber issuerId) (toNSNumber fabricId) (toNSError error_)

-- | Generate an intermediate X.509 DER encoded certificate that has the right fields to be a valid Matter intermediate certificate.
--
-- If issuerId is nil, a random issuer id is generated.  Otherwise the provided issuer id is used.
--
-- If fabricId is not nil, it will be included in the subject DN of the certificate.  In this case it must be a valid Matter fabric id.
--
-- On failure returns nil and if "error" is not null sets *error to the relevant error.
--
-- ObjC selector: @+ generateIntermediateCertificate:rootCertificate:intermediatePublicKey:issuerId:fabricId:error:@
generateIntermediateCertificate_rootCertificate_intermediatePublicKey_issuerId_fabricId_error :: (IsNSData rootCertificate, IsNSNumber issuerId, IsNSNumber fabricId, IsNSError error_) => RawId -> rootCertificate -> Ptr () -> issuerId -> fabricId -> error_ -> IO (Id NSData)
generateIntermediateCertificate_rootCertificate_intermediatePublicKey_issuerId_fabricId_error rootKeypair rootCertificate intermediatePublicKey issuerId fabricId error_ =
  do
    cls' <- getRequiredClass "MTRCertificates"
    sendClassMessage cls' generateIntermediateCertificate_rootCertificate_intermediatePublicKey_issuerId_fabricId_errorSelector rootKeypair (toNSData rootCertificate) intermediatePublicKey (toNSNumber issuerId) (toNSNumber fabricId) (toNSError error_)

-- | Generate an X.509 DER encoded certificate that has the right fields to be a valid Matter operational certificate.
--
-- signingKeypair and signingCertificate are the root or intermediate that is signing the operational certificate.
--
-- nodeId and fabricId are expected to be 64-bit unsigned integers.
--
-- nodeId must be a valid Matter operational node id.
--
-- fabricId must be a valid Matter fabric id.
--
-- caseAuthenticatedTags may be nil to indicate no CASE Authenticated Tags should be used.  If caseAuthenticatedTags is not nil, it must have length at most 3 and the values in the array are expected to be 32-bit unsigned Case Authenticated Tag values.
--
-- On failure returns nil and if "error" is not null sets *error to the relevant error.
--
-- ObjC selector: @+ generateOperationalCertificate:signingCertificate:operationalPublicKey:fabricId:nodeId:caseAuthenticatedTags:error:@
generateOperationalCertificate_signingCertificate_operationalPublicKey_fabricId_nodeId_caseAuthenticatedTags_error :: (IsNSData signingCertificate, IsNSNumber fabricId, IsNSNumber nodeId, IsNSArray caseAuthenticatedTags, IsNSError error_) => RawId -> signingCertificate -> Ptr () -> fabricId -> nodeId -> caseAuthenticatedTags -> error_ -> IO (Id NSData)
generateOperationalCertificate_signingCertificate_operationalPublicKey_fabricId_nodeId_caseAuthenticatedTags_error signingKeypair signingCertificate operationalPublicKey fabricId nodeId caseAuthenticatedTags error_ =
  do
    cls' <- getRequiredClass "MTRCertificates"
    sendClassMessage cls' generateOperationalCertificate_signingCertificate_operationalPublicKey_fabricId_nodeId_caseAuthenticatedTags_errorSelector signingKeypair (toNSData signingCertificate) operationalPublicKey (toNSNumber fabricId) (toNSNumber nodeId) (toNSArray caseAuthenticatedTags) (toNSError error_)

-- | Check whether the given keypair's public key matches the given certificate's public key.  The certificate is expected to be an X.509 DER encoded certificate.
--
-- Will return NO on failures to extract public keys from the objects.
--
-- ObjC selector: @+ keypair:matchesCertificate:@
keypair_matchesCertificate :: IsNSData certificate => RawId -> certificate -> IO Bool
keypair_matchesCertificate keypair certificate =
  do
    cls' <- getRequiredClass "MTRCertificates"
    sendClassMessage cls' keypair_matchesCertificateSelector keypair (toNSData certificate)

-- | Check whether two X.509 DER encoded certificates are equivalent, in the sense of having the same public key and the same subject DN.  Returns NO if public keys or subject DNs cannot be extracted from the certificates.
--
-- ObjC selector: @+ isCertificate:equalTo:@
isCertificate_equalTo :: (IsNSData certificate1, IsNSData certificate2) => certificate1 -> certificate2 -> IO Bool
isCertificate_equalTo certificate1 certificate2 =
  do
    cls' <- getRequiredClass "MTRCertificates"
    sendClassMessage cls' isCertificate_equalToSelector (toNSData certificate1) (toNSData certificate2)

-- | Generate a PKCS#10 certificate signing request from a MTRKeypair.  This can then be used to request an operational or ICA certificate from an external certificate authority.
--
-- The CSR will have the subject OU DN set to 'CSA', because omitting all identifying information altogether often trips up CSR parsing code.  The CA being used should expect this and ignore the request subject, producing a subject that matches the rules for Matter certificates.
--
-- On failure returns nil and if "error" is not null sets *error to the relevant error.
--
-- ObjC selector: @+ generateCertificateSigningRequest:error:@
generateCertificateSigningRequest_error :: IsNSError error_ => RawId -> error_ -> IO (Id NSData)
generateCertificateSigningRequest_error keypair error_ =
  do
    cls' <- getRequiredClass "MTRCertificates"
    sendClassMessage cls' generateCertificateSigningRequest_errorSelector keypair (toNSError error_)

-- | Convert the given X.509v3 DER encoded certificate to the Matter certificate format.
--
-- Returns nil if the conversion fails (e.g. if the input data cannot be parsed as a DER encoded X.509 certificate, or if the certificate cannot be represented in the Matter certificate format).
--
-- ObjC selector: @+ convertX509Certificate:@
convertX509Certificate :: IsNSData x509Certificate => x509Certificate -> IO (Id NSData)
convertX509Certificate x509Certificate =
  do
    cls' <- getRequiredClass "MTRCertificates"
    sendClassMessage cls' convertX509CertificateSelector (toNSData x509Certificate)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @generateRootCertificate:issuerId:fabricId:error:@
generateRootCertificate_issuerId_fabricId_errorSelector :: Selector '[RawId, Id NSNumber, Id NSNumber, Id NSError] (Id NSData)
generateRootCertificate_issuerId_fabricId_errorSelector = mkSelector "generateRootCertificate:issuerId:fabricId:error:"

-- | @Selector@ for @generateIntermediateCertificate:rootCertificate:intermediatePublicKey:issuerId:fabricId:error:@
generateIntermediateCertificate_rootCertificate_intermediatePublicKey_issuerId_fabricId_errorSelector :: Selector '[RawId, Id NSData, Ptr (), Id NSNumber, Id NSNumber, Id NSError] (Id NSData)
generateIntermediateCertificate_rootCertificate_intermediatePublicKey_issuerId_fabricId_errorSelector = mkSelector "generateIntermediateCertificate:rootCertificate:intermediatePublicKey:issuerId:fabricId:error:"

-- | @Selector@ for @generateOperationalCertificate:signingCertificate:operationalPublicKey:fabricId:nodeId:caseAuthenticatedTags:error:@
generateOperationalCertificate_signingCertificate_operationalPublicKey_fabricId_nodeId_caseAuthenticatedTags_errorSelector :: Selector '[RawId, Id NSData, Ptr (), Id NSNumber, Id NSNumber, Id NSArray, Id NSError] (Id NSData)
generateOperationalCertificate_signingCertificate_operationalPublicKey_fabricId_nodeId_caseAuthenticatedTags_errorSelector = mkSelector "generateOperationalCertificate:signingCertificate:operationalPublicKey:fabricId:nodeId:caseAuthenticatedTags:error:"

-- | @Selector@ for @keypair:matchesCertificate:@
keypair_matchesCertificateSelector :: Selector '[RawId, Id NSData] Bool
keypair_matchesCertificateSelector = mkSelector "keypair:matchesCertificate:"

-- | @Selector@ for @isCertificate:equalTo:@
isCertificate_equalToSelector :: Selector '[Id NSData, Id NSData] Bool
isCertificate_equalToSelector = mkSelector "isCertificate:equalTo:"

-- | @Selector@ for @generateCertificateSigningRequest:error:@
generateCertificateSigningRequest_errorSelector :: Selector '[RawId, Id NSError] (Id NSData)
generateCertificateSigningRequest_errorSelector = mkSelector "generateCertificateSigningRequest:error:"

-- | @Selector@ for @convertX509Certificate:@
convertX509CertificateSelector :: Selector '[Id NSData] (Id NSData)
convertX509CertificateSelector = mkSelector "convertX509Certificate:"

