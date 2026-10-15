{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MTRSubscribeParams    This is used to control the behavior of attribute subscribes.  If not    provided (i.e. nil passed for the MTRSubscribeParams argument), will be    treated as if a default-initialized object was passed in.
--
-- Generated bindings for @MTRSubscribeParams@.
module ObjC.Matter.MTRSubscribeParams
  ( MTRSubscribeParams
  , IsMTRSubscribeParams(..)
  , init_
  , copyWithZone
  , keepPreviousSubscriptions
  , setKeepPreviousSubscriptions
  , autoResubscribe
  , setAutoResubscribe
  , autoResubscribeSelector
  , copyWithZoneSelector
  , initSelector
  , keepPreviousSubscriptionsSelector
  , setAutoResubscribeSelector
  , setKeepPreviousSubscriptionsSelector


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
init_ :: IsMTRSubscribeParams mtrSubscribeParams => mtrSubscribeParams -> IO (Id MTRSubscribeParams)
init_ mtrSubscribeParams =
  sendOwnedMessage mtrSubscribeParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRSubscribeParams mtrSubscribeParams => mtrSubscribeParams -> Ptr () -> IO RawId
copyWithZone mtrSubscribeParams zone =
  sendOwnedMessage mtrSubscribeParams copyWithZoneSelector zone

-- | Whether the subscribe should allow previous subscriptions to stay in place. nil (the default value) is treated as NO.
--
-- If NO, the subscribe will cancel any existing subscriptions to the target node when it sets up the new one.
--
-- If YES, the subscribe will allow any previous subscriptions to remain.
--
-- ObjC selector: @- keepPreviousSubscriptions@
keepPreviousSubscriptions :: IsMTRSubscribeParams mtrSubscribeParams => mtrSubscribeParams -> IO (Id NSNumber)
keepPreviousSubscriptions mtrSubscribeParams =
  sendMessage mtrSubscribeParams keepPreviousSubscriptionsSelector

-- | Whether the subscribe should allow previous subscriptions to stay in place. nil (the default value) is treated as NO.
--
-- If NO, the subscribe will cancel any existing subscriptions to the target node when it sets up the new one.
--
-- If YES, the subscribe will allow any previous subscriptions to remain.
--
-- ObjC selector: @- setKeepPreviousSubscriptions:@
setKeepPreviousSubscriptions :: (IsMTRSubscribeParams mtrSubscribeParams, IsNSNumber value) => mtrSubscribeParams -> value -> IO ()
setKeepPreviousSubscriptions mtrSubscribeParams value =
  sendMessage mtrSubscribeParams setKeepPreviousSubscriptionsSelector (toNSNumber value)

-- | Whether the subscription should automatically try to re-establish if it drops.  nil (the default value) is treated as YES.
--
-- If NO, loss of subscription will simply lead to an error report.  Some subscription APIs do not support this value.
--
-- If YES, loss of subscription will lead to an automatic resubscription attempt.  If this succeeds, the subscriptionEstablished callback will be called again.
--
-- ObjC selector: @- autoResubscribe@
autoResubscribe :: IsMTRSubscribeParams mtrSubscribeParams => mtrSubscribeParams -> IO (Id NSNumber)
autoResubscribe mtrSubscribeParams =
  sendMessage mtrSubscribeParams autoResubscribeSelector

-- | Whether the subscription should automatically try to re-establish if it drops.  nil (the default value) is treated as YES.
--
-- If NO, loss of subscription will simply lead to an error report.  Some subscription APIs do not support this value.
--
-- If YES, loss of subscription will lead to an automatic resubscription attempt.  If this succeeds, the subscriptionEstablished callback will be called again.
--
-- ObjC selector: @- setAutoResubscribe:@
setAutoResubscribe :: (IsMTRSubscribeParams mtrSubscribeParams, IsNSNumber value) => mtrSubscribeParams -> value -> IO ()
setAutoResubscribe mtrSubscribeParams value =
  sendMessage mtrSubscribeParams setAutoResubscribeSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRSubscribeParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @keepPreviousSubscriptions@
keepPreviousSubscriptionsSelector :: Selector '[] (Id NSNumber)
keepPreviousSubscriptionsSelector = mkSelector "keepPreviousSubscriptions"

-- | @Selector@ for @setKeepPreviousSubscriptions:@
setKeepPreviousSubscriptionsSelector :: Selector '[Id NSNumber] ()
setKeepPreviousSubscriptionsSelector = mkSelector "setKeepPreviousSubscriptions:"

-- | @Selector@ for @autoResubscribe@
autoResubscribeSelector :: Selector '[] (Id NSNumber)
autoResubscribeSelector = mkSelector "autoResubscribe"

-- | @Selector@ for @setAutoResubscribe:@
setAutoResubscribeSelector :: Selector '[Id NSNumber] ()
setAutoResubscribeSelector = mkSelector "setAutoResubscribe:"

