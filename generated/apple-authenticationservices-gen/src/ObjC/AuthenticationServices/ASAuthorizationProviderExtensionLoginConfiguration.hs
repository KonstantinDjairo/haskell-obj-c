{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASAuthorizationProviderExtensionLoginConfiguration@.
module ObjC.AuthenticationServices.ASAuthorizationProviderExtensionLoginConfiguration
  ( ASAuthorizationProviderExtensionLoginConfiguration
  , IsASAuthorizationProviderExtensionLoginConfiguration(..)
  , new
  , init_
  , initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audience
  , configurationWithOpenIDConfigurationURL_clientID_issuer_completion
  , setCustomAssertionRequestHeaderClaims_returningError
  , setCustomAssertionRequestBodyClaims_returningError
  , setCustomLoginRequestHeaderClaims_returningError
  , setCustomLoginRequestBodyClaims_returningError
  , invalidCredentialPredicate
  , setInvalidCredentialPredicate
  , accountDisplayName
  , setAccountDisplayName
  , clientID
  , issuer
  , audience
  , setAudience
  , tokenEndpointURL
  , setTokenEndpointURL
  , jwksEndpointURL
  , setJwksEndpointURL
  , nonceEndpointURL
  , setNonceEndpointURL
  , nonceResponseKeypath
  , setNonceResponseKeypath
  , serverNonceClaimName
  , setServerNonceClaimName
  , customNonceRequestValues
  , setCustomNonceRequestValues
  , additionalScopes
  , setAdditionalScopes
  , includePreviousRefreshTokenInLoginRequest
  , setIncludePreviousRefreshTokenInLoginRequest
  , previousRefreshTokenClaimName
  , setPreviousRefreshTokenClaimName
  , customLoginRequestValues
  , setCustomLoginRequestValues
  , kerberosTicketMappings
  , setKerberosTicketMappings
  , accountDisplayNameSelector
  , additionalScopesSelector
  , audienceSelector
  , clientIDSelector
  , configurationWithOpenIDConfigurationURL_clientID_issuer_completionSelector
  , customLoginRequestValuesSelector
  , customNonceRequestValuesSelector
  , includePreviousRefreshTokenInLoginRequestSelector
  , initSelector
  , initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audienceSelector
  , invalidCredentialPredicateSelector
  , issuerSelector
  , jwksEndpointURLSelector
  , kerberosTicketMappingsSelector
  , newSelector
  , nonceEndpointURLSelector
  , nonceResponseKeypathSelector
  , previousRefreshTokenClaimNameSelector
  , serverNonceClaimNameSelector
  , setAccountDisplayNameSelector
  , setAdditionalScopesSelector
  , setAudienceSelector
  , setCustomAssertionRequestBodyClaims_returningErrorSelector
  , setCustomAssertionRequestHeaderClaims_returningErrorSelector
  , setCustomLoginRequestBodyClaims_returningErrorSelector
  , setCustomLoginRequestHeaderClaims_returningErrorSelector
  , setCustomLoginRequestValuesSelector
  , setCustomNonceRequestValuesSelector
  , setIncludePreviousRefreshTokenInLoginRequestSelector
  , setInvalidCredentialPredicateSelector
  , setJwksEndpointURLSelector
  , setKerberosTicketMappingsSelector
  , setNonceEndpointURLSelector
  , setNonceResponseKeypathSelector
  , setPreviousRefreshTokenClaimNameSelector
  , setServerNonceClaimNameSelector
  , setTokenEndpointURLSelector
  , tokenEndpointURLSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AuthenticationServices.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ new@
new :: IO (Id ASAuthorizationProviderExtensionLoginConfiguration)
new  =
  do
    cls' <- getRequiredClass "ASAuthorizationProviderExtensionLoginConfiguration"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id ASAuthorizationProviderExtensionLoginConfiguration)
init_ asAuthorizationProviderExtensionLoginConfiguration =
  sendOwnedMessage asAuthorizationProviderExtensionLoginConfiguration initSelector

-- | Initializes an ASAuthorizationProviderExtensionLoginConfiguration class with the required values.
--
-- @clientID@ — The client_id for the Apple platform SSO login at the identity provider.
--
-- @issuer@ — The issuer for the requests, used to validate responses.
--
-- @tokenEndpointURL@ — The token endpoint at the idP for login.
--
-- @jwksEndpointURL@ — The JWKS URL at the idP for validating tokens.
--
-- @audience@ — The audience used for signed assertions.  This should be the tenent at the idP.
--
-- Returns: An instance of a ASAuthorizationProviderExtensionLoginConfiguration.
--
-- ObjC selector: @- initWithClientID:issuer:tokenEndpointURL:jwksEndpointURL:audience:@
initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audience :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSString clientID, IsNSString issuer, IsNSURL tokenEndpointURL, IsNSURL jwksEndpointURL, IsNSString audience) => asAuthorizationProviderExtensionLoginConfiguration -> clientID -> issuer -> tokenEndpointURL -> jwksEndpointURL -> audience -> IO (Id ASAuthorizationProviderExtensionLoginConfiguration)
initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audience asAuthorizationProviderExtensionLoginConfiguration clientID issuer tokenEndpointURL jwksEndpointURL audience =
  sendOwnedMessage asAuthorizationProviderExtensionLoginConfiguration initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audienceSelector (toNSString clientID) (toNSString issuer) (toNSURL tokenEndpointURL) (toNSURL jwksEndpointURL) (toNSString audience)

-- | Creates a login configuration using the OpenID configuration.
--
-- @openIDConfigurationURL@ — The base URL to load the .well-known/openid-configuration.
--
-- @clientID@ — The client_id for the Apple platform SSO login at the identity provider.
--
-- @issuer@ — The issuer for the requests, used to validate responses.
--
-- @completion@ — The completion called when it is complete or the error.
--
-- ObjC selector: @+ configurationWithOpenIDConfigurationURL:clientID:issuer:completion:@
configurationWithOpenIDConfigurationURL_clientID_issuer_completion :: (IsNSURL openIDConfigurationURL, IsNSString clientID, IsNSString issuer) => openIDConfigurationURL -> clientID -> issuer -> Ptr () -> IO ()
configurationWithOpenIDConfigurationURL_clientID_issuer_completion openIDConfigurationURL clientID issuer completion =
  do
    cls' <- getRequiredClass "ASAuthorizationProviderExtensionLoginConfiguration"
    sendClassMessage cls' configurationWithOpenIDConfigurationURL_clientID_issuer_completionSelector (toNSURL openIDConfigurationURL) (toNSString clientID) (toNSString issuer) completion

-- | Sets custom claims to be added to the embedded assertion request header.
--
-- @claims@ — The claims to be added. It must serialize as valid JSON to be accepted.
--
-- @error@ — Nil or a NSError indicating why the claims where rejected.
--
-- True when successful and false when claims are rejected.
--
-- ObjC selector: @- setCustomAssertionRequestHeaderClaims:returningError:@
setCustomAssertionRequestHeaderClaims_returningError :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSDictionary claims, IsNSError error_) => asAuthorizationProviderExtensionLoginConfiguration -> claims -> error_ -> IO Bool
setCustomAssertionRequestHeaderClaims_returningError asAuthorizationProviderExtensionLoginConfiguration claims error_ =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setCustomAssertionRequestHeaderClaims_returningErrorSelector (toNSDictionary claims) (toNSError error_)

