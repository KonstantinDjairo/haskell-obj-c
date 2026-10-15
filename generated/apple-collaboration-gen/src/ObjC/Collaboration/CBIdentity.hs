{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CBIdentity@.
module ObjC.Collaboration.CBIdentity
  ( CBIdentity
  , IsCBIdentity(..)
  , identityWithName_authority
  , identityWithUniqueIdentifier_authority
  , identityWithUUIDString_authority
  , identityWithPersistentReference
  , identityWithCSIdentity
  , isMemberOfGroup
  , authority
  , uniqueIdentifier
  , uuidString
  , fullName
  , posixName
  , aliases
  , emailAddress
  , image
  , persistentReference
  , hidden
  , csIdentity
  , aliasesSelector
  , authoritySelector
  , csIdentitySelector
  , emailAddressSelector
  , fullNameSelector
  , hiddenSelector
  , identityWithCSIdentitySelector
  , identityWithName_authoritySelector
  , identityWithPersistentReferenceSelector
  , identityWithUUIDString_authoritySelector
  , identityWithUniqueIdentifier_authoritySelector
  , imageSelector
  , isMemberOfGroupSelector
  , persistentReferenceSelector
  , posixNameSelector
  , uniqueIdentifierSelector
  , uuidStringSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Collaboration.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ identityWithName:authority:@
identityWithName_authority :: (IsNSString name, IsCBIdentityAuthority authority) => name -> authority -> IO (Id CBIdentity)
identityWithName_authority name authority =
  do
    cls' <- getRequiredClass "CBIdentity"
    sendClassMessage cls' identityWithName_authoritySelector (toNSString name) (toCBIdentityAuthority authority)

-- | @+ identityWithUniqueIdentifier:authority:@
identityWithUniqueIdentifier_authority :: (IsNSUUID uuid, IsCBIdentityAuthority authority) => uuid -> authority -> IO (Id CBIdentity)
identityWithUniqueIdentifier_authority uuid authority =
  do
    cls' <- getRequiredClass "CBIdentity"
    sendClassMessage cls' identityWithUniqueIdentifier_authoritySelector (toNSUUID uuid) (toCBIdentityAuthority authority)

-- | @+ identityWithUUIDString:authority:@
identityWithUUIDString_authority :: (IsNSString uuid, IsCBIdentityAuthority authority) => uuid -> authority -> IO (Id CBIdentity)
identityWithUUIDString_authority uuid authority =
  do
    cls' <- getRequiredClass "CBIdentity"
    sendClassMessage cls' identityWithUUIDString_authoritySelector (toNSString uuid) (toCBIdentityAuthority authority)

-- | @+ identityWithPersistentReference:@
identityWithPersistentReference :: IsNSData data_ => data_ -> IO (Id CBIdentity)
identityWithPersistentReference data_ =
  do
    cls' <- getRequiredClass "CBIdentity"
    sendClassMessage cls' identityWithPersistentReferenceSelector (toNSData data_)

-- | @+ identityWithCSIdentity:@
identityWithCSIdentity :: Ptr () -> IO (Id CBIdentity)
identityWithCSIdentity csIdentity =
  do
    cls' <- getRequiredClass "CBIdentity"
    sendClassMessage cls' identityWithCSIdentitySelector csIdentity

-- | @- isMemberOfGroup:@
isMemberOfGroup :: (IsCBIdentity cbIdentity, IsCBGroupIdentity group) => cbIdentity -> group -> IO Bool
isMemberOfGroup cbIdentity group =
  sendMessage cbIdentity isMemberOfGroupSelector (toCBGroupIdentity group)

-- | @- authority@
authority :: IsCBIdentity cbIdentity => cbIdentity -> IO (Id CBIdentityAuthority)
authority cbIdentity =
  sendMessage cbIdentity authoritySelector

-- | @- uniqueIdentifier@
uniqueIdentifier :: IsCBIdentity cbIdentity => cbIdentity -> IO RawId
uniqueIdentifier cbIdentity =
  sendMessage cbIdentity uniqueIdentifierSelector

-- | @- UUIDString@
uuidString :: IsCBIdentity cbIdentity => cbIdentity -> IO RawId
uuidString cbIdentity =
  sendMessage cbIdentity uuidStringSelector

-- | @- fullName@
fullName :: IsCBIdentity cbIdentity => cbIdentity -> IO (Id NSString)
fullName cbIdentity =
  sendMessage cbIdentity fullNameSelector

-- | @- posixName@
posixName :: IsCBIdentity cbIdentity => cbIdentity -> IO (Id NSString)
posixName cbIdentity =
  sendMessage cbIdentity posixNameSelector

-- | @- aliases@
aliases :: IsCBIdentity cbIdentity => cbIdentity -> IO (Id NSArray)
aliases cbIdentity =
  sendMessage cbIdentity aliasesSelector

-- | @- emailAddress@
emailAddress :: IsCBIdentity cbIdentity => cbIdentity -> IO (Id NSString)
emailAddress cbIdentity =
  sendMessage cbIdentity emailAddressSelector

-- | @- image@
image :: IsCBIdentity cbIdentity => cbIdentity -> IO (Id NSImage)
image cbIdentity =
  sendMessage cbIdentity imageSelector

-- | @- persistentReference@
persistentReference :: IsCBIdentity cbIdentity => cbIdentity -> IO (Id NSData)
persistentReference cbIdentity =
  sendMessage cbIdentity persistentReferenceSelector

-- | @- hidden@
hidden :: IsCBIdentity cbIdentity => cbIdentity -> IO Bool
hidden cbIdentity =
  sendMessage cbIdentity hiddenSelector

-- | @- CSIdentity@
csIdentity :: IsCBIdentity cbIdentity => cbIdentity -> IO (Ptr ())
csIdentity cbIdentity =
  sendMessage cbIdentity csIdentitySelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @identityWithName:authority:@
identityWithName_authoritySelector :: Selector '[Id NSString, Id CBIdentityAuthority] (Id CBIdentity)
identityWithName_authoritySelector = mkSelector "identityWithName:authority:"

-- | @Selector@ for @identityWithUniqueIdentifier:authority:@
identityWithUniqueIdentifier_authoritySelector :: Selector '[Id NSUUID, Id CBIdentityAuthority] (Id CBIdentity)
identityWithUniqueIdentifier_authoritySelector = mkSelector "identityWithUniqueIdentifier:authority:"

-- | @Selector@ for @identityWithUUIDString:authority:@
identityWithUUIDString_authoritySelector :: Selector '[Id NSString, Id CBIdentityAuthority] (Id CBIdentity)
identityWithUUIDString_authoritySelector = mkSelector "identityWithUUIDString:authority:"

-- | @Selector@ for @identityWithPersistentReference:@
identityWithPersistentReferenceSelector :: Selector '[Id NSData] (Id CBIdentity)
identityWithPersistentReferenceSelector = mkSelector "identityWithPersistentReference:"

-- | @Selector@ for @identityWithCSIdentity:@
identityWithCSIdentitySelector :: Selector '[Ptr ()] (Id CBIdentity)
identityWithCSIdentitySelector = mkSelector "identityWithCSIdentity:"

-- | @Selector@ for @isMemberOfGroup:@
isMemberOfGroupSelector :: Selector '[Id CBGroupIdentity] Bool
isMemberOfGroupSelector = mkSelector "isMemberOfGroup:"

-- | @Selector@ for @authority@
authoritySelector :: Selector '[] (Id CBIdentityAuthority)
authoritySelector = mkSelector "authority"

-- | @Selector@ for @uniqueIdentifier@
uniqueIdentifierSelector :: Selector '[] RawId
uniqueIdentifierSelector = mkSelector "uniqueIdentifier"

-- | @Selector@ for @UUIDString@
uuidStringSelector :: Selector '[] RawId
uuidStringSelector = mkSelector "UUIDString"

-- | @Selector@ for @fullName@
fullNameSelector :: Selector '[] (Id NSString)
fullNameSelector = mkSelector "fullName"

-- | @Selector@ for @posixName@
posixNameSelector :: Selector '[] (Id NSString)
posixNameSelector = mkSelector "posixName"

-- | @Selector@ for @aliases@
aliasesSelector :: Selector '[] (Id NSArray)
aliasesSelector = mkSelector "aliases"

-- | @Selector@ for @emailAddress@
emailAddressSelector :: Selector '[] (Id NSString)
emailAddressSelector = mkSelector "emailAddress"

-- | @Selector@ for @image@
imageSelector :: Selector '[] (Id NSImage)
imageSelector = mkSelector "image"

-- | @Selector@ for @persistentReference@
persistentReferenceSelector :: Selector '[] (Id NSData)
persistentReferenceSelector = mkSelector "persistentReference"

-- | @Selector@ for @hidden@
hiddenSelector :: Selector '[] Bool
hiddenSelector = mkSelector "hidden"

-- | @Selector@ for @CSIdentity@
csIdentitySelector :: Selector '[] (Ptr ())
csIdentitySelector = mkSelector "CSIdentity"

