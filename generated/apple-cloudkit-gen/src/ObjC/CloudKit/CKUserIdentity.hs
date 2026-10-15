{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CKUserIdentity@.
module ObjC.CloudKit.CKUserIdentity
  ( CKUserIdentity
  , IsCKUserIdentity(..)
  , init_
  , new
  , lookupInfo
  , nameComponents
  , userRecordID
  , contactIdentifiers
  , hasiCloudAccount
  , contactIdentifiersSelector
  , hasiCloudAccountSelector
  , initSelector
  , lookupInfoSelector
  , nameComponentsSelector
  , newSelector
  , userRecordIDSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CloudKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Use @CKDiscoverUserIdentitiesOperation@ or @CKFetchShareParticipantsOperation@ to create a @CKUserIdentity@
--
-- ObjC selector: @- init@
init_ :: IsCKUserIdentity ckUserIdentity => ckUserIdentity -> IO (Id CKUserIdentity)
init_ ckUserIdentity =
  sendOwnedMessage ckUserIdentity initSelector

-- | @+ new@
new :: IO (Id CKUserIdentity)
new  =
  do
    cls' <- getRequiredClass "CKUserIdentity"
    sendOwnedClassMessage cls' newSelector

-- | This is the @lookupInfo@ you passed in to @CKDiscoverUserIdentitiesOperation@ or @CKFetchShareParticipantsOperation@
--
-- ObjC selector: @- lookupInfo@
lookupInfo :: IsCKUserIdentity ckUserIdentity => ckUserIdentity -> IO (Id CKUserIdentityLookupInfo)
lookupInfo ckUserIdentity =
  sendMessage ckUserIdentity lookupInfoSelector

-- | @- nameComponents@
nameComponents :: IsCKUserIdentity ckUserIdentity => ckUserIdentity -> IO (Id NSPersonNameComponents)
nameComponents ckUserIdentity =
  sendMessage ckUserIdentity nameComponentsSelector

-- | @- userRecordID@
userRecordID :: IsCKUserIdentity ckUserIdentity => ckUserIdentity -> IO (Id CKRecordID)
userRecordID ckUserIdentity =
  sendMessage ckUserIdentity userRecordIDSelector

-- | Link to the Contacts database.
--
-- Identities discovered via @CKDiscoverAllUserIdentitiesOperation@ correspond to entries in the local Contacts database.  These identities will have @contactIdentifiers@ filled out, which your app may use to get additional information about the contacts that were discovered.  Multiple @contactIdentifiers@ may exist for a single discovered user, as multiple contacts may contain the same email addresses or phone numbers.
--
-- Returns: individual, non-unified contacts.
--
-- To transform these identifiers into an array of unified contact identifiers, pass a @CNContact.predicateForContacts(withIdentifiers:)@ predicate into @CNContactStore.unifiedContacts(matching:keysToFetch:)@
--
-- See: Contacts.framework and CNContact.identifier
--
-- ObjC selector: @- contactIdentifiers@
contactIdentifiers :: IsCKUserIdentity ckUserIdentity => ckUserIdentity -> IO (Id NSArray)
contactIdentifiers ckUserIdentity =
  sendMessage ckUserIdentity contactIdentifiersSelector

-- | @- hasiCloudAccount@
hasiCloudAccount :: IsCKUserIdentity ckUserIdentity => ckUserIdentity -> IO Bool
hasiCloudAccount ckUserIdentity =
  sendMessage ckUserIdentity hasiCloudAccountSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id CKUserIdentity)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id CKUserIdentity)
newSelector = mkSelector "new"

-- | @Selector@ for @lookupInfo@
lookupInfoSelector :: Selector '[] (Id CKUserIdentityLookupInfo)
lookupInfoSelector = mkSelector "lookupInfo"

-- | @Selector@ for @nameComponents@
nameComponentsSelector :: Selector '[] (Id NSPersonNameComponents)
nameComponentsSelector = mkSelector "nameComponents"

-- | @Selector@ for @userRecordID@
userRecordIDSelector :: Selector '[] (Id CKRecordID)
userRecordIDSelector = mkSelector "userRecordID"

-- | @Selector@ for @contactIdentifiers@
contactIdentifiersSelector :: Selector '[] (Id NSArray)
contactIdentifiersSelector = mkSelector "contactIdentifiers"

-- | @Selector@ for @hasiCloudAccount@
hasiCloudAccountSelector :: Selector '[] Bool
hasiCloudAccountSelector = mkSelector "hasiCloudAccount"