-- | Sets custom claims to be added to the embedded assertion request body.
--
-- @claims@ — The claims to be added. It must serialize as valid JSON to be accepted.
--
-- @error@ — Nil or a NSError indicating why the claims where rejected.
--
-- True when successful and false when claims are rejected.
--
-- ObjC selector: @- setCustomAssertionRequestBodyClaims:returningError:@
setCustomAssertionRequestBodyClaims_returningError :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSDictionary claims, IsNSError error_) => asAuthorizationProviderExtensionLoginConfiguration -> claims -> error_ -> IO Bool
setCustomAssertionRequestBodyClaims_returningError asAuthorizationProviderExtensionLoginConfiguration claims error_ =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setCustomAssertionRequestBodyClaims_returningErrorSelector (toNSDictionary claims) (toNSError error_)

-- | Sets custom claims to be added to the login request header.
--
-- @claims@ — The claims to be added. It must serialize as valid JSON to be accepted.
--
-- @error@ — Nil or a NSError indicating why the claims where rejected.
--
-- True when successful and false when claims are rejected.
--
-- ObjC selector: @- setCustomLoginRequestHeaderClaims:returningError:@
setCustomLoginRequestHeaderClaims_returningError :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSDictionary claims, IsNSError error_) => asAuthorizationProviderExtensionLoginConfiguration -> claims -> error_ -> IO Bool
setCustomLoginRequestHeaderClaims_returningError asAuthorizationProviderExtensionLoginConfiguration claims error_ =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setCustomLoginRequestHeaderClaims_returningErrorSelector (toNSDictionary claims) (toNSError error_)

