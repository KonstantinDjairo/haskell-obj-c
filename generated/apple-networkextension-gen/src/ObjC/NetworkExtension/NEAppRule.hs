{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | NEAppRule
--
-- The NEAppRule class declares the programmatic interface for an object that contains the match conditions for a rule that is used to match network traffic originated by applications.
--
-- NEAppRule is used in the context of a Network Extension configuration to specify what traffic should be made available to the Network Extension.
--
-- Instances of this class are thread safe.
--
-- Generated bindings for @NEAppRule@.
module ObjC.NetworkExtension.NEAppRule
  ( NEAppRule
  , IsNEAppRule(..)
  , initWithSigningIdentifier
  , initWithSigningIdentifier_designatedRequirement
  , matchSigningIdentifier
  , matchDesignatedRequirement
  , matchPath
  , setMatchPath
  , matchDomains
  , setMatchDomains
  , initWithSigningIdentifierSelector
  , initWithSigningIdentifier_designatedRequirementSelector
  , matchDesignatedRequirementSelector
  , matchDomainsSelector
  , matchPathSelector
  , matchSigningIdentifierSelector
  , setMatchDomainsSelector
  , setMatchPathSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.NetworkExtension.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | initWithSigningIdentifier:
--
-- Initializes a newly-allocated NEAppRule object.
--
-- @signingIdentifier@ — The signing identifier of the executable that matches the rule.
--
-- ObjC selector: @- initWithSigningIdentifier:@
initWithSigningIdentifier :: (IsNEAppRule neAppRule, IsNSString signingIdentifier) => neAppRule -> signingIdentifier -> IO (Id NEAppRule)
initWithSigningIdentifier neAppRule signingIdentifier =
  sendOwnedMessage neAppRule initWithSigningIdentifierSelector (toNSString signingIdentifier)

-- | initWithSigningIdentifier:designatedRequirement:
--
-- Initializes a newly-allocated NEAppRule object.
--
-- @signingIdentifier@ — The signing identifier of the executable that matches the rule.
--
-- @designatedRequirement@ — The designated requirement of the executable that matches the rule.
--
-- ObjC selector: @- initWithSigningIdentifier:designatedRequirement:@
initWithSigningIdentifier_designatedRequirement :: (IsNEAppRule neAppRule, IsNSString signingIdentifier, IsNSString designatedRequirement) => neAppRule -> signingIdentifier -> designatedRequirement -> IO (Id NEAppRule)
initWithSigningIdentifier_designatedRequirement neAppRule signingIdentifier designatedRequirement =
  sendOwnedMessage neAppRule initWithSigningIdentifier_designatedRequirementSelector (toNSString signingIdentifier) (toNSString designatedRequirement)

-- | matchSigningIdentifier
--
-- A string containing a signing identifier. If the code signature of the executable being evaluated has a signing identifier equal to this string and all other conditions of the rule match, then the rule matches.
--
-- ObjC selector: @- matchSigningIdentifier@
matchSigningIdentifier :: IsNEAppRule neAppRule => neAppRule -> IO (Id NSString)
matchSigningIdentifier neAppRule =
  sendMessage neAppRule matchSigningIdentifierSelector

-- | matchDesignatedRequirement
--
-- A string containing a designated requirement. If the code signature of the exectuable being evaluated has a designated requirement equal to this string and all other conditions of the rule match, then the rule matches. This property is required on Mac OS X.
--
-- ObjC selector: @- matchDesignatedRequirement@
matchDesignatedRequirement :: IsNEAppRule neAppRule => neAppRule -> IO RawId
matchDesignatedRequirement neAppRule =
  sendMessage neAppRule matchDesignatedRequirementSelector

-- | matchPath
--
-- A string containing a file system path. If the file system path of the executable being evaluated is equal to this string and all other conditions of the rule match, then the rule matches. This property is optional.
--
-- ObjC selector: @- matchPath@
matchPath :: IsNEAppRule neAppRule => neAppRule -> IO (Id NSString)
matchPath neAppRule =
  sendMessage neAppRule matchPathSelector

-- | matchPath
--
-- A string containing a file system path. If the file system path of the executable being evaluated is equal to this string and all other conditions of the rule match, then the rule matches. This property is optional.
--
-- ObjC selector: @- setMatchPath:@
setMatchPath :: (IsNEAppRule neAppRule, IsNSString value) => neAppRule -> value -> IO ()
setMatchPath neAppRule value =
  sendMessage neAppRule setMatchPathSelector (toNSString value)

-- | matchDomains
--
-- An array of strings. This property is actually read-only. If the destination host of the network traffic being evaluated has a suffix equal to one of the strings in this array and all other conditions of the rule match, then the rule matches. This property is optional.
--
-- ObjC selector: @- matchDomains@
matchDomains :: IsNEAppRule neAppRule => neAppRule -> IO (Id NSArray)
matchDomains neAppRule =
  sendMessage neAppRule matchDomainsSelector

-- | matchDomains
--
-- An array of strings. This property is actually read-only. If the destination host of the network traffic being evaluated has a suffix equal to one of the strings in this array and all other conditions of the rule match, then the rule matches. This property is optional.
--
-- ObjC selector: @- setMatchDomains:@
setMatchDomains :: (IsNEAppRule neAppRule, IsNSArray value) => neAppRule -> value -> IO ()
setMatchDomains neAppRule value =
  sendMessage neAppRule setMatchDomainsSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithSigningIdentifier:@
initWithSigningIdentifierSelector :: Selector '[Id NSString] (Id NEAppRule)
initWithSigningIdentifierSelector = mkSelector "initWithSigningIdentifier:"

-- | @Selector@ for @initWithSigningIdentifier:designatedRequirement:@
initWithSigningIdentifier_designatedRequirementSelector :: Selector '[Id NSString, Id NSString] (Id NEAppRule)
initWithSigningIdentifier_designatedRequirementSelector = mkSelector "initWithSigningIdentifier:designatedRequirement:"

-- | @Selector@ for @matchSigningIdentifier@
matchSigningIdentifierSelector :: Selector '[] (Id NSString)
matchSigningIdentifierSelector = mkSelector "matchSigningIdentifier"

-- | @Selector@ for @matchDesignatedRequirement@
matchDesignatedRequirementSelector :: Selector '[] RawId
matchDesignatedRequirementSelector = mkSelector "matchDesignatedRequirement"

-- | @Selector@ for @matchPath@
matchPathSelector :: Selector '[] (Id NSString)
matchPathSelector = mkSelector "matchPath"

-- | @Selector@ for @setMatchPath:@
setMatchPathSelector :: Selector '[Id NSString] ()
setMatchPathSelector = mkSelector "setMatchPath:"

-- | @Selector@ for @matchDomains@
matchDomainsSelector :: Selector '[] (Id NSArray)
matchDomainsSelector = mkSelector "matchDomains"

-- | @Selector@ for @setMatchDomains:@
setMatchDomainsSelector :: Selector '[Id NSArray] ()
setMatchDomainsSelector = mkSelector "setMatchDomains:"

