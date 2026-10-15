{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ATTrackingManager@.
module ObjC.AppTrackingTransparency.ATTrackingManager
  ( ATTrackingManager
  , IsATTrackingManager(..)
  , requestTrackingAuthorizationWithCompletionHandler
  , new
  , init_
  , trackingAuthorizationStatus
  , initSelector
  , newSelector
  , requestTrackingAuthorizationWithCompletionHandlerSelector
  , trackingAuthorizationStatusSelector

  -- * Enum types
  , ATTrackingManagerAuthorizationStatus(ATTrackingManagerAuthorizationStatus)
  , pattern ATTrackingManagerAuthorizationStatusNotDetermined
  , pattern ATTrackingManagerAuthorizationStatusRestricted
  , pattern ATTrackingManagerAuthorizationStatusDenied
  , pattern ATTrackingManagerAuthorizationStatusAuthorized

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppTrackingTransparency.Internal.Classes
import ObjC.AppTrackingTransparency.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | requestTrackingAuthorizationWithCompletionHandler:completion:
--
-- Request user tracking authorization with a completion handler returning the user's authorization status. Users are able to grant or deny developers tracking privileges on a per-app basis. This method allows developers to determine if access has been granted. On first use, this method will prompt the user to grant or deny access.
--
-- The completion handler will be called with the result of the user's decision for granting or denying permission to use application tracking. The completion handler will be called immediately if access to request authorization is restricted.
--
-- ObjC selector: @+ requestTrackingAuthorizationWithCompletionHandler:@
requestTrackingAuthorizationWithCompletionHandler :: Ptr () -> IO ()
requestTrackingAuthorizationWithCompletionHandler completion =
  do
    cls' <- getRequiredClass "ATTrackingManager"
    sendClassMessage cls' requestTrackingAuthorizationWithCompletionHandlerSelector completion

-- | @+ new@
new :: IO (Id ATTrackingManager)
new  =
  do
    cls' <- getRequiredClass "ATTrackingManager"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsATTrackingManager atTrackingManager => atTrackingManager -> IO (Id ATTrackingManager)
init_ atTrackingManager =
  sendOwnedMessage atTrackingManager initSelector

-- | trackingAuthorizationStatus
--
-- Returns information about your application’s tracking authorization status. Users are able to grant or deny developers tracking privileges on a per-app basis. Application developers must call @requestTrackingAuthorizationWithCompletionHandler:@ for the ability to track users.
--
-- Returns: The current authorization status. If the user has not yet been prompted to approve access, the return value will either be ATTrackingManagerAuthorizationStatusNotDetermined, or ATTrackingManagerAuthorizationStatusRestricted if this value is managed. Once the user has been prompted, the return value will be either ATTrackingManagerAuthorizationStatusDenied or ATTrackingManagerAuthorizationStatusAuthorized.
--
-- ObjC selector: @+ trackingAuthorizationStatus@
trackingAuthorizationStatus :: IO ATTrackingManagerAuthorizationStatus
trackingAuthorizationStatus  =
  do
    cls' <- getRequiredClass "ATTrackingManager"
    sendClassMessage cls' trackingAuthorizationStatusSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @requestTrackingAuthorizationWithCompletionHandler:@
requestTrackingAuthorizationWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
requestTrackingAuthorizationWithCompletionHandlerSelector = mkSelector "requestTrackingAuthorizationWithCompletionHandler:"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id ATTrackingManager)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id ATTrackingManager)
initSelector = mkSelector "init"

-- | @Selector@ for @trackingAuthorizationStatus@
trackingAuthorizationStatusSelector :: Selector '[] ATTrackingManagerAuthorizationStatus
trackingAuthorizationStatusSelector = mkSelector "trackingAuthorizationStatus"