-- | Sets custom claims to be added to the login request body.
--
-- @claims@ — The claims to be added. It must serialize as valid JSON to be accepted.
--
-- @error@ — Nil or a NSError indicating why the claims where rejected.
--
-- True when successful and false when claims are rejected.
--
-- ObjC selector: @- setCustomLoginRequestBodyClaims:returningError:@
setCustomLoginRequestBodyClaims_returningError :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSDictionary claims, IsNSError error_) => asAuthorizationProviderExtensionLoginConfiguration -> claims -> error_ -> IO Bool
setCustomLoginRequestBodyClaims_returningError asAuthorizationProviderExtensionLoginConfiguration claims error_ =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setCustomLoginRequestBodyClaims_returningErrorSelector (toNSDictionary claims) (toNSError error_)

-- | Predicate string used to identify invalid credential errors.
--
-- If there is an HTTP 400 or HTTP 401 error when authenticating, this predicate will be used on the response body JSON to determine if the error is due to an invalid password or something else.  If nil, then only an HTTP 401 will be used for an invalid credential.
--
-- ObjC selector: @- invalidCredentialPredicate@
invalidCredentialPredicate :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSString)
invalidCredentialPredicate asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration invalidCredentialPredicateSelector

-- | Predicate string used to identify invalid credential errors.
--
-- If there is an HTTP 400 or HTTP 401 error when authenticating, this predicate will be used on the response body JSON to determine if the error is due to an invalid password or something else.  If nil, then only an HTTP 401 will be used for an invalid credential.
--
-- ObjC selector: @- setInvalidCredentialPredicate:@
setInvalidCredentialPredicate :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSString value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setInvalidCredentialPredicate asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setInvalidCredentialPredicateSelector (toNSString value)

-- | The display name for the account.  Used for notifications and login prompts.
--
-- ObjC selector: @- accountDisplayName@
accountDisplayName :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSString)
accountDisplayName asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration accountDisplayNameSelector

-- | The display name for the account.  Used for notifications and login prompts.
--
-- ObjC selector: @- setAccountDisplayName:@
setAccountDisplayName :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSString value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setAccountDisplayName asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setAccountDisplayNameSelector (toNSString value)

-- | The login client_id.
--
-- ObjC selector: @- clientID@
clientID :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSString)
clientID asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration clientIDSelector

-- | The issuer for validation.
--
-- ObjC selector: @- issuer@
issuer :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSString)
issuer asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration issuerSelector

-- | The audience for validation and requests.
--
-- ObjC selector: @- audience@
audience :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSString)
audience asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration audienceSelector

-- | The audience for validation and requests.
--
-- ObjC selector: @- setAudience:@
setAudience :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSString value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setAudience asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setAudienceSelector (toNSString value)

-- | Token Endpoint URL for login request.
--
-- ObjC selector: @- tokenEndpointURL@
tokenEndpointURL :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSURL)
tokenEndpointURL asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration tokenEndpointURLSelector

-- | Token Endpoint URL for login request.
--
-- ObjC selector: @- setTokenEndpointURL:@
setTokenEndpointURL :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSURL value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setTokenEndpointURL asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setTokenEndpointURLSelector (toNSURL value)

-- | JWKS Endpoint URL for keys.
--
-- ObjC selector: @- jwksEndpointURL@
jwksEndpointURL :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSURL)
jwksEndpointURL asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration jwksEndpointURLSelector

-- | JWKS Endpoint URL for keys.
--
-- ObjC selector: @- setJwksEndpointURL:@
setJwksEndpointURL :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSURL value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setJwksEndpointURL asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setJwksEndpointURLSelector (toNSURL value)

-- | Nonce Endpoint URL, defaults to token tokenEndpointURL.
--
-- ObjC selector: @- nonceEndpointURL@
nonceEndpointURL :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSURL)
nonceEndpointURL asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration nonceEndpointURLSelector

-- | Nonce Endpoint URL, defaults to token tokenEndpointURL.
--
-- ObjC selector: @- setNonceEndpointURL:@
setNonceEndpointURL :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSURL value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setNonceEndpointURL asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setNonceEndpointURLSelector (toNSURL value)

