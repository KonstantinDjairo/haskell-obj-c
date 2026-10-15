{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASWebAuthenticationSessionRequest@.
module ObjC.AuthenticationServices.ASWebAuthenticationSessionRequest
  ( ASWebAuthenticationSessionRequest
  , IsASWebAuthenticationSessionRequest(..)
  , new
  , init_
  , cancelWithError
  , completeWithCallbackURL
  , uuid
  , url
  , callbackURLScheme
  , shouldUseEphemeralSession
  , delegate
  , setDelegate
  , callbackURLSchemeSelector
  , cancelWithErrorSelector
  , completeWithCallbackURLSelector
  , delegateSelector
  , initSelector
  , newSelector
  , setDelegateSelector
  , shouldUseEphemeralSessionSelector
  , urlSelector
  , uuidSelector


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
new :: IO (Id ASWebAuthenticationSessionRequest)
new  =
  do
    cls' <- getRequiredClass "ASWebAuthenticationSessionRequest"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsASWebAuthenticationSessionRequest asWebAuthenticationSessionRequest => asWebAuthenticationSessionRequest -> IO (Id ASWebAuthenticationSessionRequest)
init_ asWebAuthenticationSessionRequest =
  sendOwnedMessage asWebAuthenticationSessionRequest initSelector

-- | @- cancelWithError:@
cancelWithError :: (IsASWebAuthenticationSessionRequest asWebAuthenticationSessionRequest, IsNSError error_) => asWebAuthenticationSessionRequest -> error_ -> IO ()
cancelWithError asWebAuthenticationSessionRequest error_ =
  sendMessage asWebAuthenticationSessionRequest cancelWithErrorSelector (toNSError error_)

-- | @- completeWithCallbackURL:@
completeWithCallbackURL :: (IsASWebAuthenticationSessionRequest asWebAuthenticationSessionRequest, IsNSURL url) => asWebAuthenticationSessionRequest -> url -> IO ()
completeWithCallbackURL asWebAuthenticationSessionRequest url =
  sendMessage asWebAuthenticationSessionRequest completeWithCallbackURLSelector (toNSURL url)

-- | @- UUID@
uuid :: IsASWebAuthenticationSessionRequest asWebAuthenticationSessionRequest => asWebAuthenticationSessionRequest -> IO (Id NSUUID)
uuid asWebAuthenticationSessionRequest =
  sendMessage asWebAuthenticationSessionRequest uuidSelector

-- | @- URL@
url :: IsASWebAuthenticationSessionRequest asWebAuthenticationSessionRequest => asWebAuthenticationSessionRequest -> IO (Id NSURL)
url asWebAuthenticationSessionRequest =
  sendMessage asWebAuthenticationSessionRequest urlSelector

-- | @- callbackURLScheme@
callbackURLScheme :: IsASWebAuthenticationSessionRequest asWebAuthenticationSessionRequest => asWebAuthenticationSessionRequest -> IO (Id NSString)
callbackURLScheme asWebAuthenticationSessionRequest =
  sendMessage asWebAuthenticationSessionRequest callbackURLSchemeSelector

-- | @- shouldUseEphemeralSession@
shouldUseEphemeralSession :: IsASWebAuthenticationSessionRequest asWebAuthenticationSessionRequest => asWebAuthenticationSessionRequest -> IO Bool
shouldUseEphemeralSession asWebAuthenticationSessionRequest =
  sendMessage asWebAuthenticationSessionRequest shouldUseEphemeralSessionSelector

-- | @- delegate@
delegate :: IsASWebAuthenticationSessionRequest asWebAuthenticationSessionRequest => asWebAuthenticationSessionRequest -> IO RawId
delegate asWebAuthenticationSessionRequest =
  sendMessage asWebAuthenticationSessionRequest delegateSelector

-- | @- setDelegate:@
setDelegate :: IsASWebAuthenticationSessionRequest asWebAuthenticationSessionRequest => asWebAuthenticationSessionRequest -> RawId -> IO ()
setDelegate asWebAuthenticationSessionRequest value =
  sendMessage asWebAuthenticationSessionRequest setDelegateSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id ASWebAuthenticationSessionRequest)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id ASWebAuthenticationSessionRequest)
initSelector = mkSelector "init"

-- | @Selector@ for @cancelWithError:@
cancelWithErrorSelector :: Selector '[Id NSError] ()
cancelWithErrorSelector = mkSelector "cancelWithError:"

-- | @Selector@ for @completeWithCallbackURL:@
completeWithCallbackURLSelector :: Selector '[Id NSURL] ()
completeWithCallbackURLSelector = mkSelector "completeWithCallbackURL:"

-- | @Selector@ for @UUID@
uuidSelector :: Selector '[] (Id NSUUID)
uuidSelector = mkSelector "UUID"

-- | @Selector@ for @URL@
urlSelector :: Selector '[] (Id NSURL)
urlSelector = mkSelector "URL"

-- | @Selector@ for @callbackURLScheme@
callbackURLSchemeSelector :: Selector '[] (Id NSString)
callbackURLSchemeSelector = mkSelector "callbackURLScheme"

-- | @Selector@ for @shouldUseEphemeralSession@
shouldUseEphemeralSessionSelector :: Selector '[] Bool
shouldUseEphemeralSessionSelector = mkSelector "shouldUseEphemeralSession"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

