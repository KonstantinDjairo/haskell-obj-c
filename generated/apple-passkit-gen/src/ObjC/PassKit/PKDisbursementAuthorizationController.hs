{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @PKDisbursementAuthorizationController@.
module ObjC.PassKit.PKDisbursementAuthorizationController
  ( PKDisbursementAuthorizationController
  , IsPKDisbursementAuthorizationController(..)
  , initWithDisbursementRequest_delegate
  , authorizeDisbursementWithCompletion
  , supportsDisbursements
  , authorizeDisbursementWithCompletionSelector
  , initWithDisbursementRequest_delegateSelector
  , supportsDisbursementsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PassKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithDisbursementRequest:delegate:@
initWithDisbursementRequest_delegate :: (IsPKDisbursementAuthorizationController pkDisbursementAuthorizationController, IsPKDisbursementRequest disbursementRequest) => pkDisbursementAuthorizationController -> disbursementRequest -> RawId -> IO (Id PKDisbursementAuthorizationController)
initWithDisbursementRequest_delegate pkDisbursementAuthorizationController disbursementRequest delegate =
  sendOwnedMessage pkDisbursementAuthorizationController initWithDisbursementRequest_delegateSelector (toPKDisbursementRequest disbursementRequest) delegate

-- | @- authorizeDisbursementWithCompletion:@
authorizeDisbursementWithCompletion :: IsPKDisbursementAuthorizationController pkDisbursementAuthorizationController => pkDisbursementAuthorizationController -> Ptr () -> IO ()
authorizeDisbursementWithCompletion pkDisbursementAuthorizationController completion =
  sendMessage pkDisbursementAuthorizationController authorizeDisbursementWithCompletionSelector completion

-- | @+ supportsDisbursements@
supportsDisbursements :: IO Bool
supportsDisbursements  =
  do
    cls' <- getRequiredClass "PKDisbursementAuthorizationController"
    sendClassMessage cls' supportsDisbursementsSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDisbursementRequest:delegate:@
initWithDisbursementRequest_delegateSelector :: Selector '[Id PKDisbursementRequest, RawId] (Id PKDisbursementAuthorizationController)
initWithDisbursementRequest_delegateSelector = mkSelector "initWithDisbursementRequest:delegate:"

-- | @Selector@ for @authorizeDisbursementWithCompletion:@
authorizeDisbursementWithCompletionSelector :: Selector '[Ptr ()] ()
authorizeDisbursementWithCompletionSelector = mkSelector "authorizeDisbursementWithCompletion:"

-- | @Selector@ for @supportsDisbursements@
supportsDisbursementsSelector :: Selector '[] Bool
supportsDisbursementsSelector = mkSelector "supportsDisbursements"