-- | The keypath in the nonce response that contains the nonce value.
--
-- ObjC selector: @- nonceResponseKeypath@
nonceResponseKeypath :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSString)
nonceResponseKeypath asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration nonceResponseKeypathSelector

-- | The keypath in the nonce response that contains the nonce value.
--
-- ObjC selector: @- setNonceResponseKeypath:@
setNonceResponseKeypath :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSString value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setNonceResponseKeypath asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setNonceResponseKeypathSelector (toNSString value)

-- | The name of the server nonce claim when included in authentication requests.
--
-- ObjC selector: @- serverNonceClaimName@
serverNonceClaimName :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSString)
serverNonceClaimName asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration serverNonceClaimNameSelector

-- | The name of the server nonce claim when included in authentication requests.
--
-- ObjC selector: @- setServerNonceClaimName:@
setServerNonceClaimName :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSString value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setServerNonceClaimName asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setServerNonceClaimNameSelector (toNSString value)

-- | Custom values added to the server nonce POST request body.
--
-- ObjC selector: @- customNonceRequestValues@
customNonceRequestValues :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSArray)
customNonceRequestValues asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration customNonceRequestValuesSelector

-- | Custom values added to the server nonce POST request body.
--
-- ObjC selector: @- setCustomNonceRequestValues:@
setCustomNonceRequestValues :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSArray value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setCustomNonceRequestValues asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setCustomNonceRequestValuesSelector (toNSArray value)

-- | Additional login scopes.
--
-- ObjC selector: @- additionalScopes@
additionalScopes :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSString)
additionalScopes asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration additionalScopesSelector

-- | Additional login scopes.
--
-- ObjC selector: @- setAdditionalScopes:@
setAdditionalScopes :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSString value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setAdditionalScopes asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setAdditionalScopesSelector (toNSString value)

-- | If true and there is a refresh token for the user in the SSO tokens, it will be included in the login request.
--
-- ObjC selector: @- includePreviousRefreshTokenInLoginRequest@
includePreviousRefreshTokenInLoginRequest :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO Bool
includePreviousRefreshTokenInLoginRequest asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration includePreviousRefreshTokenInLoginRequestSelector

-- | If true and there is a refresh token for the user in the SSO tokens, it will be included in the login request.
--
-- ObjC selector: @- setIncludePreviousRefreshTokenInLoginRequest:@
setIncludePreviousRefreshTokenInLoginRequest :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> Bool -> IO ()
setIncludePreviousRefreshTokenInLoginRequest asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setIncludePreviousRefreshTokenInLoginRequestSelector value

-- | The claim name for the previous SSO token value in the login request.
--
-- ObjC selector: @- previousRefreshTokenClaimName@
previousRefreshTokenClaimName :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSString)
previousRefreshTokenClaimName asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration previousRefreshTokenClaimNameSelector

-- | The claim name for the previous SSO token value in the login request.
--
-- ObjC selector: @- setPreviousRefreshTokenClaimName:@
setPreviousRefreshTokenClaimName :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSString value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setPreviousRefreshTokenClaimName asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setPreviousRefreshTokenClaimNameSelector (toNSString value)

-- | Custom values added to the login POST request body.
--
-- ObjC selector: @- customLoginRequestValues@
customLoginRequestValues :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSArray)
customLoginRequestValues asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration customLoginRequestValuesSelector

-- | Custom values added to the login POST request body.
--
-- ObjC selector: @- setCustomLoginRequestValues:@
setCustomLoginRequestValues :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSArray value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setCustomLoginRequestValues asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setCustomLoginRequestValuesSelector (toNSArray value)

-- | The Kerberos ticket mappings to use.
--
-- ObjC selector: @- kerberosTicketMappings@
kerberosTicketMappings :: IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration => asAuthorizationProviderExtensionLoginConfiguration -> IO (Id NSArray)
kerberosTicketMappings asAuthorizationProviderExtensionLoginConfiguration =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration kerberosTicketMappingsSelector

-- | The Kerberos ticket mappings to use.
--
-- ObjC selector: @- setKerberosTicketMappings:@
setKerberosTicketMappings :: (IsASAuthorizationProviderExtensionLoginConfiguration asAuthorizationProviderExtensionLoginConfiguration, IsNSArray value) => asAuthorizationProviderExtensionLoginConfiguration -> value -> IO ()
setKerberosTicketMappings asAuthorizationProviderExtensionLoginConfiguration value =
  sendMessage asAuthorizationProviderExtensionLoginConfiguration setKerberosTicketMappingsSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id ASAuthorizationProviderExtensionLoginConfiguration)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id ASAuthorizationProviderExtensionLoginConfiguration)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithClientID:issuer:tokenEndpointURL:jwksEndpointURL:audience:@
initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audienceSelector :: Selector '[Id NSString, Id NSString, Id NSURL, Id NSURL, Id NSString] (Id ASAuthorizationProviderExtensionLoginConfiguration)
initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audienceSelector = mkSelector "initWithClientID:issuer:tokenEndpointURL:jwksEndpointURL:audience:"

-- | @Selector@ for @configurationWithOpenIDConfigurationURL:clientID:issuer:completion:@
configurationWithOpenIDConfigurationURL_clientID_issuer_completionSelector :: Selector '[Id NSURL, Id NSString, Id NSString, Ptr ()] ()
configurationWithOpenIDConfigurationURL_clientID_issuer_completionSelector = mkSelector "configurationWithOpenIDConfigurationURL:clientID:issuer:completion:"

-- | @Selector@ for @setCustomAssertionRequestHeaderClaims:returningError:@
setCustomAssertionRequestHeaderClaims_returningErrorSelector :: Selector '[Id NSDictionary, Id NSError] Bool
setCustomAssertionRequestHeaderClaims_returningErrorSelector = mkSelector "setCustomAssertionRequestHeaderClaims:returningError:"

-- | @Selector@ for @setCustomAssertionRequestBodyClaims:returningError:@
setCustomAssertionRequestBodyClaims_returningErrorSelector :: Selector '[Id NSDictionary, Id NSError] Bool
setCustomAssertionRequestBodyClaims_returningErrorSelector = mkSelector "setCustomAssertionRequestBodyClaims:returningError:"

-- | @Selector@ for @setCustomLoginRequestHeaderClaims:returningError:@
setCustomLoginRequestHeaderClaims_returningErrorSelector :: Selector '[Id NSDictionary, Id NSError] Bool
setCustomLoginRequestHeaderClaims_returningErrorSelector = mkSelector "setCustomLoginRequestHeaderClaims:returningError:"

-- | @Selector@ for @setCustomLoginRequestBodyClaims:returningError:@
setCustomLoginRequestBodyClaims_returningErrorSelector :: Selector '[Id NSDictionary, Id NSError] Bool
setCustomLoginRequestBodyClaims_returningErrorSelector = mkSelector "setCustomLoginRequestBodyClaims:returningError:"

-- | @Selector@ for @invalidCredentialPredicate@
invalidCredentialPredicateSelector :: Selector '[] (Id NSString)
invalidCredentialPredicateSelector = mkSelector "invalidCredentialPredicate"

-- | @Selector@ for @setInvalidCredentialPredicate:@
setInvalidCredentialPredicateSelector :: Selector '[Id NSString] ()
setInvalidCredentialPredicateSelector = mkSelector "setInvalidCredentialPredicate:"

-- | @Selector@ for @accountDisplayName@
accountDisplayNameSelector :: Selector '[] (Id NSString)
accountDisplayNameSelector = mkSelector "accountDisplayName"

-- | @Selector@ for @setAccountDisplayName:@
setAccountDisplayNameSelector :: Selector '[Id NSString] ()
setAccountDisplayNameSelector = mkSelector "setAccountDisplayName:"

-- | @Selector@ for @clientID@
clientIDSelector :: Selector '[] (Id NSString)
clientIDSelector = mkSelector "clientID"

-- | @Selector@ for @issuer@
issuerSelector :: Selector '[] (Id NSString)
issuerSelector = mkSelector "issuer"

-- | @Selector@ for @audience@
audienceSelector :: Selector '[] (Id NSString)
audienceSelector = mkSelector "audience"

-- | @Selector@ for @setAudience:@
setAudienceSelector :: Selector '[Id NSString] ()
setAudienceSelector = mkSelector "setAudience:"

-- | @Selector@ for @tokenEndpointURL@
tokenEndpointURLSelector :: Selector '[] (Id NSURL)
tokenEndpointURLSelector = mkSelector "tokenEndpointURL"

-- | @Selector@ for @setTokenEndpointURL:@
setTokenEndpointURLSelector :: Selector '[Id NSURL] ()
setTokenEndpointURLSelector = mkSelector "setTokenEndpointURL:"

-- | @Selector@ for @jwksEndpointURL@
jwksEndpointURLSelector :: Selector '[] (Id NSURL)
jwksEndpointURLSelector = mkSelector "jwksEndpointURL"

