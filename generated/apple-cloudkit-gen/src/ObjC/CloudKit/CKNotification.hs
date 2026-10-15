{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CKNotification@.
module ObjC.CloudKit.CKNotification
  ( CKNotification
  , IsCKNotification(..)
  , init_
  , new
  , notificationFromRemoteNotificationDictionary
  , notificationType
  , notificationID
  , containerIdentifier
  , subscriptionOwnerUserRecordID
  , isPruned
  , badge
  , subscriptionID
  , badgeSelector
  , containerIdentifierSelector
  , initSelector
  , isPrunedSelector
  , newSelector
  , notificationFromRemoteNotificationDictionarySelector
  , notificationIDSelector
  , notificationTypeSelector
  , subscriptionIDSelector
  , subscriptionOwnerUserRecordIDSelector

  -- * Enum types
  , CKNotificationType(CKNotificationType)
  , pattern CKNotificationTypeQuery
  , pattern CKNotificationTypeRecordZone
  , pattern CKNotificationTypeReadNotification
  , pattern CKNotificationTypeDatabase

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CloudKit.Internal.Classes
import ObjC.CloudKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsCKNotification ckNotification => ckNotification -> IO (Id CKNotification)
init_ ckNotification =
  sendOwnedMessage ckNotification initSelector

-- | @+ new@
new :: IO (Id CKNotification)
new  =
  do
    cls' <- getRequiredClass "CKNotification"
    sendOwnedClassMessage cls' newSelector

-- | @+ notificationFromRemoteNotificationDictionary:@
notificationFromRemoteNotificationDictionary :: IsNSDictionary notificationDictionary => notificationDictionary -> IO (Id CKNotification)
notificationFromRemoteNotificationDictionary notificationDictionary =
  do
    cls' <- getRequiredClass "CKNotification"
    sendClassMessage cls' notificationFromRemoteNotificationDictionarySelector (toNSDictionary notificationDictionary)

-- | When you instantiate a CKNotification from a remote notification dictionary, you will get back a concrete subclass defined below.  Use notificationType to avoid -isKindOfClass: checks
--
-- ObjC selector: @- notificationType@
notificationType :: IsCKNotification ckNotification => ckNotification -> IO CKNotificationType
notificationType ckNotification =
  sendMessage ckNotification notificationTypeSelector

-- | @- notificationID@
notificationID :: IsCKNotification ckNotification => ckNotification -> IO (Id CKNotificationID)
notificationID ckNotification =
  sendMessage ckNotification notificationIDSelector

-- | @- containerIdentifier@
containerIdentifier :: IsCKNotification ckNotification => ckNotification -> IO (Id NSString)
containerIdentifier ckNotification =
  sendMessage ckNotification containerIdentifierSelector

-- | The user recordID of the owner of the subscription for which this notification was generated
--
-- ObjC selector: @- subscriptionOwnerUserRecordID@
subscriptionOwnerUserRecordID :: IsCKNotification ckNotification => ckNotification -> IO (Id CKRecordID)
subscriptionOwnerUserRecordID ckNotification =
  sendMessage ckNotification subscriptionOwnerUserRecordIDSelector

-- | Whether or not the notification fully represents what the server wanted to send.
--
-- Push notifications have a limited size.  In some cases, CloudKit servers may not be able to send you a full @CKNotification's@ worth of info in one push.  In those cases, isPruned returns YES.  The order in which we'll drop properties is defined in each @CKNotification@ subclass below. The @CKNotification@ can be obtained in full via a @CKFetchNotificationChangesOperation@
--
-- ObjC selector: @- isPruned@
isPruned :: IsCKNotification ckNotification => ckNotification -> IO Bool
isPruned ckNotification =
  sendMessage ckNotification isPrunedSelector

-- | The number to display as the badge of the application icon
--
-- ObjC selector: @- badge@
badge :: IsCKNotification ckNotification => ckNotification -> IO RawId
badge ckNotification =
  sendMessage ckNotification badgeSelector

-- | The ID of the subscription that caused this notification to fire
--
-- ObjC selector: @- subscriptionID@
subscriptionID :: IsCKNotification ckNotification => ckNotification -> IO (Id NSString)
subscriptionID ckNotification =
  sendMessage ckNotification subscriptionIDSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id CKNotification)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id CKNotification)
newSelector = mkSelector "new"

-- | @Selector@ for @notificationFromRemoteNotificationDictionary:@
notificationFromRemoteNotificationDictionarySelector :: Selector '[Id NSDictionary] (Id CKNotification)
notificationFromRemoteNotificationDictionarySelector = mkSelector "notificationFromRemoteNotificationDictionary:"

-- | @Selector@ for @notificationType@
notificationTypeSelector :: Selector '[] CKNotificationType
notificationTypeSelector = mkSelector "notificationType"

-- | @Selector@ for @notificationID@
notificationIDSelector :: Selector '[] (Id CKNotificationID)
notificationIDSelector = mkSelector "notificationID"

-- | @Selector@ for @containerIdentifier@
containerIdentifierSelector :: Selector '[] (Id NSString)
containerIdentifierSelector = mkSelector "containerIdentifier"

-- | @Selector@ for @subscriptionOwnerUserRecordID@
subscriptionOwnerUserRecordIDSelector :: Selector '[] (Id CKRecordID)
subscriptionOwnerUserRecordIDSelector = mkSelector "subscriptionOwnerUserRecordID"

-- | @Selector@ for @isPruned@
isPrunedSelector :: Selector '[] Bool
isPrunedSelector = mkSelector "isPruned"

-- | @Selector@ for @badge@
badgeSelector :: Selector '[] RawId
badgeSelector = mkSelector "badge"

-- | @Selector@ for @subscriptionID@
subscriptionIDSelector :: Selector '[] (Id NSString)
subscriptionIDSelector = mkSelector "subscriptionID"

