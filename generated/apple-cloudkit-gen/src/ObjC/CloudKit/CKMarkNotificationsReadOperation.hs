{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CKMarkNotificationsReadOperation@.
module ObjC.CloudKit.CKMarkNotificationsReadOperation
  ( CKMarkNotificationsReadOperation
  , IsCKMarkNotificationsReadOperation(..)
  , init_
  , initWithNotificationIDsToMarkRead
  , notificationIDs
  , setNotificationIDs
  , initSelector
  , initWithNotificationIDsToMarkReadSelector
  , notificationIDsSelector
  , setNotificationIDsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CloudKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsCKMarkNotificationsReadOperation ckMarkNotificationsReadOperation => ckMarkNotificationsReadOperation -> IO (Id CKMarkNotificationsReadOperation)
init_ ckMarkNotificationsReadOperation =
  sendOwnedMessage ckMarkNotificationsReadOperation initSelector

-- | @- initWithNotificationIDsToMarkRead:@
initWithNotificationIDsToMarkRead :: (IsCKMarkNotificationsReadOperation ckMarkNotificationsReadOperation, IsNSArray notificationIDs) => ckMarkNotificationsReadOperation -> notificationIDs -> IO (Id CKMarkNotificationsReadOperation)
initWithNotificationIDsToMarkRead ckMarkNotificationsReadOperation notificationIDs =
  sendOwnedMessage ckMarkNotificationsReadOperation initWithNotificationIDsToMarkReadSelector (toNSArray notificationIDs)

-- | @- notificationIDs@
notificationIDs :: IsCKMarkNotificationsReadOperation ckMarkNotificationsReadOperation => ckMarkNotificationsReadOperation -> IO (Id NSArray)
notificationIDs ckMarkNotificationsReadOperation =
  sendMessage ckMarkNotificationsReadOperation notificationIDsSelector

-- | @- setNotificationIDs:@
setNotificationIDs :: (IsCKMarkNotificationsReadOperation ckMarkNotificationsReadOperation, IsNSArray value) => ckMarkNotificationsReadOperation -> value -> IO ()
setNotificationIDs ckMarkNotificationsReadOperation value =
  sendMessage ckMarkNotificationsReadOperation setNotificationIDsSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id CKMarkNotificationsReadOperation)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithNotificationIDsToMarkRead:@
initWithNotificationIDsToMarkReadSelector :: Selector '[Id NSArray] (Id CKMarkNotificationsReadOperation)
initWithNotificationIDsToMarkReadSelector = mkSelector "initWithNotificationIDsToMarkRead:"

-- | @Selector@ for @notificationIDs@
notificationIDsSelector :: Selector '[] (Id NSArray)
notificationIDsSelector = mkSelector "notificationIDs"

-- | @Selector@ for @setNotificationIDs:@
setNotificationIDsSelector :: Selector '[Id NSArray] ()
setNotificationIDsSelector = mkSelector "setNotificationIDs:"