-- | @Selector@ for @setJwksEndpointURL:@
setJwksEndpointURLSelector :: Selector '[Id NSURL] ()
setJwksEndpointURLSelector = mkSelector "setJwksEndpointURL:"

-- | @Selector@ for @nonceEndpointURL@
nonceEndpointURLSelector :: Selector '[] (Id NSURL)
nonceEndpointURLSelector = mkSelector "nonceEndpointURL"

-- | @Selector@ for @setNonceEndpointURL:@
setNonceEndpointURLSelector :: Selector '[Id NSURL] ()
setNonceEndpointURLSelector = mkSelector "setNonceEndpointURL:"

-- | @Selector@ for @nonceResponseKeypath@
nonceResponseKeypathSelector :: Selector '[] (Id NSString)
nonceResponseKeypathSelector = mkSelector "nonceResponseKeypath"

-- | @Selector@ for @setNonceResponseKeypath:@
setNonceResponseKeypathSelector :: Selector '[Id NSString] ()
setNonceResponseKeypathSelector = mkSelector "setNonceResponseKeypath:"

-- | @Selector@ for @serverNonceClaimName@
serverNonceClaimNameSelector :: Selector '[] (Id NSString)
serverNonceClaimNameSelector = mkSelector "serverNonceClaimName"

-- | @Selector@ for @setServerNonceClaimName:@
setServerNonceClaimNameSelector :: Selector '[Id NSString] ()
setServerNonceClaimNameSelector = mkSelector "setServerNonceClaimName:"

-- | @Selector@ for @customNonceRequestValues@
customNonceRequestValuesSelector :: Selector '[] (Id NSArray)
customNonceRequestValuesSelector = mkSelector "customNonceRequestValues"

-- | @Selector@ for @setCustomNonceRequestValues:@
setCustomNonceRequestValuesSelector :: Selector '[Id NSArray] ()
setCustomNonceRequestValuesSelector = mkSelector "setCustomNonceRequestValues:"

-- | @Selector@ for @additionalScopes@
additionalScopesSelector :: Selector '[] (Id NSString)
additionalScopesSelector = mkSelector "additionalScopes"

-- | @Selector@ for @setAdditionalScopes:@
setAdditionalScopesSelector :: Selector '[Id NSString] ()
setAdditionalScopesSelector = mkSelector "setAdditionalScopes:"

-- | @Selector@ for @includePreviousRefreshTokenInLoginRequest@
includePreviousRefreshTokenInLoginRequestSelector :: Selector '[] Bool
includePreviousRefreshTokenInLoginRequestSelector = mkSelector "includePreviousRefreshTokenInLoginRequest"

-- | @Selector@ for @setIncludePreviousRefreshTokenInLoginRequest:@
setIncludePreviousRefreshTokenInLoginRequestSelector :: Selector '[Bool] ()
setIncludePreviousRefreshTokenInLoginRequestSelector = mkSelector "setIncludePreviousRefreshTokenInLoginRequest:"

-- | @Selector@ for @previousRefreshTokenClaimName@
previousRefreshTokenClaimNameSelector :: Selector '[] (Id NSString)
previousRefreshTokenClaimNameSelector = mkSelector "previousRefreshTokenClaimName"

-- | @Selector@ for @setPreviousRefreshTokenClaimName:@
setPreviousRefreshTokenClaimNameSelector :: Selector '[Id NSString] ()
setPreviousRefreshTokenClaimNameSelector = mkSelector "setPreviousRefreshTokenClaimName:"

-- | @Selector@ for @customLoginRequestValues@
customLoginRequestValuesSelector :: Selector '[] (Id NSArray)
customLoginRequestValuesSelector = mkSelector "customLoginRequestValues"

-- | @Selector@ for @setCustomLoginRequestValues:@
setCustomLoginRequestValuesSelector :: Selector '[Id NSArray] ()
setCustomLoginRequestValuesSelector = mkSelector "setCustomLoginRequestValues:"

-- | @Selector@ for @kerberosTicketMappings@
kerberosTicketMappingsSelector :: Selector '[] (Id NSArray)
kerberosTicketMappingsSelector = mkSelector "kerberosTicketMappings"

-- | @Selector@ for @setKerberosTicketMappings:@
setKerberosTicketMappingsSelector :: Selector '[Id NSArray] ()
setKerberosTicketMappingsSelector = mkSelector "setKerberosTicketMappings:"

