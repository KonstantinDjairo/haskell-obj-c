{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | CKShare
--
-- Like CKRecords, CKShares can store arbitrary key-value pairs.  They are modified and fetched in the same manner.  A share, its root record, and its root record's children records will only appear in a participant's CKFetchRecordChangesOperation's results after the share has been accepted by that participant.  Clients have access to the share (and optionally the root record) before accepting a share, via the CKShareMetadata object.  Note that in order to access a root record before accepting a share, you must run a CKFetchShareMetadataOperation requesting the root record.  A CKShare will appear in a CKFetchRecordChangesOperation's results set whenever the participant list is updated.  For that reason, you shouldn't place heavy key-value pairs in it.
--
-- Generated bindings for @CKShare@.
module ObjC.CloudKit.CKShare
  ( CKShare
  , IsCKShare(..)
  , initWithRootRecord
  , initWithRootRecord_shareID
  , initWithRecordZoneID
  , initWithCoder
  , addParticipant
  , removeParticipant
  , init_
  , new
  , initWithRecordType
  , initWithRecordType_recordID
  , initWithRecordType_zoneID
  , publicPermission
  , setPublicPermission
  , url
  , participants
  , owner
  , currentUserParticipant
  , addParticipantSelector
  , currentUserParticipantSelector
  , initSelector
  , initWithCoderSelector
  , initWithRecordTypeSelector
  , initWithRecordType_recordIDSelector
  , initWithRecordType_zoneIDSelector
  , initWithRecordZoneIDSelector
  , initWithRootRecordSelector
  , initWithRootRecord_shareIDSelector
  , newSelector
  , ownerSelector
  , participantsSelector
  , publicPermissionSelector
  , removeParticipantSelector
  , setPublicPermissionSelector
  , urlSelector

  -- * Enum types
  , CKShareParticipantPermission(CKShareParticipantPermission)
  , pattern CKShareParticipantPermissionUnknown
  , pattern CKShareParticipantPermissionNone
  , pattern CKShareParticipantPermissionReadOnly
  , pattern CKShareParticipantPermissionReadWrite

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

-- | When saving a newly created CKShare, you must save the share and its rootRecord in the same CKModifyRecordsOperation batch.
--
-- ObjC selector: @- initWithRootRecord:@
initWithRootRecord :: (IsCKShare ckShare, IsCKRecord rootRecord) => ckShare -> rootRecord -> IO (Id CKShare)
initWithRootRecord ckShare rootRecord =
  sendOwnedMessage ckShare initWithRootRecordSelector (toCKRecord rootRecord)

-- | @- initWithRootRecord:shareID:@
initWithRootRecord_shareID :: (IsCKShare ckShare, IsCKRecord rootRecord, IsCKRecordID shareID) => ckShare -> rootRecord -> shareID -> IO (Id CKShare)
initWithRootRecord_shareID ckShare rootRecord shareID =
  sendOwnedMessage ckShare initWithRootRecord_shareIDSelector (toCKRecord rootRecord) (toCKRecordID shareID)

-- | Creates a zone-wide @CKShare.@  A zone-wide @CKShare@ can only exist in a zone with sharing capability @CKRecordZoneCapabilityZoneWideSharing.@ Only one such share can exist in a zone at a time.
--
-- All records in this zone will appear in a participant's @CKFetchRecordZoneChangesOperation@ results in the shared database after the share has been accepted by the participant.
--
-- Since these shares do not have an associated root record, @shouldFetchRootRecord@ and @rootRecordDesiredKeys@ are always ignored when running a @CKFetchShareMetadataOperation@ on a zone-wide share URL. Additionally, @rootRecordID@ on the resulting @CKShareMetadata@ is always absent.
--
-- ObjC selector: @- initWithRecordZoneID:@
initWithRecordZoneID :: (IsCKShare ckShare, IsCKRecordZoneID recordZoneID) => ckShare -> recordZoneID -> IO (Id CKShare)
initWithRecordZoneID ckShare recordZoneID =
  sendOwnedMessage ckShare initWithRecordZoneIDSelector (toCKRecordZoneID recordZoneID)

-- | @- initWithCoder:@
initWithCoder :: (IsCKShare ckShare, IsNSCoder aDecoder) => ckShare -> aDecoder -> IO (Id CKShare)
initWithCoder ckShare aDecoder =
  sendOwnedMessage ckShare initWithCoderSelector (toNSCoder aDecoder)

-- | If a participant with a matching userIdentity already exists, then that existing participant's properties will be updated; no new participant will be added.  In order to modify the list of participants, a share must have publicPermission set to @CKShareParticipantPermissionNone.@  That is, you cannot mix-and-match private users and public users in the same share.  Only certain participant types may be added via this API
--
-- See: CKShareParticipantRole
--
-- ObjC selector: @- addParticipant:@
addParticipant :: (IsCKShare ckShare, IsCKShareParticipant participant) => ckShare -> participant -> IO ()
addParticipant ckShare participant =
  sendMessage ckShare addParticipantSelector (toCKShareParticipant participant)

-- | @- removeParticipant:@
removeParticipant :: (IsCKShare ckShare, IsCKShareParticipant participant) => ckShare -> participant -> IO ()
removeParticipant ckShare participant =
  sendMessage ckShare removeParticipantSelector (toCKShareParticipant participant)

-- | These superclass-provided initializers are not allowed for CKShare
--
-- ObjC selector: @- init@
init_ :: IsCKShare ckShare => ckShare -> IO (Id CKShare)
init_ ckShare =
  sendOwnedMessage ckShare initSelector

-- | @+ new@
new :: IO (Id CKShare)
new  =
  do
    cls' <- getRequiredClass "CKShare"
    sendOwnedClassMessage cls' newSelector

-- | @- initWithRecordType:@
initWithRecordType :: (IsCKShare ckShare, IsNSString recordType) => ckShare -> recordType -> IO (Id CKShare)
initWithRecordType ckShare recordType =
  sendOwnedMessage ckShare initWithRecordTypeSelector (toNSString recordType)

-- | @- initWithRecordType:recordID:@
initWithRecordType_recordID :: (IsCKShare ckShare, IsNSString recordType, IsCKRecordID recordID) => ckShare -> recordType -> recordID -> IO (Id CKShare)
initWithRecordType_recordID ckShare recordType recordID =
  sendOwnedMessage ckShare initWithRecordType_recordIDSelector (toNSString recordType) (toCKRecordID recordID)

-- | @- initWithRecordType:zoneID:@
initWithRecordType_zoneID :: (IsCKShare ckShare, IsNSString recordType, IsCKRecordZoneID zoneID) => ckShare -> recordType -> zoneID -> IO (Id CKShare)
initWithRecordType_zoneID ckShare recordType zoneID =
  sendOwnedMessage ckShare initWithRecordType_zoneIDSelector (toNSString recordType) (toCKRecordZoneID zoneID)

-- | Defines what permission a user has when not explicitly added to the share.
--
-- Shares with @publicPermission@ more permissive than @CKShareParticipantPermissionNone@ can be joined by any user with access to the share's shareURL.  By default, public permission is @CKShareParticipantPermissionNone.@  Changing the public permission to @CKShareParticipantPermissionReadOnly@ or @CKShareParticipantPermissionReadWrite@ will result in all pending participants being removed.  Already-accepted participants will remain on the share.  Changing the public permission to @CKShareParticipantPermissionNone@ will result in all participants being removed from the share.  You may subsequently choose to call @addParticipant:@ before saving the share, those participants will be added to the share.
--
-- ObjC selector: @- publicPermission@
publicPermission :: IsCKShare ckShare => ckShare -> IO CKShareParticipantPermission
publicPermission ckShare =
  sendMessage ckShare publicPermissionSelector

-- | Defines what permission a user has when not explicitly added to the share.
--
-- Shares with @publicPermission@ more permissive than @CKShareParticipantPermissionNone@ can be joined by any user with access to the share's shareURL.  By default, public permission is @CKShareParticipantPermissionNone.@  Changing the public permission to @CKShareParticipantPermissionReadOnly@ or @CKShareParticipantPermissionReadWrite@ will result in all pending participants being removed.  Already-accepted participants will remain on the share.  Changing the public permission to @CKShareParticipantPermissionNone@ will result in all participants being removed from the share.  You may subsequently choose to call @addParticipant:@ before saving the share, those participants will be added to the share.
--
-- ObjC selector: @- setPublicPermission:@
setPublicPermission :: IsCKShare ckShare => ckShare -> CKShareParticipantPermission -> IO ()
setPublicPermission ckShare value =
  sendMessage ckShare setPublicPermissionSelector value

-- | A URL that can be used to invite participants to this share.
--
-- Only available after share record has been saved to the server.  This url is stable, and is tied to the rootRecord.  That is, if you share a rootRecord, delete the share, and re-share the same rootRecord via a newly created share, that newly created share's url will be identical to the prior share's url
--
-- ObjC selector: @- URL@
url :: IsCKShare ckShare => ckShare -> IO (Id NSURL)
url ckShare =
  sendMessage ckShare urlSelector

-- | All participants on the share that the current user has permissions to see.
--
-- At the minimum that will include the owner and the current user.
--
-- ObjC selector: @- participants@
participants :: IsCKShare ckShare => ckShare -> IO (Id NSArray)
participants ckShare =
  sendMessage ckShare participantsSelector

-- | Convenience methods for fetching special users from the participant array
--
-- ObjC selector: @- owner@
owner :: IsCKShare ckShare => ckShare -> IO (Id CKShareParticipant)
owner ckShare =
  sendMessage ckShare ownerSelector

-- | @- currentUserParticipant@
currentUserParticipant :: IsCKShare ckShare => ckShare -> IO (Id CKShareParticipant)
currentUserParticipant ckShare =
  sendMessage ckShare currentUserParticipantSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithRootRecord:@
initWithRootRecordSelector :: Selector '[Id CKRecord] (Id CKShare)
initWithRootRecordSelector = mkSelector "initWithRootRecord:"

-- | @Selector@ for @initWithRootRecord:shareID:@
initWithRootRecord_shareIDSelector :: Selector '[Id CKRecord, Id CKRecordID] (Id CKShare)
initWithRootRecord_shareIDSelector = mkSelector "initWithRootRecord:shareID:"

-- | @Selector@ for @initWithRecordZoneID:@
initWithRecordZoneIDSelector :: Selector '[Id CKRecordZoneID] (Id CKShare)
initWithRecordZoneIDSelector = mkSelector "initWithRecordZoneID:"

-- | @Selector@ for @initWithCoder:@
initWithCoderSelector :: Selector '[Id NSCoder] (Id CKShare)
initWithCoderSelector = mkSelector "initWithCoder:"

-- | @Selector@ for @addParticipant:@
addParticipantSelector :: Selector '[Id CKShareParticipant] ()
addParticipantSelector = mkSelector "addParticipant:"

-- | @Selector@ for @removeParticipant:@
removeParticipantSelector :: Selector '[Id CKShareParticipant] ()
removeParticipantSelector = mkSelector "removeParticipant:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id CKShare)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id CKShare)
newSelector = mkSelector "new"

-- | @Selector@ for @initWithRecordType:@
initWithRecordTypeSelector :: Selector '[Id NSString] (Id CKShare)
initWithRecordTypeSelector = mkSelector "initWithRecordType:"

-- | @Selector@ for @initWithRecordType:recordID:@
initWithRecordType_recordIDSelector :: Selector '[Id NSString, Id CKRecordID] (Id CKShare)
initWithRecordType_recordIDSelector = mkSelector "initWithRecordType:recordID:"

-- | @Selector@ for @initWithRecordType:zoneID:@
initWithRecordType_zoneIDSelector :: Selector '[Id NSString, Id CKRecordZoneID] (Id CKShare)
initWithRecordType_zoneIDSelector = mkSelector "initWithRecordType:zoneID:"

-- | @Selector@ for @publicPermission@
publicPermissionSelector :: Selector '[] CKShareParticipantPermission
publicPermissionSelector = mkSelector "publicPermission"

-- | @Selector@ for @setPublicPermission:@
setPublicPermissionSelector :: Selector '[CKShareParticipantPermission] ()
setPublicPermissionSelector = mkSelector "setPublicPermission:"

-- | @Selector@ for @URL@
urlSelector :: Selector '[] (Id NSURL)
urlSelector = mkSelector "URL"

-- | @Selector@ for @participants@
participantsSelector :: Selector '[] (Id NSArray)
participantsSelector = mkSelector "participants"

-- | @Selector@ for @owner@
ownerSelector :: Selector '[] (Id CKShareParticipant)
ownerSelector = mkSelector "owner"

-- | @Selector@ for @currentUserParticipant@
currentUserParticipantSelector :: Selector '[] (Id CKShareParticipant)
currentUserParticipantSelector = mkSelector "currentUserParticipant"

