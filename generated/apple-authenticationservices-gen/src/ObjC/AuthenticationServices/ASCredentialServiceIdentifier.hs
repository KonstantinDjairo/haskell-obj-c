{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASCredentialServiceIdentifier@.
module ObjC.AuthenticationServices.ASCredentialServiceIdentifier
  ( ASCredentialServiceIdentifier
  , IsASCredentialServiceIdentifier(..)
  , initWithIdentifier_type
  , identifier
  , type_
  , identifierSelector
  , initWithIdentifier_typeSelector
  , typeSelector

  -- * Enum types
  , ASCredentialServiceIdentifierType(ASCredentialServiceIdentifierType)
  , pattern ASCredentialServiceIdentifierTypeDomain
  , pattern ASCredentialServiceIdentifierTypeURL

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AuthenticationServices.Internal.Classes
import ObjC.AuthenticationServices.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | Initializes an ASCredentialServiceIdentifier object.
--
-- @identifier@ — string value for the service identifier.
--
-- @type@ — the type that the service identifier string represents.
--
-- ObjC selector: @- initWithIdentifier:type:@
initWithIdentifier_type :: (IsASCredentialServiceIdentifier asCredentialServiceIdentifier, IsNSString identifier) => asCredentialServiceIdentifier -> identifier -> ASCredentialServiceIdentifierType -> IO (Id ASCredentialServiceIdentifier)
initWithIdentifier_type asCredentialServiceIdentifier identifier type_ =
  sendOwnedMessage asCredentialServiceIdentifier initWithIdentifier_typeSelector (toNSString identifier) type_

-- | Get the identifier.
--
-- Returns: The service identifier.
--
-- ObjC selector: @- identifier@
identifier :: IsASCredentialServiceIdentifier asCredentialServiceIdentifier => asCredentialServiceIdentifier -> IO (Id NSString)
identifier asCredentialServiceIdentifier =
  sendMessage asCredentialServiceIdentifier identifierSelector

-- | Get the service identifier type.
--
-- Returns: The service identifier type.
--
-- ObjC selector: @- type@
type_ :: IsASCredentialServiceIdentifier asCredentialServiceIdentifier => asCredentialServiceIdentifier -> IO ASCredentialServiceIdentifierType
type_ asCredentialServiceIdentifier =
  sendMessage asCredentialServiceIdentifier typeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithIdentifier:type:@
initWithIdentifier_typeSelector :: Selector '[Id NSString, ASCredentialServiceIdentifierType] (Id ASCredentialServiceIdentifier)
initWithIdentifier_typeSelector = mkSelector "initWithIdentifier:type:"

-- | @Selector@ for @identifier@
identifierSelector :: Selector '[] (Id NSString)
identifierSelector = mkSelector "identifier"

-- | @Selector@ for @type@
typeSelector :: Selector '[] ASCredentialServiceIdentifierType
typeSelector = mkSelector "type"

