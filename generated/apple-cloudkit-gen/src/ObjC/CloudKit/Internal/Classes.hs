{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.CloudKit.Internal.Classes (
    module ObjC.CloudKit.Internal.Classes,
    module ObjC.CoreLocation.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.CoreLocation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- CKAllowedSharingOptions ----------

-- | Phantom type for @CKAllowedSharingOptions@.
data CKAllowedSharingOptions

instance IsObjCObject (Id CKAllowedSharingOptions) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKAllowedSharingOptions"

class IsNSObject a => IsCKAllowedSharingOptions a where
  toCKAllowedSharingOptions :: a -> Id CKAllowedSharingOptions

instance IsCKAllowedSharingOptions (Id CKAllowedSharingOptions) where
  toCKAllowedSharingOptions = unsafeCastId

instance IsNSObject (Id CKAllowedSharingOptions) where
  toNSObject = unsafeCastId

-- ---------- CKAsset ----------

-- | Phantom type for @CKAsset@.
data CKAsset

instance IsObjCObject (Id CKAsset) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKAsset"

class IsNSObject a => IsCKAsset a where
  toCKAsset :: a -> Id CKAsset

instance IsCKAsset (Id CKAsset) where
  toCKAsset = unsafeCastId

instance IsNSObject (Id CKAsset) where
  toNSObject = unsafeCastId

-- ---------- CKContainer ----------

-- | CKContainer
--
-- A CKContainer, and its CKDatabases, are the main entry points into the CloudKit framework.
--
-- Several methods in CloudKit accept completion handlers to indicate when they're completed.  All CKOperation subclasses include progress and completion blocks to report significant events in their lifecycles.  Each of these handlers and blocks is invoked on a non-main serial queue.  The receiver is responsible for handling the message on a different queue or thread if it is required.
-- 
-- Phantom type for @CKContainer@.
data CKContainer

instance IsObjCObject (Id CKContainer) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKContainer"

class IsNSObject a => IsCKContainer a where
  toCKContainer :: a -> Id CKContainer

instance IsCKContainer (Id CKContainer) where
  toCKContainer = unsafeCastId

instance IsNSObject (Id CKContainer) where
  toNSObject = unsafeCastId

-- ---------- CKDatabase ----------

-- | Phantom type for @CKDatabase@.
data CKDatabase

instance IsObjCObject (Id CKDatabase) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKDatabase"

class IsNSObject a => IsCKDatabase a where
  toCKDatabase :: a -> Id CKDatabase

instance IsCKDatabase (Id CKDatabase) where
  toCKDatabase = unsafeCastId

instance IsNSObject (Id CKDatabase) where
  toNSObject = unsafeCastId

-- ---------- CKFetchRecordZoneChangesConfiguration ----------

-- | Phantom type for @CKFetchRecordZoneChangesConfiguration@.
data CKFetchRecordZoneChangesConfiguration

instance IsObjCObject (Id CKFetchRecordZoneChangesConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchRecordZoneChangesConfiguration"

class IsNSObject a => IsCKFetchRecordZoneChangesConfiguration a where
  toCKFetchRecordZoneChangesConfiguration :: a -> Id CKFetchRecordZoneChangesConfiguration

instance IsCKFetchRecordZoneChangesConfiguration (Id CKFetchRecordZoneChangesConfiguration) where
  toCKFetchRecordZoneChangesConfiguration = unsafeCastId

instance IsNSObject (Id CKFetchRecordZoneChangesConfiguration) where
  toNSObject = unsafeCastId

-- ---------- CKFetchRecordZoneChangesOptions ----------

-- | Phantom type for @CKFetchRecordZoneChangesOptions@.
data CKFetchRecordZoneChangesOptions

instance IsObjCObject (Id CKFetchRecordZoneChangesOptions) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchRecordZoneChangesOptions"

class IsNSObject a => IsCKFetchRecordZoneChangesOptions a where
  toCKFetchRecordZoneChangesOptions :: a -> Id CKFetchRecordZoneChangesOptions

instance IsCKFetchRecordZoneChangesOptions (Id CKFetchRecordZoneChangesOptions) where
  toCKFetchRecordZoneChangesOptions = unsafeCastId

instance IsNSObject (Id CKFetchRecordZoneChangesOptions) where
  toNSObject = unsafeCastId

-- ---------- CKNotification ----------

-- | Phantom type for @CKNotification@.
data CKNotification

instance IsObjCObject (Id CKNotification) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKNotification"

class IsNSObject a => IsCKNotification a where
  toCKNotification :: a -> Id CKNotification

instance IsCKNotification (Id CKNotification) where
  toCKNotification = unsafeCastId

instance IsNSObject (Id CKNotification) where
  toNSObject = unsafeCastId

-- ---------- CKNotificationID ----------

-- | Phantom type for @CKNotificationID@.
data CKNotificationID

instance IsObjCObject (Id CKNotificationID) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKNotificationID"

class IsNSObject a => IsCKNotificationID a where
  toCKNotificationID :: a -> Id CKNotificationID

instance IsCKNotificationID (Id CKNotificationID) where
  toCKNotificationID = unsafeCastId

instance IsNSObject (Id CKNotificationID) where
  toNSObject = unsafeCastId

-- ---------- CKNotificationInfo ----------

-- | CKNotificationInfo
--
-- The payload of a push notification delivered in the UIApplication @application:didReceiveRemoteNotification:@ delegate method contains information about the firing subscription.
--
-- Use
--
-- +[CKNotification notificationFromRemoteNotificationDictionary:]
--
-- to parse that payload.  On tvOS, alerts, badges, sounds, and categories are not handled in push notifications. However, CKSubscriptions remain available to help you avoid polling the server.
-- 
-- Phantom type for @CKNotificationInfo@.
data CKNotificationInfo

instance IsObjCObject (Id CKNotificationInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKNotificationInfo"

class IsNSObject a => IsCKNotificationInfo a where
  toCKNotificationInfo :: a -> Id CKNotificationInfo

instance IsCKNotificationInfo (Id CKNotificationInfo) where
  toCKNotificationInfo = unsafeCastId

instance IsNSObject (Id CKNotificationInfo) where
  toNSObject = unsafeCastId

-- ---------- CKOperationConfiguration ----------

-- | CKOperationConfiguration
--
-- An operation configuration is a set of properties that describes how your operation should behave.  All properties have a default value.  When determining what properties to apply to an operation, we consult the operation's configuration property, as well as the operation->group->defaultConfiguration property.  We combine them following these rules:
--
-- Group Default Configuration Value | Operation Configuration Value |        Value Applied To Operation
-- -----------------------------------+-------------------------------+-----------------------------------------
-- default value           |         default value         |                  default value
-- default value           |         explicit value        |       operation.configuration explicit value
-- explicit value          |         default value         | operation.group.defaultConfiguration explicit value
-- explicit value          |         explicit value        |       operation.configuration explicit value
--
-- For example:  CKOperationGroup -> defaultConfiguration -> allowsCellularAccess explicitly set to NO  + CKOperation -> configuration -> allowsCellularAccess has default value of YES  = disallow cellular access
--
-- CKOperationGroup -> defaultConfiguration -> allowsCellularAccess explicitly set to NO  + CKOperation -> configuration -> allowsCellularAccess explicitly set to YES  = allow cellular access
-- 
-- Phantom type for @CKOperationConfiguration@.
data CKOperationConfiguration

instance IsObjCObject (Id CKOperationConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKOperationConfiguration"

class IsNSObject a => IsCKOperationConfiguration a where
  toCKOperationConfiguration :: a -> Id CKOperationConfiguration

instance IsCKOperationConfiguration (Id CKOperationConfiguration) where
  toCKOperationConfiguration = unsafeCastId

instance IsNSObject (Id CKOperationConfiguration) where
  toNSObject = unsafeCastId

-- ---------- CKOperationGroup ----------

-- | CKOperationGroup
--
-- A mechanism for your app to group several operations at the granularity of a user action.
--
-- For example, when building a Calendar application, these things might warrant being their own operation groups:  - an initial fetch of data from the server, consisting of many queries, fetchChanges, and fetch operations  - doing an incremental fetch of data in response to a push notification  - saving several records due to a user saving a calendar event
--
-- You associate @CKOperationGroup@ s with@CKOperation@ s by setting the @CKOperation.group@ property.  Create a new @CKOperationGroup@ instance for each distinct user action.
-- 
-- Phantom type for @CKOperationGroup@.
data CKOperationGroup

instance IsObjCObject (Id CKOperationGroup) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKOperationGroup"

class IsNSObject a => IsCKOperationGroup a where
  toCKOperationGroup :: a -> Id CKOperationGroup

instance IsCKOperationGroup (Id CKOperationGroup) where
  toCKOperationGroup = unsafeCastId

instance IsNSObject (Id CKOperationGroup) where
  toNSObject = unsafeCastId

-- ---------- CKQuery ----------

-- | CKQuery
--
-- Only AND compound predicates are allowed.
--
-- Key names must begin with either an upper or lower case character ([a-zA-Z]) and may be followed by characters, numbers, or underscores ([0-9a-zA-Z_]). Keypaths may only resolve to the currently evaluated object, so the '.' character is not allowed in key names.
--
-- A limited subset of classes are allowed as predicate arguments:  - NSString  - NSDate  - NSData  - NSNumber  - NSArray  - CKReference  - CKRecord  - CLLocation
--
-- Any other class as an argument will result in an error when executing the query.
-- 
-- Phantom type for @CKQuery@.
data CKQuery

instance IsObjCObject (Id CKQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKQuery"

class IsNSObject a => IsCKQuery a where
  toCKQuery :: a -> Id CKQuery

instance IsCKQuery (Id CKQuery) where
  toCKQuery = unsafeCastId

instance IsNSObject (Id CKQuery) where
  toNSObject = unsafeCastId

-- ---------- CKQueryCursor ----------

-- | Phantom type for @CKQueryCursor@.
data CKQueryCursor

instance IsObjCObject (Id CKQueryCursor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKQueryCursor"

class IsNSObject a => IsCKQueryCursor a where
  toCKQueryCursor :: a -> Id CKQueryCursor

instance IsCKQueryCursor (Id CKQueryCursor) where
  toCKQueryCursor = unsafeCastId

instance IsNSObject (Id CKQueryCursor) where
  toNSObject = unsafeCastId

-- ---------- CKRecord ----------

-- | Phantom type for @CKRecord@.
data CKRecord

instance IsObjCObject (Id CKRecord) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKRecord"

class IsNSObject a => IsCKRecord a where
  toCKRecord :: a -> Id CKRecord

instance IsCKRecord (Id CKRecord) where
  toCKRecord = unsafeCastId

instance IsNSObject (Id CKRecord) where
  toNSObject = unsafeCastId

-- ---------- CKRecordID ----------

-- | Phantom type for @CKRecordID@.
data CKRecordID

instance IsObjCObject (Id CKRecordID) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKRecordID"

class IsNSObject a => IsCKRecordID a where
  toCKRecordID :: a -> Id CKRecordID

instance IsCKRecordID (Id CKRecordID) where
  toCKRecordID = unsafeCastId

instance IsNSObject (Id CKRecordID) where
  toNSObject = unsafeCastId

-- ---------- CKRecordZone ----------

-- | Phantom type for @CKRecordZone@.
data CKRecordZone

instance IsObjCObject (Id CKRecordZone) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKRecordZone"

class IsNSObject a => IsCKRecordZone a where
  toCKRecordZone :: a -> Id CKRecordZone

instance IsCKRecordZone (Id CKRecordZone) where
  toCKRecordZone = unsafeCastId

instance IsNSObject (Id CKRecordZone) where
  toNSObject = unsafeCastId

-- ---------- CKRecordZoneID ----------

-- | Phantom type for @CKRecordZoneID@.
data CKRecordZoneID

instance IsObjCObject (Id CKRecordZoneID) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKRecordZoneID"

class IsNSObject a => IsCKRecordZoneID a where
  toCKRecordZoneID :: a -> Id CKRecordZoneID

instance IsCKRecordZoneID (Id CKRecordZoneID) where
  toCKRecordZoneID = unsafeCastId

instance IsNSObject (Id CKRecordZoneID) where
  toNSObject = unsafeCastId

-- ---------- CKReference ----------

-- | Phantom type for @CKReference@.
data CKReference

instance IsObjCObject (Id CKReference) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKReference"

class IsNSObject a => IsCKReference a where
  toCKReference :: a -> Id CKReference

instance IsCKReference (Id CKReference) where
  toCKReference = unsafeCastId

instance IsNSObject (Id CKReference) where
  toNSObject = unsafeCastId

-- ---------- CKServerChangeToken ----------

-- | Phantom type for @CKServerChangeToken@.
data CKServerChangeToken

instance IsObjCObject (Id CKServerChangeToken) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKServerChangeToken"

class IsNSObject a => IsCKServerChangeToken a where
  toCKServerChangeToken :: a -> Id CKServerChangeToken

instance IsCKServerChangeToken (Id CKServerChangeToken) where
  toCKServerChangeToken = unsafeCastId

instance IsNSObject (Id CKServerChangeToken) where
  toNSObject = unsafeCastId

-- ---------- CKShareMetadata ----------

-- | Phantom type for @CKShareMetadata@.
data CKShareMetadata

instance IsObjCObject (Id CKShareMetadata) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKShareMetadata"

class IsNSObject a => IsCKShareMetadata a where
  toCKShareMetadata :: a -> Id CKShareMetadata

instance IsCKShareMetadata (Id CKShareMetadata) where
  toCKShareMetadata = unsafeCastId

instance IsNSObject (Id CKShareMetadata) where
  toNSObject = unsafeCastId

-- ---------- CKShareParticipant ----------

-- | Phantom type for @CKShareParticipant@.
data CKShareParticipant

instance IsObjCObject (Id CKShareParticipant) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKShareParticipant"

class IsNSObject a => IsCKShareParticipant a where
  toCKShareParticipant :: a -> Id CKShareParticipant

instance IsCKShareParticipant (Id CKShareParticipant) where
  toCKShareParticipant = unsafeCastId

instance IsNSObject (Id CKShareParticipant) where
  toNSObject = unsafeCastId

-- ---------- CKSubscription ----------

-- | Phantom type for @CKSubscription@.
data CKSubscription

instance IsObjCObject (Id CKSubscription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKSubscription"

class IsNSObject a => IsCKSubscription a where
  toCKSubscription :: a -> Id CKSubscription

instance IsCKSubscription (Id CKSubscription) where
  toCKSubscription = unsafeCastId

instance IsNSObject (Id CKSubscription) where
  toNSObject = unsafeCastId

-- ---------- CKSystemSharingUIObserver ----------

-- | Phantom type for @CKSystemSharingUIObserver@.
data CKSystemSharingUIObserver

instance IsObjCObject (Id CKSystemSharingUIObserver) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKSystemSharingUIObserver"

class IsNSObject a => IsCKSystemSharingUIObserver a where
  toCKSystemSharingUIObserver :: a -> Id CKSystemSharingUIObserver

instance IsCKSystemSharingUIObserver (Id CKSystemSharingUIObserver) where
  toCKSystemSharingUIObserver = unsafeCastId

instance IsNSObject (Id CKSystemSharingUIObserver) where
  toNSObject = unsafeCastId

-- ---------- CKUserIdentity ----------

-- | Phantom type for @CKUserIdentity@.
data CKUserIdentity

instance IsObjCObject (Id CKUserIdentity) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKUserIdentity"

class IsNSObject a => IsCKUserIdentity a where
  toCKUserIdentity :: a -> Id CKUserIdentity

instance IsCKUserIdentity (Id CKUserIdentity) where
  toCKUserIdentity = unsafeCastId

instance IsNSObject (Id CKUserIdentity) where
  toNSObject = unsafeCastId

-- ---------- CKUserIdentityLookupInfo ----------

-- | Phantom type for @CKUserIdentityLookupInfo@.
data CKUserIdentityLookupInfo

instance IsObjCObject (Id CKUserIdentityLookupInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKUserIdentityLookupInfo"

class IsNSObject a => IsCKUserIdentityLookupInfo a where
  toCKUserIdentityLookupInfo :: a -> Id CKUserIdentityLookupInfo

instance IsCKUserIdentityLookupInfo (Id CKUserIdentityLookupInfo) where
  toCKUserIdentityLookupInfo = unsafeCastId

instance IsNSObject (Id CKUserIdentityLookupInfo) where
  toNSObject = unsafeCastId

-- ---------- CKDatabaseNotification ----------

-- | CKDatabaseNotification
--
-- @notificationType@ == @CKNotificationTypeDatabase@  When properties must be dropped (see @isPruned),@ here's the order of importance.  The most important properties are first, they'll be the last ones to be dropped.  - notificationID  - badge  - alertLocalizationKey  - alertLocalizationArgs  - alertBody  - alertActionLocalizationKey  - alertLaunchImage  - soundName  - content-available  - containerIdentifier  - subscriptionOwnerUserRecordID  - titleLocalizationKey  - titleLocalizationArgs  - title  - subtitleLocalizationKey  - subtitleLocalizationArgs  - subtitle
-- 
-- Phantom type for @CKDatabaseNotification@.
data CKDatabaseNotification

instance IsObjCObject (Id CKDatabaseNotification) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKDatabaseNotification"

class IsCKNotification a => IsCKDatabaseNotification a where
  toCKDatabaseNotification :: a -> Id CKDatabaseNotification

instance IsCKDatabaseNotification (Id CKDatabaseNotification) where
  toCKDatabaseNotification = unsafeCastId

instance IsCKNotification (Id CKDatabaseNotification) where
  toCKNotification = unsafeCastId

instance IsNSObject (Id CKDatabaseNotification) where
  toNSObject = unsafeCastId

-- ---------- CKQueryNotification ----------

-- | CKQueryNotification
--
-- @notificationType@ == @CKNotificationTypeQuery@  When properties must be dropped (see @isPruned),@ here's the order of importance.  The most important properties are first, they'll be the last ones to be dropped.  - notificationID  - badge  - alertLocalizationKey  - alertLocalizationArgs  - alertBody  - alertActionLocalizationKey  - alertLaunchImage  - soundName  - content-available  - desiredKeys  - queryNotificationReason  - recordID  - containerIdentifier  - subscriptionOwnerUserRecordID  - titleLocalizationKey  - titleLocalizationArgs  - title  - subtitleLocalizationKey  - subtitleLocalizationArgs  - subtitle
-- 
-- Phantom type for @CKQueryNotification@.
data CKQueryNotification

instance IsObjCObject (Id CKQueryNotification) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKQueryNotification"

class IsCKNotification a => IsCKQueryNotification a where
  toCKQueryNotification :: a -> Id CKQueryNotification

instance IsCKQueryNotification (Id CKQueryNotification) where
  toCKQueryNotification = unsafeCastId

instance IsCKNotification (Id CKQueryNotification) where
  toCKNotification = unsafeCastId

instance IsNSObject (Id CKQueryNotification) where
  toNSObject = unsafeCastId

-- ---------- CKRecordZoneNotification ----------

-- | CKRecordZoneNotification
--
-- @notificationType@ == @CKNotificationTypeRecordZone@  When properties must be dropped (see @isPruned),@ here's the order of importance.  The most important properties are first, they'll be the last ones to be dropped.  - notificationID  - badge  - alertLocalizationKey  - alertLocalizationArgs  - alertBody  - alertActionLocalizationKey  - alertLaunchImage  - soundName  - content-available  - recordZoneID  - containerIdentifier  - subscriptionOwnerUserRecordID  - titleLocalizationKey  - titleLocalizationArgs  - title  - subtitleLocalizationKey  - subtitleLocalizationArgs  - subtitle
-- 
-- Phantom type for @CKRecordZoneNotification@.
data CKRecordZoneNotification

instance IsObjCObject (Id CKRecordZoneNotification) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKRecordZoneNotification"

class IsCKNotification a => IsCKRecordZoneNotification a where
  toCKRecordZoneNotification :: a -> Id CKRecordZoneNotification

instance IsCKRecordZoneNotification (Id CKRecordZoneNotification) where
  toCKRecordZoneNotification = unsafeCastId

instance IsCKNotification (Id CKRecordZoneNotification) where
  toCKNotification = unsafeCastId

instance IsNSObject (Id CKRecordZoneNotification) where
  toNSObject = unsafeCastId

-- ---------- CKShare ----------

-- | CKShare
--
-- Like CKRecords, CKShares can store arbitrary key-value pairs.  They are modified and fetched in the same manner.  A share, its root record, and its root record's children records will only appear in a participant's CKFetchRecordChangesOperation's results after the share has been accepted by that participant.  Clients have access to the share (and optionally the root record) before accepting a share, via the CKShareMetadata object.  Note that in order to access a root record before accepting a share, you must run a CKFetchShareMetadataOperation requesting the root record.  A CKShare will appear in a CKFetchRecordChangesOperation's results set whenever the participant list is updated.  For that reason, you shouldn't place heavy key-value pairs in it.
-- 
-- Phantom type for @CKShare@.
data CKShare

instance IsObjCObject (Id CKShare) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKShare"

class IsCKRecord a => IsCKShare a where
  toCKShare :: a -> Id CKShare

instance IsCKShare (Id CKShare) where
  toCKShare = unsafeCastId

instance IsCKRecord (Id CKShare) where
  toCKRecord = unsafeCastId

instance IsNSObject (Id CKShare) where
  toNSObject = unsafeCastId

-- ---------- CKDatabaseSubscription ----------

-- | CKDatabaseSubscription
--
-- A subscription fires whenever any change happens in the database that this subscription was saved in.
--
-- @CKDatabaseSubscription@ is only supported in the Private and Shared databases.
-- 
-- Phantom type for @CKDatabaseSubscription@.
data CKDatabaseSubscription

instance IsObjCObject (Id CKDatabaseSubscription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKDatabaseSubscription"

class IsCKSubscription a => IsCKDatabaseSubscription a where
  toCKDatabaseSubscription :: a -> Id CKDatabaseSubscription

instance IsCKDatabaseSubscription (Id CKDatabaseSubscription) where
  toCKDatabaseSubscription = unsafeCastId

instance IsCKSubscription (Id CKDatabaseSubscription) where
  toCKSubscription = unsafeCastId

instance IsNSObject (Id CKDatabaseSubscription) where
  toNSObject = unsafeCastId

-- ---------- CKQuerySubscription ----------

-- | CKQuerySubscription
--
-- A subscription that fires whenever a change matching the predicate occurs.
--
-- @CKQuerySubscriptions@ are not supported in a @sharedCloudDatabase@
-- 
-- Phantom type for @CKQuerySubscription@.
data CKQuerySubscription

instance IsObjCObject (Id CKQuerySubscription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKQuerySubscription"

class IsCKSubscription a => IsCKQuerySubscription a where
  toCKQuerySubscription :: a -> Id CKQuerySubscription

instance IsCKQuerySubscription (Id CKQuerySubscription) where
  toCKQuerySubscription = unsafeCastId

instance IsCKSubscription (Id CKQuerySubscription) where
  toCKSubscription = unsafeCastId

instance IsNSObject (Id CKQuerySubscription) where
  toNSObject = unsafeCastId

-- ---------- CKRecordZoneSubscription ----------

-- | CKRecordZoneSubscription
--
-- A subscription that fires whenever any change happens in the indicated Record Zone.
--
-- The RecordZone must have the capability @CKRecordZoneCapabilityFetchChanges@  @CKRecordZoneSubscriptions@ are not supported in a @sharedCloudDatabase@
-- 
-- Phantom type for @CKRecordZoneSubscription@.
data CKRecordZoneSubscription

instance IsObjCObject (Id CKRecordZoneSubscription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKRecordZoneSubscription"

class IsCKSubscription a => IsCKRecordZoneSubscription a where
  toCKRecordZoneSubscription :: a -> Id CKRecordZoneSubscription

instance IsCKRecordZoneSubscription (Id CKRecordZoneSubscription) where
  toCKRecordZoneSubscription = unsafeCastId

instance IsCKSubscription (Id CKRecordZoneSubscription) where
  toCKSubscription = unsafeCastId

instance IsNSObject (Id CKRecordZoneSubscription) where
  toNSObject = unsafeCastId

-- ---------- CKOperation ----------

-- | Phantom type for @CKOperation@.
data CKOperation

instance IsObjCObject (Id CKOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKOperation"

class IsNSOperation a => IsCKOperation a where
  toCKOperation :: a -> Id CKOperation

instance IsCKOperation (Id CKOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKLocationSortDescriptor ----------

-- | Phantom type for @CKLocationSortDescriptor@.
data CKLocationSortDescriptor

instance IsObjCObject (Id CKLocationSortDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKLocationSortDescriptor"

class IsNSSortDescriptor a => IsCKLocationSortDescriptor a where
  toCKLocationSortDescriptor :: a -> Id CKLocationSortDescriptor

instance IsCKLocationSortDescriptor (Id CKLocationSortDescriptor) where
  toCKLocationSortDescriptor = unsafeCastId

instance IsNSObject (Id CKLocationSortDescriptor) where
  toNSObject = unsafeCastId

instance IsNSSortDescriptor (Id CKLocationSortDescriptor) where
  toNSSortDescriptor = unsafeCastId

-- ---------- CKAcceptSharesOperation ----------

-- | Phantom type for @CKAcceptSharesOperation@.
data CKAcceptSharesOperation

instance IsObjCObject (Id CKAcceptSharesOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKAcceptSharesOperation"

class IsCKOperation a => IsCKAcceptSharesOperation a where
  toCKAcceptSharesOperation :: a -> Id CKAcceptSharesOperation

instance IsCKAcceptSharesOperation (Id CKAcceptSharesOperation) where
  toCKAcceptSharesOperation = unsafeCastId

instance IsCKOperation (Id CKAcceptSharesOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKAcceptSharesOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKAcceptSharesOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKDatabaseOperation ----------

-- | Phantom type for @CKDatabaseOperation@.
data CKDatabaseOperation

instance IsObjCObject (Id CKDatabaseOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKDatabaseOperation"

class IsCKOperation a => IsCKDatabaseOperation a where
  toCKDatabaseOperation :: a -> Id CKDatabaseOperation

instance IsCKDatabaseOperation (Id CKDatabaseOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKDatabaseOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKDatabaseOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKDatabaseOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKDiscoverAllUserIdentitiesOperation ----------

-- | CKDiscoverAllUserIdentitiesOperation
--
-- Finds all discoverable users in the device's contacts database. No Contacts access dialog will be displayed.
--
-- This operation scales linearly with the number of email addresses and phone numbers in the device's address book.  It may take some time to complete.
-- 
-- Phantom type for @CKDiscoverAllUserIdentitiesOperation@.
data CKDiscoverAllUserIdentitiesOperation

instance IsObjCObject (Id CKDiscoverAllUserIdentitiesOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKDiscoverAllUserIdentitiesOperation"

class IsCKOperation a => IsCKDiscoverAllUserIdentitiesOperation a where
  toCKDiscoverAllUserIdentitiesOperation :: a -> Id CKDiscoverAllUserIdentitiesOperation

instance IsCKDiscoverAllUserIdentitiesOperation (Id CKDiscoverAllUserIdentitiesOperation) where
  toCKDiscoverAllUserIdentitiesOperation = unsafeCastId

instance IsCKOperation (Id CKDiscoverAllUserIdentitiesOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKDiscoverAllUserIdentitiesOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKDiscoverAllUserIdentitiesOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKDiscoverUserIdentitiesOperation ----------

-- | Phantom type for @CKDiscoverUserIdentitiesOperation@.
data CKDiscoverUserIdentitiesOperation

instance IsObjCObject (Id CKDiscoverUserIdentitiesOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKDiscoverUserIdentitiesOperation"

class IsCKOperation a => IsCKDiscoverUserIdentitiesOperation a where
  toCKDiscoverUserIdentitiesOperation :: a -> Id CKDiscoverUserIdentitiesOperation

instance IsCKDiscoverUserIdentitiesOperation (Id CKDiscoverUserIdentitiesOperation) where
  toCKDiscoverUserIdentitiesOperation = unsafeCastId

instance IsCKOperation (Id CKDiscoverUserIdentitiesOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKDiscoverUserIdentitiesOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKDiscoverUserIdentitiesOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKFetchNotificationChangesOperation ----------

-- | CKFetchNotificationChangesOperation
--
-- An operation that fetches all notification changes.
--
-- If a change token from a previous @CKFetchNotificationChangesOperation@ is passed in, only the notifications that have changed since that token will be fetched.  If this is your first fetch, pass nil for the change token.  Change tokens are opaque tokens and clients should not infer any behavior based on their content.
-- 
-- Phantom type for @CKFetchNotificationChangesOperation@.
data CKFetchNotificationChangesOperation

instance IsObjCObject (Id CKFetchNotificationChangesOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchNotificationChangesOperation"

class IsCKOperation a => IsCKFetchNotificationChangesOperation a where
  toCKFetchNotificationChangesOperation :: a -> Id CKFetchNotificationChangesOperation

instance IsCKFetchNotificationChangesOperation (Id CKFetchNotificationChangesOperation) where
  toCKFetchNotificationChangesOperation = unsafeCastId

instance IsCKOperation (Id CKFetchNotificationChangesOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKFetchNotificationChangesOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKFetchNotificationChangesOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKFetchShareMetadataOperation ----------

-- | CKFetchShareMetadataOperation
--
-- Fetch the @CKShareMetadata@ for a share URL.
--
-- Since you can't know what container this share is in before you fetch its metadata, you may run this operation in any container you have access to
-- 
-- Phantom type for @CKFetchShareMetadataOperation@.
data CKFetchShareMetadataOperation

instance IsObjCObject (Id CKFetchShareMetadataOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchShareMetadataOperation"

class IsCKOperation a => IsCKFetchShareMetadataOperation a where
  toCKFetchShareMetadataOperation :: a -> Id CKFetchShareMetadataOperation

instance IsCKFetchShareMetadataOperation (Id CKFetchShareMetadataOperation) where
  toCKFetchShareMetadataOperation = unsafeCastId

instance IsCKOperation (Id CKFetchShareMetadataOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKFetchShareMetadataOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKFetchShareMetadataOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKFetchShareParticipantsOperation ----------

-- | Phantom type for @CKFetchShareParticipantsOperation@.
data CKFetchShareParticipantsOperation

instance IsObjCObject (Id CKFetchShareParticipantsOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchShareParticipantsOperation"

class IsCKOperation a => IsCKFetchShareParticipantsOperation a where
  toCKFetchShareParticipantsOperation :: a -> Id CKFetchShareParticipantsOperation

instance IsCKFetchShareParticipantsOperation (Id CKFetchShareParticipantsOperation) where
  toCKFetchShareParticipantsOperation = unsafeCastId

instance IsCKOperation (Id CKFetchShareParticipantsOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKFetchShareParticipantsOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKFetchShareParticipantsOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKMarkNotificationsReadOperation ----------

-- | Phantom type for @CKMarkNotificationsReadOperation@.
data CKMarkNotificationsReadOperation

instance IsObjCObject (Id CKMarkNotificationsReadOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKMarkNotificationsReadOperation"

class IsCKOperation a => IsCKMarkNotificationsReadOperation a where
  toCKMarkNotificationsReadOperation :: a -> Id CKMarkNotificationsReadOperation

instance IsCKMarkNotificationsReadOperation (Id CKMarkNotificationsReadOperation) where
  toCKMarkNotificationsReadOperation = unsafeCastId

instance IsCKOperation (Id CKMarkNotificationsReadOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKMarkNotificationsReadOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKMarkNotificationsReadOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKModifyBadgeOperation ----------

-- | Phantom type for @CKModifyBadgeOperation@.
data CKModifyBadgeOperation

instance IsObjCObject (Id CKModifyBadgeOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKModifyBadgeOperation"

class IsCKOperation a => IsCKModifyBadgeOperation a where
  toCKModifyBadgeOperation :: a -> Id CKModifyBadgeOperation

instance IsCKModifyBadgeOperation (Id CKModifyBadgeOperation) where
  toCKModifyBadgeOperation = unsafeCastId

instance IsCKOperation (Id CKModifyBadgeOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKModifyBadgeOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKModifyBadgeOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKFetchDatabaseChangesOperation ----------

-- | CKFetchDatabaseChangesOperation
--
-- This operation will fetch changes to record zones within a database
--
-- If a change anchor from a previous @CKFetchDatabaseChangesOperation@ is passed in, only the zones that have changed since that anchor will be returned.  This per-database @serverChangeToken@ is not to be confused with the per-recordZone @serverChangeToken@ from @CKFetchRecordZoneChangesOperation.@  If this is your first fetch or if you wish to re-fetch all zones, pass nil for the change token.  Change token are opaque tokens and clients should not infer any behavior based on their content.  @CKFetchDatabaseChangesOperation@ is supported in a @privateCloudDatabase@ and @sharedCloudDatabase@
-- 
-- Phantom type for @CKFetchDatabaseChangesOperation@.
data CKFetchDatabaseChangesOperation

instance IsObjCObject (Id CKFetchDatabaseChangesOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchDatabaseChangesOperation"

class IsCKDatabaseOperation a => IsCKFetchDatabaseChangesOperation a where
  toCKFetchDatabaseChangesOperation :: a -> Id CKFetchDatabaseChangesOperation

instance IsCKFetchDatabaseChangesOperation (Id CKFetchDatabaseChangesOperation) where
  toCKFetchDatabaseChangesOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKFetchDatabaseChangesOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKFetchDatabaseChangesOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKFetchDatabaseChangesOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKFetchDatabaseChangesOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKFetchRecordChangesOperation ----------

-- | CKFetchRecordChangesOperation
--
-- Use CKFetchRecordZoneChangesOperation instead of this class.
--
-- Any serverChangeTokens saved from a CKFetchRecordChangesOperation are usable as a serverRecordZoneChangeToken in CKFetchRecordZoneChangesOperation
--
-- This operation will fetch records changes in the given record zone.
--
-- If a change token from a previous @CKFetchRecordChangesOperation@ is passed in, only the records that have changed since that token will be fetched.  If this is your first fetch or if you wish to re-fetch all records, pass nil for the change token.  Change tokens are opaque tokens and clients should not infer any behavior based on their content
-- 
-- Phantom type for @CKFetchRecordChangesOperation@.
data CKFetchRecordChangesOperation

instance IsObjCObject (Id CKFetchRecordChangesOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchRecordChangesOperation"

class IsCKDatabaseOperation a => IsCKFetchRecordChangesOperation a where
  toCKFetchRecordChangesOperation :: a -> Id CKFetchRecordChangesOperation

instance IsCKFetchRecordChangesOperation (Id CKFetchRecordChangesOperation) where
  toCKFetchRecordChangesOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKFetchRecordChangesOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKFetchRecordChangesOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKFetchRecordChangesOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKFetchRecordChangesOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKFetchRecordZoneChangesOperation ----------

-- | This operation will fetch records changes across the given record zones
--
-- For each @previousServerChangeToken@ passed in with a @CKFetchRecordZoneChangesConfiguration,@ only records that have changed since that anchor will be fetched.  If this is your first fetch of a zone or if you wish to re-fetch all records within a zone, do not include a @previousServerChangeToken.@  Change tokens are opaque tokens and clients should not infer any behavior based on their content.
-- 
-- Phantom type for @CKFetchRecordZoneChangesOperation@.
data CKFetchRecordZoneChangesOperation

instance IsObjCObject (Id CKFetchRecordZoneChangesOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchRecordZoneChangesOperation"

class IsCKDatabaseOperation a => IsCKFetchRecordZoneChangesOperation a where
  toCKFetchRecordZoneChangesOperation :: a -> Id CKFetchRecordZoneChangesOperation

instance IsCKFetchRecordZoneChangesOperation (Id CKFetchRecordZoneChangesOperation) where
  toCKFetchRecordZoneChangesOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKFetchRecordZoneChangesOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKFetchRecordZoneChangesOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKFetchRecordZoneChangesOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKFetchRecordZoneChangesOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKFetchRecordZonesOperation ----------

-- | Phantom type for @CKFetchRecordZonesOperation@.
data CKFetchRecordZonesOperation

instance IsObjCObject (Id CKFetchRecordZonesOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchRecordZonesOperation"

class IsCKDatabaseOperation a => IsCKFetchRecordZonesOperation a where
  toCKFetchRecordZonesOperation :: a -> Id CKFetchRecordZonesOperation

instance IsCKFetchRecordZonesOperation (Id CKFetchRecordZonesOperation) where
  toCKFetchRecordZonesOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKFetchRecordZonesOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKFetchRecordZonesOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKFetchRecordZonesOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKFetchRecordZonesOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKFetchRecordsOperation ----------

-- | Phantom type for @CKFetchRecordsOperation@.
data CKFetchRecordsOperation

instance IsObjCObject (Id CKFetchRecordsOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchRecordsOperation"

class IsCKDatabaseOperation a => IsCKFetchRecordsOperation a where
  toCKFetchRecordsOperation :: a -> Id CKFetchRecordsOperation

instance IsCKFetchRecordsOperation (Id CKFetchRecordsOperation) where
  toCKFetchRecordsOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKFetchRecordsOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKFetchRecordsOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKFetchRecordsOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKFetchRecordsOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKFetchSubscriptionsOperation ----------

-- | Phantom type for @CKFetchSubscriptionsOperation@.
data CKFetchSubscriptionsOperation

instance IsObjCObject (Id CKFetchSubscriptionsOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchSubscriptionsOperation"

class IsCKDatabaseOperation a => IsCKFetchSubscriptionsOperation a where
  toCKFetchSubscriptionsOperation :: a -> Id CKFetchSubscriptionsOperation

instance IsCKFetchSubscriptionsOperation (Id CKFetchSubscriptionsOperation) where
  toCKFetchSubscriptionsOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKFetchSubscriptionsOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKFetchSubscriptionsOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKFetchSubscriptionsOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKFetchSubscriptionsOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKFetchWebAuthTokenOperation ----------

-- | CKFetchWebAuthTokenOperation
--
-- This operation will fetch a web auth token given an API token obtained from the CloudKit Dashboard for your container
-- 
-- Phantom type for @CKFetchWebAuthTokenOperation@.
data CKFetchWebAuthTokenOperation

instance IsObjCObject (Id CKFetchWebAuthTokenOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKFetchWebAuthTokenOperation"

class IsCKDatabaseOperation a => IsCKFetchWebAuthTokenOperation a where
  toCKFetchWebAuthTokenOperation :: a -> Id CKFetchWebAuthTokenOperation

instance IsCKFetchWebAuthTokenOperation (Id CKFetchWebAuthTokenOperation) where
  toCKFetchWebAuthTokenOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKFetchWebAuthTokenOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKFetchWebAuthTokenOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKFetchWebAuthTokenOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKFetchWebAuthTokenOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKModifyRecordZonesOperation ----------

-- | Phantom type for @CKModifyRecordZonesOperation@.
data CKModifyRecordZonesOperation

instance IsObjCObject (Id CKModifyRecordZonesOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKModifyRecordZonesOperation"

class IsCKDatabaseOperation a => IsCKModifyRecordZonesOperation a where
  toCKModifyRecordZonesOperation :: a -> Id CKModifyRecordZonesOperation

instance IsCKModifyRecordZonesOperation (Id CKModifyRecordZonesOperation) where
  toCKModifyRecordZonesOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKModifyRecordZonesOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKModifyRecordZonesOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKModifyRecordZonesOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKModifyRecordZonesOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKModifyRecordsOperation ----------

-- | Phantom type for @CKModifyRecordsOperation@.
data CKModifyRecordsOperation

instance IsObjCObject (Id CKModifyRecordsOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKModifyRecordsOperation"

class IsCKDatabaseOperation a => IsCKModifyRecordsOperation a where
  toCKModifyRecordsOperation :: a -> Id CKModifyRecordsOperation

instance IsCKModifyRecordsOperation (Id CKModifyRecordsOperation) where
  toCKModifyRecordsOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKModifyRecordsOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKModifyRecordsOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKModifyRecordsOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKModifyRecordsOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKModifySubscriptionsOperation ----------

-- | Phantom type for @CKModifySubscriptionsOperation@.
data CKModifySubscriptionsOperation

instance IsObjCObject (Id CKModifySubscriptionsOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKModifySubscriptionsOperation"

class IsCKDatabaseOperation a => IsCKModifySubscriptionsOperation a where
  toCKModifySubscriptionsOperation :: a -> Id CKModifySubscriptionsOperation

instance IsCKModifySubscriptionsOperation (Id CKModifySubscriptionsOperation) where
  toCKModifySubscriptionsOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKModifySubscriptionsOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKModifySubscriptionsOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKModifySubscriptionsOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKModifySubscriptionsOperation) where
  toNSOperation = unsafeCastId

-- ---------- CKQueryOperation ----------

-- | Phantom type for @CKQueryOperation@.
data CKQueryOperation

instance IsObjCObject (Id CKQueryOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CKQueryOperation"

class IsCKDatabaseOperation a => IsCKQueryOperation a where
  toCKQueryOperation :: a -> Id CKQueryOperation

instance IsCKQueryOperation (Id CKQueryOperation) where
  toCKQueryOperation = unsafeCastId

instance IsCKDatabaseOperation (Id CKQueryOperation) where
  toCKDatabaseOperation = unsafeCastId

instance IsCKOperation (Id CKQueryOperation) where
  toCKOperation = unsafeCastId

instance IsNSObject (Id CKQueryOperation) where
  toNSObject = unsafeCastId

instance IsNSOperation (Id CKQueryOperation) where
  toNSOperation = unsafeCastId
