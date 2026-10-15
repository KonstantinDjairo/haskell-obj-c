{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.Matter.Internal.Classes (
    module ObjC.Matter.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- AttestationInfo ----------

-- | Represents information relating to product attestation.
-- 
-- Phantom type for @AttestationInfo@.
data AttestationInfo

instance IsObjCObject (Id AttestationInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AttestationInfo"

class IsNSObject a => IsAttestationInfo a where
  toAttestationInfo :: a -> Id AttestationInfo

instance IsAttestationInfo (Id AttestationInfo) where
  toAttestationInfo = unsafeCastId

instance IsNSObject (Id AttestationInfo) where
  toNSObject = unsafeCastId

-- ---------- CSRInfo ----------

-- | Represents information relating to NOC CSR.
-- 
-- Phantom type for @CSRInfo@.
data CSRInfo

instance IsObjCObject (Id CSRInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CSRInfo"

class IsNSObject a => IsCSRInfo a where
  toCSRInfo :: a -> Id CSRInfo

instance IsCSRInfo (Id CSRInfo) where
  toCSRInfo = unsafeCastId

instance IsNSObject (Id CSRInfo) where
  toNSObject = unsafeCastId

-- ---------- MTRAccessControlClusterAccessControlEntry ----------

-- | Phantom type for @MTRAccessControlClusterAccessControlEntry@.
data MTRAccessControlClusterAccessControlEntry

instance IsObjCObject (Id MTRAccessControlClusterAccessControlEntry) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAccessControlClusterAccessControlEntry"

class IsNSObject a => IsMTRAccessControlClusterAccessControlEntry a where
  toMTRAccessControlClusterAccessControlEntry :: a -> Id MTRAccessControlClusterAccessControlEntry

instance IsMTRAccessControlClusterAccessControlEntry (Id MTRAccessControlClusterAccessControlEntry) where
  toMTRAccessControlClusterAccessControlEntry = unsafeCastId

instance IsNSObject (Id MTRAccessControlClusterAccessControlEntry) where
  toNSObject = unsafeCastId

-- ---------- MTRAccessControlClusterAccessControlEntryChangedEvent ----------

-- | Phantom type for @MTRAccessControlClusterAccessControlEntryChangedEvent@.
data MTRAccessControlClusterAccessControlEntryChangedEvent

instance IsObjCObject (Id MTRAccessControlClusterAccessControlEntryChangedEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAccessControlClusterAccessControlEntryChangedEvent"

class IsNSObject a => IsMTRAccessControlClusterAccessControlEntryChangedEvent a where
  toMTRAccessControlClusterAccessControlEntryChangedEvent :: a -> Id MTRAccessControlClusterAccessControlEntryChangedEvent

instance IsMTRAccessControlClusterAccessControlEntryChangedEvent (Id MTRAccessControlClusterAccessControlEntryChangedEvent) where
  toMTRAccessControlClusterAccessControlEntryChangedEvent = unsafeCastId

instance IsNSObject (Id MTRAccessControlClusterAccessControlEntryChangedEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRAccessControlClusterAccessControlExtensionChangedEvent ----------

-- | Phantom type for @MTRAccessControlClusterAccessControlExtensionChangedEvent@.
data MTRAccessControlClusterAccessControlExtensionChangedEvent

instance IsObjCObject (Id MTRAccessControlClusterAccessControlExtensionChangedEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAccessControlClusterAccessControlExtensionChangedEvent"

class IsNSObject a => IsMTRAccessControlClusterAccessControlExtensionChangedEvent a where
  toMTRAccessControlClusterAccessControlExtensionChangedEvent :: a -> Id MTRAccessControlClusterAccessControlExtensionChangedEvent

instance IsMTRAccessControlClusterAccessControlExtensionChangedEvent (Id MTRAccessControlClusterAccessControlExtensionChangedEvent) where
  toMTRAccessControlClusterAccessControlExtensionChangedEvent = unsafeCastId

instance IsNSObject (Id MTRAccessControlClusterAccessControlExtensionChangedEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRAccessControlClusterExtensionEntry ----------

-- | Phantom type for @MTRAccessControlClusterExtensionEntry@.
data MTRAccessControlClusterExtensionEntry

instance IsObjCObject (Id MTRAccessControlClusterExtensionEntry) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAccessControlClusterExtensionEntry"

class IsNSObject a => IsMTRAccessControlClusterExtensionEntry a where
  toMTRAccessControlClusterExtensionEntry :: a -> Id MTRAccessControlClusterExtensionEntry

instance IsMTRAccessControlClusterExtensionEntry (Id MTRAccessControlClusterExtensionEntry) where
  toMTRAccessControlClusterExtensionEntry = unsafeCastId

instance IsNSObject (Id MTRAccessControlClusterExtensionEntry) where
  toNSObject = unsafeCastId

-- ---------- MTRAccessControlClusterTarget ----------

-- | Phantom type for @MTRAccessControlClusterTarget@.
data MTRAccessControlClusterTarget

instance IsObjCObject (Id MTRAccessControlClusterTarget) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAccessControlClusterTarget"

class IsNSObject a => IsMTRAccessControlClusterTarget a where
  toMTRAccessControlClusterTarget :: a -> Id MTRAccessControlClusterTarget

instance IsMTRAccessControlClusterTarget (Id MTRAccessControlClusterTarget) where
  toMTRAccessControlClusterTarget = unsafeCastId

instance IsNSObject (Id MTRAccessControlClusterTarget) where
  toNSObject = unsafeCastId

-- ---------- MTRAccountLoginClusterGetSetupPINParams ----------

-- | Phantom type for @MTRAccountLoginClusterGetSetupPINParams@.
data MTRAccountLoginClusterGetSetupPINParams

instance IsObjCObject (Id MTRAccountLoginClusterGetSetupPINParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAccountLoginClusterGetSetupPINParams"

class IsNSObject a => IsMTRAccountLoginClusterGetSetupPINParams a where
  toMTRAccountLoginClusterGetSetupPINParams :: a -> Id MTRAccountLoginClusterGetSetupPINParams

instance IsMTRAccountLoginClusterGetSetupPINParams (Id MTRAccountLoginClusterGetSetupPINParams) where
  toMTRAccountLoginClusterGetSetupPINParams = unsafeCastId

instance IsNSObject (Id MTRAccountLoginClusterGetSetupPINParams) where
  toNSObject = unsafeCastId

-- ---------- MTRAccountLoginClusterGetSetupPINResponseParams ----------

-- | Phantom type for @MTRAccountLoginClusterGetSetupPINResponseParams@.
data MTRAccountLoginClusterGetSetupPINResponseParams

instance IsObjCObject (Id MTRAccountLoginClusterGetSetupPINResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAccountLoginClusterGetSetupPINResponseParams"

class IsNSObject a => IsMTRAccountLoginClusterGetSetupPINResponseParams a where
  toMTRAccountLoginClusterGetSetupPINResponseParams :: a -> Id MTRAccountLoginClusterGetSetupPINResponseParams

instance IsMTRAccountLoginClusterGetSetupPINResponseParams (Id MTRAccountLoginClusterGetSetupPINResponseParams) where
  toMTRAccountLoginClusterGetSetupPINResponseParams = unsafeCastId

instance IsNSObject (Id MTRAccountLoginClusterGetSetupPINResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRAccountLoginClusterLoginParams ----------

-- | Phantom type for @MTRAccountLoginClusterLoginParams@.
data MTRAccountLoginClusterLoginParams

instance IsObjCObject (Id MTRAccountLoginClusterLoginParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAccountLoginClusterLoginParams"

class IsNSObject a => IsMTRAccountLoginClusterLoginParams a where
  toMTRAccountLoginClusterLoginParams :: a -> Id MTRAccountLoginClusterLoginParams

instance IsMTRAccountLoginClusterLoginParams (Id MTRAccountLoginClusterLoginParams) where
  toMTRAccountLoginClusterLoginParams = unsafeCastId

instance IsNSObject (Id MTRAccountLoginClusterLoginParams) where
  toNSObject = unsafeCastId

-- ---------- MTRAccountLoginClusterLogoutParams ----------

-- | Phantom type for @MTRAccountLoginClusterLogoutParams@.
data MTRAccountLoginClusterLogoutParams

instance IsObjCObject (Id MTRAccountLoginClusterLogoutParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAccountLoginClusterLogoutParams"

class IsNSObject a => IsMTRAccountLoginClusterLogoutParams a where
  toMTRAccountLoginClusterLogoutParams :: a -> Id MTRAccountLoginClusterLogoutParams

instance IsMTRAccountLoginClusterLogoutParams (Id MTRAccountLoginClusterLogoutParams) where
  toMTRAccountLoginClusterLogoutParams = unsafeCastId

instance IsNSObject (Id MTRAccountLoginClusterLogoutParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterActionFailedEvent ----------

-- | Phantom type for @MTRActionsClusterActionFailedEvent@.
data MTRActionsClusterActionFailedEvent

instance IsObjCObject (Id MTRActionsClusterActionFailedEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterActionFailedEvent"

class IsNSObject a => IsMTRActionsClusterActionFailedEvent a where
  toMTRActionsClusterActionFailedEvent :: a -> Id MTRActionsClusterActionFailedEvent

instance IsMTRActionsClusterActionFailedEvent (Id MTRActionsClusterActionFailedEvent) where
  toMTRActionsClusterActionFailedEvent = unsafeCastId

instance IsNSObject (Id MTRActionsClusterActionFailedEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterActionStruct ----------

-- | Phantom type for @MTRActionsClusterActionStruct@.
data MTRActionsClusterActionStruct

instance IsObjCObject (Id MTRActionsClusterActionStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterActionStruct"

class IsNSObject a => IsMTRActionsClusterActionStruct a where
  toMTRActionsClusterActionStruct :: a -> Id MTRActionsClusterActionStruct

instance IsMTRActionsClusterActionStruct (Id MTRActionsClusterActionStruct) where
  toMTRActionsClusterActionStruct = unsafeCastId

instance IsNSObject (Id MTRActionsClusterActionStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterDisableActionParams ----------

-- | Phantom type for @MTRActionsClusterDisableActionParams@.
data MTRActionsClusterDisableActionParams

instance IsObjCObject (Id MTRActionsClusterDisableActionParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterDisableActionParams"

class IsNSObject a => IsMTRActionsClusterDisableActionParams a where
  toMTRActionsClusterDisableActionParams :: a -> Id MTRActionsClusterDisableActionParams

instance IsMTRActionsClusterDisableActionParams (Id MTRActionsClusterDisableActionParams) where
  toMTRActionsClusterDisableActionParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterDisableActionParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterDisableActionWithDurationParams ----------

-- | Phantom type for @MTRActionsClusterDisableActionWithDurationParams@.
data MTRActionsClusterDisableActionWithDurationParams

instance IsObjCObject (Id MTRActionsClusterDisableActionWithDurationParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterDisableActionWithDurationParams"

class IsNSObject a => IsMTRActionsClusterDisableActionWithDurationParams a where
  toMTRActionsClusterDisableActionWithDurationParams :: a -> Id MTRActionsClusterDisableActionWithDurationParams

instance IsMTRActionsClusterDisableActionWithDurationParams (Id MTRActionsClusterDisableActionWithDurationParams) where
  toMTRActionsClusterDisableActionWithDurationParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterDisableActionWithDurationParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterEnableActionParams ----------

-- | Phantom type for @MTRActionsClusterEnableActionParams@.
data MTRActionsClusterEnableActionParams

instance IsObjCObject (Id MTRActionsClusterEnableActionParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterEnableActionParams"

class IsNSObject a => IsMTRActionsClusterEnableActionParams a where
  toMTRActionsClusterEnableActionParams :: a -> Id MTRActionsClusterEnableActionParams

instance IsMTRActionsClusterEnableActionParams (Id MTRActionsClusterEnableActionParams) where
  toMTRActionsClusterEnableActionParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterEnableActionParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterEnableActionWithDurationParams ----------

-- | Phantom type for @MTRActionsClusterEnableActionWithDurationParams@.
data MTRActionsClusterEnableActionWithDurationParams

instance IsObjCObject (Id MTRActionsClusterEnableActionWithDurationParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterEnableActionWithDurationParams"

class IsNSObject a => IsMTRActionsClusterEnableActionWithDurationParams a where
  toMTRActionsClusterEnableActionWithDurationParams :: a -> Id MTRActionsClusterEnableActionWithDurationParams

instance IsMTRActionsClusterEnableActionWithDurationParams (Id MTRActionsClusterEnableActionWithDurationParams) where
  toMTRActionsClusterEnableActionWithDurationParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterEnableActionWithDurationParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterEndpointListStruct ----------

-- | Phantom type for @MTRActionsClusterEndpointListStruct@.
data MTRActionsClusterEndpointListStruct

instance IsObjCObject (Id MTRActionsClusterEndpointListStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterEndpointListStruct"

class IsNSObject a => IsMTRActionsClusterEndpointListStruct a where
  toMTRActionsClusterEndpointListStruct :: a -> Id MTRActionsClusterEndpointListStruct

instance IsMTRActionsClusterEndpointListStruct (Id MTRActionsClusterEndpointListStruct) where
  toMTRActionsClusterEndpointListStruct = unsafeCastId

instance IsNSObject (Id MTRActionsClusterEndpointListStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterInstantActionParams ----------

-- | Phantom type for @MTRActionsClusterInstantActionParams@.
data MTRActionsClusterInstantActionParams

instance IsObjCObject (Id MTRActionsClusterInstantActionParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterInstantActionParams"

class IsNSObject a => IsMTRActionsClusterInstantActionParams a where
  toMTRActionsClusterInstantActionParams :: a -> Id MTRActionsClusterInstantActionParams

instance IsMTRActionsClusterInstantActionParams (Id MTRActionsClusterInstantActionParams) where
  toMTRActionsClusterInstantActionParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterInstantActionParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterInstantActionWithTransitionParams ----------

-- | Phantom type for @MTRActionsClusterInstantActionWithTransitionParams@.
data MTRActionsClusterInstantActionWithTransitionParams

instance IsObjCObject (Id MTRActionsClusterInstantActionWithTransitionParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterInstantActionWithTransitionParams"

class IsNSObject a => IsMTRActionsClusterInstantActionWithTransitionParams a where
  toMTRActionsClusterInstantActionWithTransitionParams :: a -> Id MTRActionsClusterInstantActionWithTransitionParams

instance IsMTRActionsClusterInstantActionWithTransitionParams (Id MTRActionsClusterInstantActionWithTransitionParams) where
  toMTRActionsClusterInstantActionWithTransitionParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterInstantActionWithTransitionParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterPauseActionParams ----------

-- | Phantom type for @MTRActionsClusterPauseActionParams@.
data MTRActionsClusterPauseActionParams

instance IsObjCObject (Id MTRActionsClusterPauseActionParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterPauseActionParams"

class IsNSObject a => IsMTRActionsClusterPauseActionParams a where
  toMTRActionsClusterPauseActionParams :: a -> Id MTRActionsClusterPauseActionParams

instance IsMTRActionsClusterPauseActionParams (Id MTRActionsClusterPauseActionParams) where
  toMTRActionsClusterPauseActionParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterPauseActionParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterPauseActionWithDurationParams ----------

-- | Phantom type for @MTRActionsClusterPauseActionWithDurationParams@.
data MTRActionsClusterPauseActionWithDurationParams

instance IsObjCObject (Id MTRActionsClusterPauseActionWithDurationParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterPauseActionWithDurationParams"

class IsNSObject a => IsMTRActionsClusterPauseActionWithDurationParams a where
  toMTRActionsClusterPauseActionWithDurationParams :: a -> Id MTRActionsClusterPauseActionWithDurationParams

instance IsMTRActionsClusterPauseActionWithDurationParams (Id MTRActionsClusterPauseActionWithDurationParams) where
  toMTRActionsClusterPauseActionWithDurationParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterPauseActionWithDurationParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterResumeActionParams ----------

-- | Phantom type for @MTRActionsClusterResumeActionParams@.
data MTRActionsClusterResumeActionParams

instance IsObjCObject (Id MTRActionsClusterResumeActionParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterResumeActionParams"

class IsNSObject a => IsMTRActionsClusterResumeActionParams a where
  toMTRActionsClusterResumeActionParams :: a -> Id MTRActionsClusterResumeActionParams

instance IsMTRActionsClusterResumeActionParams (Id MTRActionsClusterResumeActionParams) where
  toMTRActionsClusterResumeActionParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterResumeActionParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterStartActionParams ----------

-- | Phantom type for @MTRActionsClusterStartActionParams@.
data MTRActionsClusterStartActionParams

instance IsObjCObject (Id MTRActionsClusterStartActionParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterStartActionParams"

class IsNSObject a => IsMTRActionsClusterStartActionParams a where
  toMTRActionsClusterStartActionParams :: a -> Id MTRActionsClusterStartActionParams

instance IsMTRActionsClusterStartActionParams (Id MTRActionsClusterStartActionParams) where
  toMTRActionsClusterStartActionParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterStartActionParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterStartActionWithDurationParams ----------

-- | Phantom type for @MTRActionsClusterStartActionWithDurationParams@.
data MTRActionsClusterStartActionWithDurationParams

instance IsObjCObject (Id MTRActionsClusterStartActionWithDurationParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterStartActionWithDurationParams"

class IsNSObject a => IsMTRActionsClusterStartActionWithDurationParams a where
  toMTRActionsClusterStartActionWithDurationParams :: a -> Id MTRActionsClusterStartActionWithDurationParams

instance IsMTRActionsClusterStartActionWithDurationParams (Id MTRActionsClusterStartActionWithDurationParams) where
  toMTRActionsClusterStartActionWithDurationParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterStartActionWithDurationParams) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterStateChangedEvent ----------

-- | Phantom type for @MTRActionsClusterStateChangedEvent@.
data MTRActionsClusterStateChangedEvent

instance IsObjCObject (Id MTRActionsClusterStateChangedEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterStateChangedEvent"

class IsNSObject a => IsMTRActionsClusterStateChangedEvent a where
  toMTRActionsClusterStateChangedEvent :: a -> Id MTRActionsClusterStateChangedEvent

instance IsMTRActionsClusterStateChangedEvent (Id MTRActionsClusterStateChangedEvent) where
  toMTRActionsClusterStateChangedEvent = unsafeCastId

instance IsNSObject (Id MTRActionsClusterStateChangedEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRActionsClusterStopActionParams ----------

-- | Phantom type for @MTRActionsClusterStopActionParams@.
data MTRActionsClusterStopActionParams

instance IsObjCObject (Id MTRActionsClusterStopActionParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRActionsClusterStopActionParams"

class IsNSObject a => IsMTRActionsClusterStopActionParams a where
  toMTRActionsClusterStopActionParams :: a -> Id MTRActionsClusterStopActionParams

instance IsMTRActionsClusterStopActionParams (Id MTRActionsClusterStopActionParams) where
  toMTRActionsClusterStopActionParams = unsafeCastId

instance IsNSObject (Id MTRActionsClusterStopActionParams) where
  toNSObject = unsafeCastId

-- ---------- MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams ----------

-- | Phantom type for @MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams@.
data MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams

instance IsObjCObject (Id MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams"

class IsNSObject a => IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams a where
  toMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams :: a -> Id MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams

instance IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams (Id MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams) where
  toMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams = unsafeCastId

instance IsNSObject (Id MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams) where
  toNSObject = unsafeCastId

-- ---------- MTRAdministratorCommissioningClusterOpenCommissioningWindowParams ----------

-- | Phantom type for @MTRAdministratorCommissioningClusterOpenCommissioningWindowParams@.
data MTRAdministratorCommissioningClusterOpenCommissioningWindowParams

instance IsObjCObject (Id MTRAdministratorCommissioningClusterOpenCommissioningWindowParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAdministratorCommissioningClusterOpenCommissioningWindowParams"

class IsNSObject a => IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams a where
  toMTRAdministratorCommissioningClusterOpenCommissioningWindowParams :: a -> Id MTRAdministratorCommissioningClusterOpenCommissioningWindowParams

instance IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams (Id MTRAdministratorCommissioningClusterOpenCommissioningWindowParams) where
  toMTRAdministratorCommissioningClusterOpenCommissioningWindowParams = unsafeCastId

instance IsNSObject (Id MTRAdministratorCommissioningClusterOpenCommissioningWindowParams) where
  toNSObject = unsafeCastId

-- ---------- MTRAdministratorCommissioningClusterRevokeCommissioningParams ----------

-- | Phantom type for @MTRAdministratorCommissioningClusterRevokeCommissioningParams@.
data MTRAdministratorCommissioningClusterRevokeCommissioningParams

instance IsObjCObject (Id MTRAdministratorCommissioningClusterRevokeCommissioningParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAdministratorCommissioningClusterRevokeCommissioningParams"

class IsNSObject a => IsMTRAdministratorCommissioningClusterRevokeCommissioningParams a where
  toMTRAdministratorCommissioningClusterRevokeCommissioningParams :: a -> Id MTRAdministratorCommissioningClusterRevokeCommissioningParams

instance IsMTRAdministratorCommissioningClusterRevokeCommissioningParams (Id MTRAdministratorCommissioningClusterRevokeCommissioningParams) where
  toMTRAdministratorCommissioningClusterRevokeCommissioningParams = unsafeCastId

instance IsNSObject (Id MTRAdministratorCommissioningClusterRevokeCommissioningParams) where
  toNSObject = unsafeCastId

-- ---------- MTRApplicationBasicClusterApplicationBasicApplication ----------

-- | Phantom type for @MTRApplicationBasicClusterApplicationBasicApplication@.
data MTRApplicationBasicClusterApplicationBasicApplication

instance IsObjCObject (Id MTRApplicationBasicClusterApplicationBasicApplication) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRApplicationBasicClusterApplicationBasicApplication"

class IsNSObject a => IsMTRApplicationBasicClusterApplicationBasicApplication a where
  toMTRApplicationBasicClusterApplicationBasicApplication :: a -> Id MTRApplicationBasicClusterApplicationBasicApplication

instance IsMTRApplicationBasicClusterApplicationBasicApplication (Id MTRApplicationBasicClusterApplicationBasicApplication) where
  toMTRApplicationBasicClusterApplicationBasicApplication = unsafeCastId

instance IsNSObject (Id MTRApplicationBasicClusterApplicationBasicApplication) where
  toNSObject = unsafeCastId

-- ---------- MTRApplicationLauncherClusterApplication ----------

-- | Phantom type for @MTRApplicationLauncherClusterApplication@.
data MTRApplicationLauncherClusterApplication

instance IsObjCObject (Id MTRApplicationLauncherClusterApplication) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRApplicationLauncherClusterApplication"

class IsNSObject a => IsMTRApplicationLauncherClusterApplication a where
  toMTRApplicationLauncherClusterApplication :: a -> Id MTRApplicationLauncherClusterApplication

instance IsMTRApplicationLauncherClusterApplication (Id MTRApplicationLauncherClusterApplication) where
  toMTRApplicationLauncherClusterApplication = unsafeCastId

instance IsNSObject (Id MTRApplicationLauncherClusterApplication) where
  toNSObject = unsafeCastId

-- ---------- MTRApplicationLauncherClusterApplicationEP ----------

-- | Phantom type for @MTRApplicationLauncherClusterApplicationEP@.
data MTRApplicationLauncherClusterApplicationEP

instance IsObjCObject (Id MTRApplicationLauncherClusterApplicationEP) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRApplicationLauncherClusterApplicationEP"

class IsNSObject a => IsMTRApplicationLauncherClusterApplicationEP a where
  toMTRApplicationLauncherClusterApplicationEP :: a -> Id MTRApplicationLauncherClusterApplicationEP

instance IsMTRApplicationLauncherClusterApplicationEP (Id MTRApplicationLauncherClusterApplicationEP) where
  toMTRApplicationLauncherClusterApplicationEP = unsafeCastId

instance IsNSObject (Id MTRApplicationLauncherClusterApplicationEP) where
  toNSObject = unsafeCastId

-- ---------- MTRApplicationLauncherClusterHideAppParams ----------

-- | Phantom type for @MTRApplicationLauncherClusterHideAppParams@.
data MTRApplicationLauncherClusterHideAppParams

instance IsObjCObject (Id MTRApplicationLauncherClusterHideAppParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRApplicationLauncherClusterHideAppParams"

class IsNSObject a => IsMTRApplicationLauncherClusterHideAppParams a where
  toMTRApplicationLauncherClusterHideAppParams :: a -> Id MTRApplicationLauncherClusterHideAppParams

instance IsMTRApplicationLauncherClusterHideAppParams (Id MTRApplicationLauncherClusterHideAppParams) where
  toMTRApplicationLauncherClusterHideAppParams = unsafeCastId

instance IsNSObject (Id MTRApplicationLauncherClusterHideAppParams) where
  toNSObject = unsafeCastId

-- ---------- MTRApplicationLauncherClusterLaunchAppParams ----------

-- | Phantom type for @MTRApplicationLauncherClusterLaunchAppParams@.
data MTRApplicationLauncherClusterLaunchAppParams

instance IsObjCObject (Id MTRApplicationLauncherClusterLaunchAppParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRApplicationLauncherClusterLaunchAppParams"

class IsNSObject a => IsMTRApplicationLauncherClusterLaunchAppParams a where
  toMTRApplicationLauncherClusterLaunchAppParams :: a -> Id MTRApplicationLauncherClusterLaunchAppParams

instance IsMTRApplicationLauncherClusterLaunchAppParams (Id MTRApplicationLauncherClusterLaunchAppParams) where
  toMTRApplicationLauncherClusterLaunchAppParams = unsafeCastId

instance IsNSObject (Id MTRApplicationLauncherClusterLaunchAppParams) where
  toNSObject = unsafeCastId

-- ---------- MTRApplicationLauncherClusterLauncherResponseParams ----------

-- | Phantom type for @MTRApplicationLauncherClusterLauncherResponseParams@.
data MTRApplicationLauncherClusterLauncherResponseParams

instance IsObjCObject (Id MTRApplicationLauncherClusterLauncherResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRApplicationLauncherClusterLauncherResponseParams"

class IsNSObject a => IsMTRApplicationLauncherClusterLauncherResponseParams a where
  toMTRApplicationLauncherClusterLauncherResponseParams :: a -> Id MTRApplicationLauncherClusterLauncherResponseParams

instance IsMTRApplicationLauncherClusterLauncherResponseParams (Id MTRApplicationLauncherClusterLauncherResponseParams) where
  toMTRApplicationLauncherClusterLauncherResponseParams = unsafeCastId

instance IsNSObject (Id MTRApplicationLauncherClusterLauncherResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRApplicationLauncherClusterStopAppParams ----------

-- | Phantom type for @MTRApplicationLauncherClusterStopAppParams@.
data MTRApplicationLauncherClusterStopAppParams

instance IsObjCObject (Id MTRApplicationLauncherClusterStopAppParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRApplicationLauncherClusterStopAppParams"

class IsNSObject a => IsMTRApplicationLauncherClusterStopAppParams a where
  toMTRApplicationLauncherClusterStopAppParams :: a -> Id MTRApplicationLauncherClusterStopAppParams

instance IsMTRApplicationLauncherClusterStopAppParams (Id MTRApplicationLauncherClusterStopAppParams) where
  toMTRApplicationLauncherClusterStopAppParams = unsafeCastId

instance IsNSObject (Id MTRApplicationLauncherClusterStopAppParams) where
  toNSObject = unsafeCastId

-- ---------- MTRAsyncCallbackQueueWorkItem ----------

-- | Phantom type for @MTRAsyncCallbackQueueWorkItem@.
data MTRAsyncCallbackQueueWorkItem

instance IsObjCObject (Id MTRAsyncCallbackQueueWorkItem) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAsyncCallbackQueueWorkItem"

class IsNSObject a => IsMTRAsyncCallbackQueueWorkItem a where
  toMTRAsyncCallbackQueueWorkItem :: a -> Id MTRAsyncCallbackQueueWorkItem

instance IsMTRAsyncCallbackQueueWorkItem (Id MTRAsyncCallbackQueueWorkItem) where
  toMTRAsyncCallbackQueueWorkItem = unsafeCastId

instance IsNSObject (Id MTRAsyncCallbackQueueWorkItem) where
  toNSObject = unsafeCastId

-- ---------- MTRAsyncCallbackWorkQueue ----------

-- | Phantom type for @MTRAsyncCallbackWorkQueue@.
data MTRAsyncCallbackWorkQueue

instance IsObjCObject (Id MTRAsyncCallbackWorkQueue) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAsyncCallbackWorkQueue"

class IsNSObject a => IsMTRAsyncCallbackWorkQueue a where
  toMTRAsyncCallbackWorkQueue :: a -> Id MTRAsyncCallbackWorkQueue

instance IsMTRAsyncCallbackWorkQueue (Id MTRAsyncCallbackWorkQueue) where
  toMTRAsyncCallbackWorkQueue = unsafeCastId

instance IsNSObject (Id MTRAsyncCallbackWorkQueue) where
  toNSObject = unsafeCastId

-- ---------- MTRAttributeCacheContainer ----------

-- | Phantom type for @MTRAttributeCacheContainer@.
data MTRAttributeCacheContainer

instance IsObjCObject (Id MTRAttributeCacheContainer) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAttributeCacheContainer"

class IsNSObject a => IsMTRAttributeCacheContainer a where
  toMTRAttributeCacheContainer :: a -> Id MTRAttributeCacheContainer

instance IsMTRAttributeCacheContainer (Id MTRAttributeCacheContainer) where
  toMTRAttributeCacheContainer = unsafeCastId

instance IsNSObject (Id MTRAttributeCacheContainer) where
  toNSObject = unsafeCastId

-- ---------- MTRAttributePath ----------

-- | Phantom type for @MTRAttributePath@.
data MTRAttributePath

instance IsObjCObject (Id MTRAttributePath) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAttributePath"

class IsNSObject a => IsMTRAttributePath a where
  toMTRAttributePath :: a -> Id MTRAttributePath

instance IsMTRAttributePath (Id MTRAttributePath) where
  toMTRAttributePath = unsafeCastId

instance IsNSObject (Id MTRAttributePath) where
  toNSObject = unsafeCastId

-- ---------- MTRAttributeReport ----------

-- | Phantom type for @MTRAttributeReport@.
data MTRAttributeReport

instance IsObjCObject (Id MTRAttributeReport) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAttributeReport"

class IsNSObject a => IsMTRAttributeReport a where
  toMTRAttributeReport :: a -> Id MTRAttributeReport

instance IsMTRAttributeReport (Id MTRAttributeReport) where
  toMTRAttributeReport = unsafeCastId

instance IsNSObject (Id MTRAttributeReport) where
  toNSObject = unsafeCastId

-- ---------- MTRAudioOutputClusterOutputInfo ----------

-- | Phantom type for @MTRAudioOutputClusterOutputInfo@.
data MTRAudioOutputClusterOutputInfo

instance IsObjCObject (Id MTRAudioOutputClusterOutputInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAudioOutputClusterOutputInfo"

class IsNSObject a => IsMTRAudioOutputClusterOutputInfo a where
  toMTRAudioOutputClusterOutputInfo :: a -> Id MTRAudioOutputClusterOutputInfo

instance IsMTRAudioOutputClusterOutputInfo (Id MTRAudioOutputClusterOutputInfo) where
  toMTRAudioOutputClusterOutputInfo = unsafeCastId

instance IsNSObject (Id MTRAudioOutputClusterOutputInfo) where
  toNSObject = unsafeCastId

-- ---------- MTRAudioOutputClusterRenameOutputParams ----------

-- | Phantom type for @MTRAudioOutputClusterRenameOutputParams@.
data MTRAudioOutputClusterRenameOutputParams

instance IsObjCObject (Id MTRAudioOutputClusterRenameOutputParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAudioOutputClusterRenameOutputParams"

class IsNSObject a => IsMTRAudioOutputClusterRenameOutputParams a where
  toMTRAudioOutputClusterRenameOutputParams :: a -> Id MTRAudioOutputClusterRenameOutputParams

instance IsMTRAudioOutputClusterRenameOutputParams (Id MTRAudioOutputClusterRenameOutputParams) where
  toMTRAudioOutputClusterRenameOutputParams = unsafeCastId

instance IsNSObject (Id MTRAudioOutputClusterRenameOutputParams) where
  toNSObject = unsafeCastId

-- ---------- MTRAudioOutputClusterSelectOutputParams ----------

-- | Phantom type for @MTRAudioOutputClusterSelectOutputParams@.
data MTRAudioOutputClusterSelectOutputParams

instance IsObjCObject (Id MTRAudioOutputClusterSelectOutputParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRAudioOutputClusterSelectOutputParams"

class IsNSObject a => IsMTRAudioOutputClusterSelectOutputParams a where
  toMTRAudioOutputClusterSelectOutputParams :: a -> Id MTRAudioOutputClusterSelectOutputParams

instance IsMTRAudioOutputClusterSelectOutputParams (Id MTRAudioOutputClusterSelectOutputParams) where
  toMTRAudioOutputClusterSelectOutputParams = unsafeCastId

instance IsNSObject (Id MTRAudioOutputClusterSelectOutputParams) where
  toNSObject = unsafeCastId

-- ---------- MTRBarrierControlClusterBarrierControlGoToPercentParams ----------

-- | Phantom type for @MTRBarrierControlClusterBarrierControlGoToPercentParams@.
data MTRBarrierControlClusterBarrierControlGoToPercentParams

instance IsObjCObject (Id MTRBarrierControlClusterBarrierControlGoToPercentParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBarrierControlClusterBarrierControlGoToPercentParams"

class IsNSObject a => IsMTRBarrierControlClusterBarrierControlGoToPercentParams a where
  toMTRBarrierControlClusterBarrierControlGoToPercentParams :: a -> Id MTRBarrierControlClusterBarrierControlGoToPercentParams

instance IsMTRBarrierControlClusterBarrierControlGoToPercentParams (Id MTRBarrierControlClusterBarrierControlGoToPercentParams) where
  toMTRBarrierControlClusterBarrierControlGoToPercentParams = unsafeCastId

instance IsNSObject (Id MTRBarrierControlClusterBarrierControlGoToPercentParams) where
  toNSObject = unsafeCastId

-- ---------- MTRBarrierControlClusterBarrierControlStopParams ----------

-- | Phantom type for @MTRBarrierControlClusterBarrierControlStopParams@.
data MTRBarrierControlClusterBarrierControlStopParams

instance IsObjCObject (Id MTRBarrierControlClusterBarrierControlStopParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBarrierControlClusterBarrierControlStopParams"

class IsNSObject a => IsMTRBarrierControlClusterBarrierControlStopParams a where
  toMTRBarrierControlClusterBarrierControlStopParams :: a -> Id MTRBarrierControlClusterBarrierControlStopParams

instance IsMTRBarrierControlClusterBarrierControlStopParams (Id MTRBarrierControlClusterBarrierControlStopParams) where
  toMTRBarrierControlClusterBarrierControlStopParams = unsafeCastId

instance IsNSObject (Id MTRBarrierControlClusterBarrierControlStopParams) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseDevice ----------

-- | Phantom type for @MTRBaseDevice@.
data MTRBaseDevice

instance IsObjCObject (Id MTRBaseDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseDevice"

class IsNSObject a => IsMTRBaseDevice a where
  toMTRBaseDevice :: a -> Id MTRBaseDevice

instance IsMTRBaseDevice (Id MTRBaseDevice) where
  toMTRBaseDevice = unsafeCastId

instance IsNSObject (Id MTRBaseDevice) where
  toNSObject = unsafeCastId

-- ---------- MTRBasicClusterCapabilityMinimaStruct ----------

-- | Phantom type for @MTRBasicClusterCapabilityMinimaStruct@.
data MTRBasicClusterCapabilityMinimaStruct

instance IsObjCObject (Id MTRBasicClusterCapabilityMinimaStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBasicClusterCapabilityMinimaStruct"

class IsNSObject a => IsMTRBasicClusterCapabilityMinimaStruct a where
  toMTRBasicClusterCapabilityMinimaStruct :: a -> Id MTRBasicClusterCapabilityMinimaStruct

instance IsMTRBasicClusterCapabilityMinimaStruct (Id MTRBasicClusterCapabilityMinimaStruct) where
  toMTRBasicClusterCapabilityMinimaStruct = unsafeCastId

instance IsNSObject (Id MTRBasicClusterCapabilityMinimaStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRBasicClusterLeaveEvent ----------

-- | Phantom type for @MTRBasicClusterLeaveEvent@.
data MTRBasicClusterLeaveEvent

instance IsObjCObject (Id MTRBasicClusterLeaveEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBasicClusterLeaveEvent"

class IsNSObject a => IsMTRBasicClusterLeaveEvent a where
  toMTRBasicClusterLeaveEvent :: a -> Id MTRBasicClusterLeaveEvent

instance IsMTRBasicClusterLeaveEvent (Id MTRBasicClusterLeaveEvent) where
  toMTRBasicClusterLeaveEvent = unsafeCastId

instance IsNSObject (Id MTRBasicClusterLeaveEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRBasicClusterMfgSpecificPingParams ----------

-- | Phantom type for @MTRBasicClusterMfgSpecificPingParams@.
data MTRBasicClusterMfgSpecificPingParams

instance IsObjCObject (Id MTRBasicClusterMfgSpecificPingParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBasicClusterMfgSpecificPingParams"

class IsNSObject a => IsMTRBasicClusterMfgSpecificPingParams a where
  toMTRBasicClusterMfgSpecificPingParams :: a -> Id MTRBasicClusterMfgSpecificPingParams

instance IsMTRBasicClusterMfgSpecificPingParams (Id MTRBasicClusterMfgSpecificPingParams) where
  toMTRBasicClusterMfgSpecificPingParams = unsafeCastId

instance IsNSObject (Id MTRBasicClusterMfgSpecificPingParams) where
  toNSObject = unsafeCastId

-- ---------- MTRBasicClusterReachableChangedEvent ----------

-- | Phantom type for @MTRBasicClusterReachableChangedEvent@.
data MTRBasicClusterReachableChangedEvent

instance IsObjCObject (Id MTRBasicClusterReachableChangedEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBasicClusterReachableChangedEvent"

class IsNSObject a => IsMTRBasicClusterReachableChangedEvent a where
  toMTRBasicClusterReachableChangedEvent :: a -> Id MTRBasicClusterReachableChangedEvent

instance IsMTRBasicClusterReachableChangedEvent (Id MTRBasicClusterReachableChangedEvent) where
  toMTRBasicClusterReachableChangedEvent = unsafeCastId

instance IsNSObject (Id MTRBasicClusterReachableChangedEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRBasicClusterShutDownEvent ----------

-- | Phantom type for @MTRBasicClusterShutDownEvent@.
data MTRBasicClusterShutDownEvent

instance IsObjCObject (Id MTRBasicClusterShutDownEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBasicClusterShutDownEvent"

class IsNSObject a => IsMTRBasicClusterShutDownEvent a where
  toMTRBasicClusterShutDownEvent :: a -> Id MTRBasicClusterShutDownEvent

instance IsMTRBasicClusterShutDownEvent (Id MTRBasicClusterShutDownEvent) where
  toMTRBasicClusterShutDownEvent = unsafeCastId

instance IsNSObject (Id MTRBasicClusterShutDownEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRBasicClusterStartUpEvent ----------

-- | Phantom type for @MTRBasicClusterStartUpEvent@.
data MTRBasicClusterStartUpEvent

instance IsObjCObject (Id MTRBasicClusterStartUpEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBasicClusterStartUpEvent"

class IsNSObject a => IsMTRBasicClusterStartUpEvent a where
  toMTRBasicClusterStartUpEvent :: a -> Id MTRBasicClusterStartUpEvent

instance IsMTRBasicClusterStartUpEvent (Id MTRBasicClusterStartUpEvent) where
  toMTRBasicClusterStartUpEvent = unsafeCastId

instance IsNSObject (Id MTRBasicClusterStartUpEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRBindingClusterTargetStruct ----------

-- | Phantom type for @MTRBindingClusterTargetStruct@.
data MTRBindingClusterTargetStruct

instance IsObjCObject (Id MTRBindingClusterTargetStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBindingClusterTargetStruct"

class IsNSObject a => IsMTRBindingClusterTargetStruct a where
  toMTRBindingClusterTargetStruct :: a -> Id MTRBindingClusterTargetStruct

instance IsMTRBindingClusterTargetStruct (Id MTRBindingClusterTargetStruct) where
  toMTRBindingClusterTargetStruct = unsafeCastId

instance IsNSObject (Id MTRBindingClusterTargetStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRBooleanStateClusterStateChangeEvent ----------

-- | Phantom type for @MTRBooleanStateClusterStateChangeEvent@.
data MTRBooleanStateClusterStateChangeEvent

instance IsObjCObject (Id MTRBooleanStateClusterStateChangeEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBooleanStateClusterStateChangeEvent"

class IsNSObject a => IsMTRBooleanStateClusterStateChangeEvent a where
  toMTRBooleanStateClusterStateChangeEvent :: a -> Id MTRBooleanStateClusterStateChangeEvent

instance IsMTRBooleanStateClusterStateChangeEvent (Id MTRBooleanStateClusterStateChangeEvent) where
  toMTRBooleanStateClusterStateChangeEvent = unsafeCastId

instance IsNSObject (Id MTRBooleanStateClusterStateChangeEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRBridgedDeviceBasicClusterLeaveEvent ----------

-- | Phantom type for @MTRBridgedDeviceBasicClusterLeaveEvent@.
data MTRBridgedDeviceBasicClusterLeaveEvent

instance IsObjCObject (Id MTRBridgedDeviceBasicClusterLeaveEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBridgedDeviceBasicClusterLeaveEvent"

class IsNSObject a => IsMTRBridgedDeviceBasicClusterLeaveEvent a where
  toMTRBridgedDeviceBasicClusterLeaveEvent :: a -> Id MTRBridgedDeviceBasicClusterLeaveEvent

instance IsMTRBridgedDeviceBasicClusterLeaveEvent (Id MTRBridgedDeviceBasicClusterLeaveEvent) where
  toMTRBridgedDeviceBasicClusterLeaveEvent = unsafeCastId

instance IsNSObject (Id MTRBridgedDeviceBasicClusterLeaveEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRBridgedDeviceBasicClusterReachableChangedEvent ----------

-- | Phantom type for @MTRBridgedDeviceBasicClusterReachableChangedEvent@.
data MTRBridgedDeviceBasicClusterReachableChangedEvent

instance IsObjCObject (Id MTRBridgedDeviceBasicClusterReachableChangedEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBridgedDeviceBasicClusterReachableChangedEvent"

class IsNSObject a => IsMTRBridgedDeviceBasicClusterReachableChangedEvent a where
  toMTRBridgedDeviceBasicClusterReachableChangedEvent :: a -> Id MTRBridgedDeviceBasicClusterReachableChangedEvent

instance IsMTRBridgedDeviceBasicClusterReachableChangedEvent (Id MTRBridgedDeviceBasicClusterReachableChangedEvent) where
  toMTRBridgedDeviceBasicClusterReachableChangedEvent = unsafeCastId

instance IsNSObject (Id MTRBridgedDeviceBasicClusterReachableChangedEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRBridgedDeviceBasicClusterShutDownEvent ----------

-- | Phantom type for @MTRBridgedDeviceBasicClusterShutDownEvent@.
data MTRBridgedDeviceBasicClusterShutDownEvent

instance IsObjCObject (Id MTRBridgedDeviceBasicClusterShutDownEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBridgedDeviceBasicClusterShutDownEvent"

class IsNSObject a => IsMTRBridgedDeviceBasicClusterShutDownEvent a where
  toMTRBridgedDeviceBasicClusterShutDownEvent :: a -> Id MTRBridgedDeviceBasicClusterShutDownEvent

instance IsMTRBridgedDeviceBasicClusterShutDownEvent (Id MTRBridgedDeviceBasicClusterShutDownEvent) where
  toMTRBridgedDeviceBasicClusterShutDownEvent = unsafeCastId

instance IsNSObject (Id MTRBridgedDeviceBasicClusterShutDownEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRBridgedDeviceBasicClusterStartUpEvent ----------

-- | Phantom type for @MTRBridgedDeviceBasicClusterStartUpEvent@.
data MTRBridgedDeviceBasicClusterStartUpEvent

instance IsObjCObject (Id MTRBridgedDeviceBasicClusterStartUpEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBridgedDeviceBasicClusterStartUpEvent"

class IsNSObject a => IsMTRBridgedDeviceBasicClusterStartUpEvent a where
  toMTRBridgedDeviceBasicClusterStartUpEvent :: a -> Id MTRBridgedDeviceBasicClusterStartUpEvent

instance IsMTRBridgedDeviceBasicClusterStartUpEvent (Id MTRBridgedDeviceBasicClusterStartUpEvent) where
  toMTRBridgedDeviceBasicClusterStartUpEvent = unsafeCastId

instance IsNSObject (Id MTRBridgedDeviceBasicClusterStartUpEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRCertificates ----------

-- | Phantom type for @MTRCertificates@.
data MTRCertificates

instance IsObjCObject (Id MTRCertificates) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRCertificates"

class IsNSObject a => IsMTRCertificates a where
  toMTRCertificates :: a -> Id MTRCertificates

instance IsMTRCertificates (Id MTRCertificates) where
  toMTRCertificates = unsafeCastId

instance IsNSObject (Id MTRCertificates) where
  toNSObject = unsafeCastId

-- ---------- MTRChannelClusterChangeChannelByNumberParams ----------

-- | Phantom type for @MTRChannelClusterChangeChannelByNumberParams@.
data MTRChannelClusterChangeChannelByNumberParams

instance IsObjCObject (Id MTRChannelClusterChangeChannelByNumberParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRChannelClusterChangeChannelByNumberParams"

class IsNSObject a => IsMTRChannelClusterChangeChannelByNumberParams a where
  toMTRChannelClusterChangeChannelByNumberParams :: a -> Id MTRChannelClusterChangeChannelByNumberParams

instance IsMTRChannelClusterChangeChannelByNumberParams (Id MTRChannelClusterChangeChannelByNumberParams) where
  toMTRChannelClusterChangeChannelByNumberParams = unsafeCastId

instance IsNSObject (Id MTRChannelClusterChangeChannelByNumberParams) where
  toNSObject = unsafeCastId

-- ---------- MTRChannelClusterChangeChannelParams ----------

-- | Phantom type for @MTRChannelClusterChangeChannelParams@.
data MTRChannelClusterChangeChannelParams

instance IsObjCObject (Id MTRChannelClusterChangeChannelParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRChannelClusterChangeChannelParams"

class IsNSObject a => IsMTRChannelClusterChangeChannelParams a where
  toMTRChannelClusterChangeChannelParams :: a -> Id MTRChannelClusterChangeChannelParams

instance IsMTRChannelClusterChangeChannelParams (Id MTRChannelClusterChangeChannelParams) where
  toMTRChannelClusterChangeChannelParams = unsafeCastId

instance IsNSObject (Id MTRChannelClusterChangeChannelParams) where
  toNSObject = unsafeCastId

-- ---------- MTRChannelClusterChangeChannelResponseParams ----------

-- | Phantom type for @MTRChannelClusterChangeChannelResponseParams@.
data MTRChannelClusterChangeChannelResponseParams

instance IsObjCObject (Id MTRChannelClusterChangeChannelResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRChannelClusterChangeChannelResponseParams"

class IsNSObject a => IsMTRChannelClusterChangeChannelResponseParams a where
  toMTRChannelClusterChangeChannelResponseParams :: a -> Id MTRChannelClusterChangeChannelResponseParams

instance IsMTRChannelClusterChangeChannelResponseParams (Id MTRChannelClusterChangeChannelResponseParams) where
  toMTRChannelClusterChangeChannelResponseParams = unsafeCastId

instance IsNSObject (Id MTRChannelClusterChangeChannelResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRChannelClusterChannelInfo ----------

-- | Phantom type for @MTRChannelClusterChannelInfo@.
data MTRChannelClusterChannelInfo

instance IsObjCObject (Id MTRChannelClusterChannelInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRChannelClusterChannelInfo"

class IsNSObject a => IsMTRChannelClusterChannelInfo a where
  toMTRChannelClusterChannelInfo :: a -> Id MTRChannelClusterChannelInfo

instance IsMTRChannelClusterChannelInfo (Id MTRChannelClusterChannelInfo) where
  toMTRChannelClusterChannelInfo = unsafeCastId

instance IsNSObject (Id MTRChannelClusterChannelInfo) where
  toNSObject = unsafeCastId

-- ---------- MTRChannelClusterLineupInfo ----------

-- | Phantom type for @MTRChannelClusterLineupInfo@.
data MTRChannelClusterLineupInfo

instance IsObjCObject (Id MTRChannelClusterLineupInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRChannelClusterLineupInfo"

class IsNSObject a => IsMTRChannelClusterLineupInfo a where
  toMTRChannelClusterLineupInfo :: a -> Id MTRChannelClusterLineupInfo

instance IsMTRChannelClusterLineupInfo (Id MTRChannelClusterLineupInfo) where
  toMTRChannelClusterLineupInfo = unsafeCastId

instance IsNSObject (Id MTRChannelClusterLineupInfo) where
  toNSObject = unsafeCastId

-- ---------- MTRChannelClusterSkipChannelParams ----------

-- | Phantom type for @MTRChannelClusterSkipChannelParams@.
data MTRChannelClusterSkipChannelParams

instance IsObjCObject (Id MTRChannelClusterSkipChannelParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRChannelClusterSkipChannelParams"

class IsNSObject a => IsMTRChannelClusterSkipChannelParams a where
  toMTRChannelClusterSkipChannelParams :: a -> Id MTRChannelClusterSkipChannelParams

instance IsMTRChannelClusterSkipChannelParams (Id MTRChannelClusterSkipChannelParams) where
  toMTRChannelClusterSkipChannelParams = unsafeCastId

instance IsNSObject (Id MTRChannelClusterSkipChannelParams) where
  toNSObject = unsafeCastId

-- ---------- MTRCluster ----------

-- | MTRCluster    This is the base class for clusters.
-- 
-- Phantom type for @MTRCluster@.
data MTRCluster

instance IsObjCObject (Id MTRCluster) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRCluster"

class IsNSObject a => IsMTRCluster a where
  toMTRCluster :: a -> Id MTRCluster

instance IsMTRCluster (Id MTRCluster) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRCluster) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterColorLoopSetParams ----------

-- | Phantom type for @MTRColorControlClusterColorLoopSetParams@.
data MTRColorControlClusterColorLoopSetParams

instance IsObjCObject (Id MTRColorControlClusterColorLoopSetParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterColorLoopSetParams"

class IsNSObject a => IsMTRColorControlClusterColorLoopSetParams a where
  toMTRColorControlClusterColorLoopSetParams :: a -> Id MTRColorControlClusterColorLoopSetParams

instance IsMTRColorControlClusterColorLoopSetParams (Id MTRColorControlClusterColorLoopSetParams) where
  toMTRColorControlClusterColorLoopSetParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterColorLoopSetParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterEnhancedMoveHueParams ----------

-- | Phantom type for @MTRColorControlClusterEnhancedMoveHueParams@.
data MTRColorControlClusterEnhancedMoveHueParams

instance IsObjCObject (Id MTRColorControlClusterEnhancedMoveHueParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterEnhancedMoveHueParams"

class IsNSObject a => IsMTRColorControlClusterEnhancedMoveHueParams a where
  toMTRColorControlClusterEnhancedMoveHueParams :: a -> Id MTRColorControlClusterEnhancedMoveHueParams

instance IsMTRColorControlClusterEnhancedMoveHueParams (Id MTRColorControlClusterEnhancedMoveHueParams) where
  toMTRColorControlClusterEnhancedMoveHueParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterEnhancedMoveHueParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterEnhancedMoveToHueAndSaturationParams ----------

-- | Phantom type for @MTRColorControlClusterEnhancedMoveToHueAndSaturationParams@.
data MTRColorControlClusterEnhancedMoveToHueAndSaturationParams

instance IsObjCObject (Id MTRColorControlClusterEnhancedMoveToHueAndSaturationParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterEnhancedMoveToHueAndSaturationParams"

class IsNSObject a => IsMTRColorControlClusterEnhancedMoveToHueAndSaturationParams a where
  toMTRColorControlClusterEnhancedMoveToHueAndSaturationParams :: a -> Id MTRColorControlClusterEnhancedMoveToHueAndSaturationParams

instance IsMTRColorControlClusterEnhancedMoveToHueAndSaturationParams (Id MTRColorControlClusterEnhancedMoveToHueAndSaturationParams) where
  toMTRColorControlClusterEnhancedMoveToHueAndSaturationParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterEnhancedMoveToHueAndSaturationParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterEnhancedMoveToHueParams ----------

-- | Phantom type for @MTRColorControlClusterEnhancedMoveToHueParams@.
data MTRColorControlClusterEnhancedMoveToHueParams

instance IsObjCObject (Id MTRColorControlClusterEnhancedMoveToHueParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterEnhancedMoveToHueParams"

class IsNSObject a => IsMTRColorControlClusterEnhancedMoveToHueParams a where
  toMTRColorControlClusterEnhancedMoveToHueParams :: a -> Id MTRColorControlClusterEnhancedMoveToHueParams

instance IsMTRColorControlClusterEnhancedMoveToHueParams (Id MTRColorControlClusterEnhancedMoveToHueParams) where
  toMTRColorControlClusterEnhancedMoveToHueParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterEnhancedMoveToHueParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterEnhancedStepHueParams ----------

-- | Phantom type for @MTRColorControlClusterEnhancedStepHueParams@.
data MTRColorControlClusterEnhancedStepHueParams

instance IsObjCObject (Id MTRColorControlClusterEnhancedStepHueParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterEnhancedStepHueParams"

class IsNSObject a => IsMTRColorControlClusterEnhancedStepHueParams a where
  toMTRColorControlClusterEnhancedStepHueParams :: a -> Id MTRColorControlClusterEnhancedStepHueParams

instance IsMTRColorControlClusterEnhancedStepHueParams (Id MTRColorControlClusterEnhancedStepHueParams) where
  toMTRColorControlClusterEnhancedStepHueParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterEnhancedStepHueParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterMoveColorParams ----------

-- | Phantom type for @MTRColorControlClusterMoveColorParams@.
data MTRColorControlClusterMoveColorParams

instance IsObjCObject (Id MTRColorControlClusterMoveColorParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterMoveColorParams"

class IsNSObject a => IsMTRColorControlClusterMoveColorParams a where
  toMTRColorControlClusterMoveColorParams :: a -> Id MTRColorControlClusterMoveColorParams

instance IsMTRColorControlClusterMoveColorParams (Id MTRColorControlClusterMoveColorParams) where
  toMTRColorControlClusterMoveColorParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterMoveColorParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterMoveColorTemperatureParams ----------

-- | Phantom type for @MTRColorControlClusterMoveColorTemperatureParams@.
data MTRColorControlClusterMoveColorTemperatureParams

instance IsObjCObject (Id MTRColorControlClusterMoveColorTemperatureParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterMoveColorTemperatureParams"

class IsNSObject a => IsMTRColorControlClusterMoveColorTemperatureParams a where
  toMTRColorControlClusterMoveColorTemperatureParams :: a -> Id MTRColorControlClusterMoveColorTemperatureParams

instance IsMTRColorControlClusterMoveColorTemperatureParams (Id MTRColorControlClusterMoveColorTemperatureParams) where
  toMTRColorControlClusterMoveColorTemperatureParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterMoveColorTemperatureParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterMoveHueParams ----------

-- | Phantom type for @MTRColorControlClusterMoveHueParams@.
data MTRColorControlClusterMoveHueParams

instance IsObjCObject (Id MTRColorControlClusterMoveHueParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterMoveHueParams"

class IsNSObject a => IsMTRColorControlClusterMoveHueParams a where
  toMTRColorControlClusterMoveHueParams :: a -> Id MTRColorControlClusterMoveHueParams

instance IsMTRColorControlClusterMoveHueParams (Id MTRColorControlClusterMoveHueParams) where
  toMTRColorControlClusterMoveHueParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterMoveHueParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterMoveSaturationParams ----------

-- | Phantom type for @MTRColorControlClusterMoveSaturationParams@.
data MTRColorControlClusterMoveSaturationParams

instance IsObjCObject (Id MTRColorControlClusterMoveSaturationParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterMoveSaturationParams"

class IsNSObject a => IsMTRColorControlClusterMoveSaturationParams a where
  toMTRColorControlClusterMoveSaturationParams :: a -> Id MTRColorControlClusterMoveSaturationParams

instance IsMTRColorControlClusterMoveSaturationParams (Id MTRColorControlClusterMoveSaturationParams) where
  toMTRColorControlClusterMoveSaturationParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterMoveSaturationParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterMoveToColorParams ----------

-- | Phantom type for @MTRColorControlClusterMoveToColorParams@.
data MTRColorControlClusterMoveToColorParams

instance IsObjCObject (Id MTRColorControlClusterMoveToColorParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterMoveToColorParams"

class IsNSObject a => IsMTRColorControlClusterMoveToColorParams a where
  toMTRColorControlClusterMoveToColorParams :: a -> Id MTRColorControlClusterMoveToColorParams

instance IsMTRColorControlClusterMoveToColorParams (Id MTRColorControlClusterMoveToColorParams) where
  toMTRColorControlClusterMoveToColorParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterMoveToColorParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterMoveToColorTemperatureParams ----------

-- | Phantom type for @MTRColorControlClusterMoveToColorTemperatureParams@.
data MTRColorControlClusterMoveToColorTemperatureParams

instance IsObjCObject (Id MTRColorControlClusterMoveToColorTemperatureParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterMoveToColorTemperatureParams"

class IsNSObject a => IsMTRColorControlClusterMoveToColorTemperatureParams a where
  toMTRColorControlClusterMoveToColorTemperatureParams :: a -> Id MTRColorControlClusterMoveToColorTemperatureParams

instance IsMTRColorControlClusterMoveToColorTemperatureParams (Id MTRColorControlClusterMoveToColorTemperatureParams) where
  toMTRColorControlClusterMoveToColorTemperatureParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterMoveToColorTemperatureParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterMoveToHueAndSaturationParams ----------

-- | Phantom type for @MTRColorControlClusterMoveToHueAndSaturationParams@.
data MTRColorControlClusterMoveToHueAndSaturationParams

instance IsObjCObject (Id MTRColorControlClusterMoveToHueAndSaturationParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterMoveToHueAndSaturationParams"

class IsNSObject a => IsMTRColorControlClusterMoveToHueAndSaturationParams a where
  toMTRColorControlClusterMoveToHueAndSaturationParams :: a -> Id MTRColorControlClusterMoveToHueAndSaturationParams

instance IsMTRColorControlClusterMoveToHueAndSaturationParams (Id MTRColorControlClusterMoveToHueAndSaturationParams) where
  toMTRColorControlClusterMoveToHueAndSaturationParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterMoveToHueAndSaturationParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterMoveToHueParams ----------

-- | Phantom type for @MTRColorControlClusterMoveToHueParams@.
data MTRColorControlClusterMoveToHueParams

instance IsObjCObject (Id MTRColorControlClusterMoveToHueParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterMoveToHueParams"

class IsNSObject a => IsMTRColorControlClusterMoveToHueParams a where
  toMTRColorControlClusterMoveToHueParams :: a -> Id MTRColorControlClusterMoveToHueParams

instance IsMTRColorControlClusterMoveToHueParams (Id MTRColorControlClusterMoveToHueParams) where
  toMTRColorControlClusterMoveToHueParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterMoveToHueParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterMoveToSaturationParams ----------

-- | Phantom type for @MTRColorControlClusterMoveToSaturationParams@.
data MTRColorControlClusterMoveToSaturationParams

instance IsObjCObject (Id MTRColorControlClusterMoveToSaturationParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterMoveToSaturationParams"

class IsNSObject a => IsMTRColorControlClusterMoveToSaturationParams a where
  toMTRColorControlClusterMoveToSaturationParams :: a -> Id MTRColorControlClusterMoveToSaturationParams

instance IsMTRColorControlClusterMoveToSaturationParams (Id MTRColorControlClusterMoveToSaturationParams) where
  toMTRColorControlClusterMoveToSaturationParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterMoveToSaturationParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterStepColorParams ----------

-- | Phantom type for @MTRColorControlClusterStepColorParams@.
data MTRColorControlClusterStepColorParams

instance IsObjCObject (Id MTRColorControlClusterStepColorParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterStepColorParams"

class IsNSObject a => IsMTRColorControlClusterStepColorParams a where
  toMTRColorControlClusterStepColorParams :: a -> Id MTRColorControlClusterStepColorParams

instance IsMTRColorControlClusterStepColorParams (Id MTRColorControlClusterStepColorParams) where
  toMTRColorControlClusterStepColorParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterStepColorParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterStepColorTemperatureParams ----------

-- | Phantom type for @MTRColorControlClusterStepColorTemperatureParams@.
data MTRColorControlClusterStepColorTemperatureParams

instance IsObjCObject (Id MTRColorControlClusterStepColorTemperatureParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterStepColorTemperatureParams"

class IsNSObject a => IsMTRColorControlClusterStepColorTemperatureParams a where
  toMTRColorControlClusterStepColorTemperatureParams :: a -> Id MTRColorControlClusterStepColorTemperatureParams

instance IsMTRColorControlClusterStepColorTemperatureParams (Id MTRColorControlClusterStepColorTemperatureParams) where
  toMTRColorControlClusterStepColorTemperatureParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterStepColorTemperatureParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterStepHueParams ----------

-- | Phantom type for @MTRColorControlClusterStepHueParams@.
data MTRColorControlClusterStepHueParams

instance IsObjCObject (Id MTRColorControlClusterStepHueParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterStepHueParams"

class IsNSObject a => IsMTRColorControlClusterStepHueParams a where
  toMTRColorControlClusterStepHueParams :: a -> Id MTRColorControlClusterStepHueParams

instance IsMTRColorControlClusterStepHueParams (Id MTRColorControlClusterStepHueParams) where
  toMTRColorControlClusterStepHueParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterStepHueParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterStepSaturationParams ----------

-- | Phantom type for @MTRColorControlClusterStepSaturationParams@.
data MTRColorControlClusterStepSaturationParams

instance IsObjCObject (Id MTRColorControlClusterStepSaturationParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterStepSaturationParams"

class IsNSObject a => IsMTRColorControlClusterStepSaturationParams a where
  toMTRColorControlClusterStepSaturationParams :: a -> Id MTRColorControlClusterStepSaturationParams

instance IsMTRColorControlClusterStepSaturationParams (Id MTRColorControlClusterStepSaturationParams) where
  toMTRColorControlClusterStepSaturationParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterStepSaturationParams) where
  toNSObject = unsafeCastId

-- ---------- MTRColorControlClusterStopMoveStepParams ----------

-- | Phantom type for @MTRColorControlClusterStopMoveStepParams@.
data MTRColorControlClusterStopMoveStepParams

instance IsObjCObject (Id MTRColorControlClusterStopMoveStepParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRColorControlClusterStopMoveStepParams"

class IsNSObject a => IsMTRColorControlClusterStopMoveStepParams a where
  toMTRColorControlClusterStopMoveStepParams :: a -> Id MTRColorControlClusterStopMoveStepParams

instance IsMTRColorControlClusterStopMoveStepParams (Id MTRColorControlClusterStopMoveStepParams) where
  toMTRColorControlClusterStopMoveStepParams = unsafeCastId

instance IsNSObject (Id MTRColorControlClusterStopMoveStepParams) where
  toNSObject = unsafeCastId

-- ---------- MTRCommandPath ----------

-- | Phantom type for @MTRCommandPath@.
data MTRCommandPath

instance IsObjCObject (Id MTRCommandPath) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRCommandPath"

class IsNSObject a => IsMTRCommandPath a where
  toMTRCommandPath :: a -> Id MTRCommandPath

instance IsMTRCommandPath (Id MTRCommandPath) where
  toMTRCommandPath = unsafeCastId

instance IsNSObject (Id MTRCommandPath) where
  toNSObject = unsafeCastId

-- ---------- MTRCommissioningParameters ----------

-- | The class definition for the CHIPCommissioningParameters
-- 
-- Phantom type for @MTRCommissioningParameters@.
data MTRCommissioningParameters

instance IsObjCObject (Id MTRCommissioningParameters) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRCommissioningParameters"

class IsNSObject a => IsMTRCommissioningParameters a where
  toMTRCommissioningParameters :: a -> Id MTRCommissioningParameters

instance IsMTRCommissioningParameters (Id MTRCommissioningParameters) where
  toMTRCommissioningParameters = unsafeCastId

instance IsNSObject (Id MTRCommissioningParameters) where
  toNSObject = unsafeCastId

-- ---------- MTRContentLauncherClusterAdditionalInfo ----------

-- | Phantom type for @MTRContentLauncherClusterAdditionalInfo@.
data MTRContentLauncherClusterAdditionalInfo

instance IsObjCObject (Id MTRContentLauncherClusterAdditionalInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRContentLauncherClusterAdditionalInfo"

class IsNSObject a => IsMTRContentLauncherClusterAdditionalInfo a where
  toMTRContentLauncherClusterAdditionalInfo :: a -> Id MTRContentLauncherClusterAdditionalInfo

instance IsMTRContentLauncherClusterAdditionalInfo (Id MTRContentLauncherClusterAdditionalInfo) where
  toMTRContentLauncherClusterAdditionalInfo = unsafeCastId

instance IsNSObject (Id MTRContentLauncherClusterAdditionalInfo) where
  toNSObject = unsafeCastId

-- ---------- MTRContentLauncherClusterBrandingInformation ----------

-- | Phantom type for @MTRContentLauncherClusterBrandingInformation@.
data MTRContentLauncherClusterBrandingInformation

instance IsObjCObject (Id MTRContentLauncherClusterBrandingInformation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRContentLauncherClusterBrandingInformation"

class IsNSObject a => IsMTRContentLauncherClusterBrandingInformation a where
  toMTRContentLauncherClusterBrandingInformation :: a -> Id MTRContentLauncherClusterBrandingInformation

instance IsMTRContentLauncherClusterBrandingInformation (Id MTRContentLauncherClusterBrandingInformation) where
  toMTRContentLauncherClusterBrandingInformation = unsafeCastId

instance IsNSObject (Id MTRContentLauncherClusterBrandingInformation) where
  toNSObject = unsafeCastId

-- ---------- MTRContentLauncherClusterContentSearch ----------

-- | Phantom type for @MTRContentLauncherClusterContentSearch@.
data MTRContentLauncherClusterContentSearch

instance IsObjCObject (Id MTRContentLauncherClusterContentSearch) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRContentLauncherClusterContentSearch"

class IsNSObject a => IsMTRContentLauncherClusterContentSearch a where
  toMTRContentLauncherClusterContentSearch :: a -> Id MTRContentLauncherClusterContentSearch

instance IsMTRContentLauncherClusterContentSearch (Id MTRContentLauncherClusterContentSearch) where
  toMTRContentLauncherClusterContentSearch = unsafeCastId

instance IsNSObject (Id MTRContentLauncherClusterContentSearch) where
  toNSObject = unsafeCastId

-- ---------- MTRContentLauncherClusterDimension ----------

-- | Phantom type for @MTRContentLauncherClusterDimension@.
data MTRContentLauncherClusterDimension

instance IsObjCObject (Id MTRContentLauncherClusterDimension) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRContentLauncherClusterDimension"

class IsNSObject a => IsMTRContentLauncherClusterDimension a where
  toMTRContentLauncherClusterDimension :: a -> Id MTRContentLauncherClusterDimension

instance IsMTRContentLauncherClusterDimension (Id MTRContentLauncherClusterDimension) where
  toMTRContentLauncherClusterDimension = unsafeCastId

instance IsNSObject (Id MTRContentLauncherClusterDimension) where
  toNSObject = unsafeCastId

-- ---------- MTRContentLauncherClusterLaunchContentParams ----------

-- | Phantom type for @MTRContentLauncherClusterLaunchContentParams@.
data MTRContentLauncherClusterLaunchContentParams

instance IsObjCObject (Id MTRContentLauncherClusterLaunchContentParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRContentLauncherClusterLaunchContentParams"

class IsNSObject a => IsMTRContentLauncherClusterLaunchContentParams a where
  toMTRContentLauncherClusterLaunchContentParams :: a -> Id MTRContentLauncherClusterLaunchContentParams

instance IsMTRContentLauncherClusterLaunchContentParams (Id MTRContentLauncherClusterLaunchContentParams) where
  toMTRContentLauncherClusterLaunchContentParams = unsafeCastId

instance IsNSObject (Id MTRContentLauncherClusterLaunchContentParams) where
  toNSObject = unsafeCastId

-- ---------- MTRContentLauncherClusterLaunchResponseParams ----------

-- | Phantom type for @MTRContentLauncherClusterLaunchResponseParams@.
data MTRContentLauncherClusterLaunchResponseParams

instance IsObjCObject (Id MTRContentLauncherClusterLaunchResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRContentLauncherClusterLaunchResponseParams"

class IsNSObject a => IsMTRContentLauncherClusterLaunchResponseParams a where
  toMTRContentLauncherClusterLaunchResponseParams :: a -> Id MTRContentLauncherClusterLaunchResponseParams

instance IsMTRContentLauncherClusterLaunchResponseParams (Id MTRContentLauncherClusterLaunchResponseParams) where
  toMTRContentLauncherClusterLaunchResponseParams = unsafeCastId

instance IsNSObject (Id MTRContentLauncherClusterLaunchResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRContentLauncherClusterLaunchURLParams ----------

-- | Phantom type for @MTRContentLauncherClusterLaunchURLParams@.
data MTRContentLauncherClusterLaunchURLParams

instance IsObjCObject (Id MTRContentLauncherClusterLaunchURLParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRContentLauncherClusterLaunchURLParams"

class IsNSObject a => IsMTRContentLauncherClusterLaunchURLParams a where
  toMTRContentLauncherClusterLaunchURLParams :: a -> Id MTRContentLauncherClusterLaunchURLParams

instance IsMTRContentLauncherClusterLaunchURLParams (Id MTRContentLauncherClusterLaunchURLParams) where
  toMTRContentLauncherClusterLaunchURLParams = unsafeCastId

instance IsNSObject (Id MTRContentLauncherClusterLaunchURLParams) where
  toNSObject = unsafeCastId

-- ---------- MTRContentLauncherClusterParameter ----------

-- | Phantom type for @MTRContentLauncherClusterParameter@.
data MTRContentLauncherClusterParameter

instance IsObjCObject (Id MTRContentLauncherClusterParameter) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRContentLauncherClusterParameter"

class IsNSObject a => IsMTRContentLauncherClusterParameter a where
  toMTRContentLauncherClusterParameter :: a -> Id MTRContentLauncherClusterParameter

instance IsMTRContentLauncherClusterParameter (Id MTRContentLauncherClusterParameter) where
  toMTRContentLauncherClusterParameter = unsafeCastId

instance IsNSObject (Id MTRContentLauncherClusterParameter) where
  toNSObject = unsafeCastId

-- ---------- MTRContentLauncherClusterStyleInformation ----------

-- | Phantom type for @MTRContentLauncherClusterStyleInformation@.
data MTRContentLauncherClusterStyleInformation

instance IsObjCObject (Id MTRContentLauncherClusterStyleInformation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRContentLauncherClusterStyleInformation"

class IsNSObject a => IsMTRContentLauncherClusterStyleInformation a where
  toMTRContentLauncherClusterStyleInformation :: a -> Id MTRContentLauncherClusterStyleInformation

instance IsMTRContentLauncherClusterStyleInformation (Id MTRContentLauncherClusterStyleInformation) where
  toMTRContentLauncherClusterStyleInformation = unsafeCastId

instance IsNSObject (Id MTRContentLauncherClusterStyleInformation) where
  toNSObject = unsafeCastId

-- ---------- MTRControllerFactory ----------

-- | Phantom type for @MTRControllerFactory@.
data MTRControllerFactory

instance IsObjCObject (Id MTRControllerFactory) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRControllerFactory"

class IsNSObject a => IsMTRControllerFactory a where
  toMTRControllerFactory :: a -> Id MTRControllerFactory

instance IsMTRControllerFactory (Id MTRControllerFactory) where
  toMTRControllerFactory = unsafeCastId

instance IsNSObject (Id MTRControllerFactory) where
  toNSObject = unsafeCastId

-- ---------- MTRControllerFactoryParams ----------

-- | Phantom type for @MTRControllerFactoryParams@.
data MTRControllerFactoryParams

instance IsObjCObject (Id MTRControllerFactoryParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRControllerFactoryParams"

class IsNSObject a => IsMTRControllerFactoryParams a where
  toMTRControllerFactoryParams :: a -> Id MTRControllerFactoryParams

instance IsMTRControllerFactoryParams (Id MTRControllerFactoryParams) where
  toMTRControllerFactoryParams = unsafeCastId

instance IsNSObject (Id MTRControllerFactoryParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDescriptorClusterDeviceType ----------

-- | Phantom type for @MTRDescriptorClusterDeviceType@.
data MTRDescriptorClusterDeviceType

instance IsObjCObject (Id MTRDescriptorClusterDeviceType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDescriptorClusterDeviceType"

class IsNSObject a => IsMTRDescriptorClusterDeviceType a where
  toMTRDescriptorClusterDeviceType :: a -> Id MTRDescriptorClusterDeviceType

instance IsMTRDescriptorClusterDeviceType (Id MTRDescriptorClusterDeviceType) where
  toMTRDescriptorClusterDeviceType = unsafeCastId

instance IsNSObject (Id MTRDescriptorClusterDeviceType) where
  toNSObject = unsafeCastId

-- ---------- MTRDescriptorClusterDeviceTypeStruct ----------

-- | Phantom type for @MTRDescriptorClusterDeviceTypeStruct@.
data MTRDescriptorClusterDeviceTypeStruct

instance IsObjCObject (Id MTRDescriptorClusterDeviceTypeStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDescriptorClusterDeviceTypeStruct"

class IsNSObject a => IsMTRDescriptorClusterDeviceTypeStruct a where
  toMTRDescriptorClusterDeviceTypeStruct :: a -> Id MTRDescriptorClusterDeviceTypeStruct

instance IsMTRDescriptorClusterDeviceTypeStruct (Id MTRDescriptorClusterDeviceTypeStruct) where
  toMTRDescriptorClusterDeviceTypeStruct = unsafeCastId

instance IsNSObject (Id MTRDescriptorClusterDeviceTypeStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRDevice ----------

-- | Phantom type for @MTRDevice@.
data MTRDevice

instance IsObjCObject (Id MTRDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDevice"

class IsNSObject a => IsMTRDevice a where
  toMTRDevice :: a -> Id MTRDevice

instance IsMTRDevice (Id MTRDevice) where
  toMTRDevice = unsafeCastId

instance IsNSObject (Id MTRDevice) where
  toNSObject = unsafeCastId

-- ---------- MTRDeviceAttestationDeviceInfo ----------

-- | Phantom type for @MTRDeviceAttestationDeviceInfo@.
data MTRDeviceAttestationDeviceInfo

instance IsObjCObject (Id MTRDeviceAttestationDeviceInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDeviceAttestationDeviceInfo"

class IsNSObject a => IsMTRDeviceAttestationDeviceInfo a where
  toMTRDeviceAttestationDeviceInfo :: a -> Id MTRDeviceAttestationDeviceInfo

instance IsMTRDeviceAttestationDeviceInfo (Id MTRDeviceAttestationDeviceInfo) where
  toMTRDeviceAttestationDeviceInfo = unsafeCastId

instance IsNSObject (Id MTRDeviceAttestationDeviceInfo) where
  toNSObject = unsafeCastId

-- ---------- MTRDeviceController ----------

-- | Phantom type for @MTRDeviceController@.
data MTRDeviceController

instance IsObjCObject (Id MTRDeviceController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDeviceController"

class IsNSObject a => IsMTRDeviceController a where
  toMTRDeviceController :: a -> Id MTRDeviceController

instance IsMTRDeviceController (Id MTRDeviceController) where
  toMTRDeviceController = unsafeCastId

instance IsNSObject (Id MTRDeviceController) where
  toNSObject = unsafeCastId

-- ---------- MTRDeviceControllerStartupParams ----------

-- | Phantom type for @MTRDeviceControllerStartupParams@.
data MTRDeviceControllerStartupParams

instance IsObjCObject (Id MTRDeviceControllerStartupParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDeviceControllerStartupParams"

class IsNSObject a => IsMTRDeviceControllerStartupParams a where
  toMTRDeviceControllerStartupParams :: a -> Id MTRDeviceControllerStartupParams

instance IsMTRDeviceControllerStartupParams (Id MTRDeviceControllerStartupParams) where
  toMTRDeviceControllerStartupParams = unsafeCastId

instance IsNSObject (Id MTRDeviceControllerStartupParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDiagnosticLogsClusterRetrieveLogsRequestParams ----------

-- | Phantom type for @MTRDiagnosticLogsClusterRetrieveLogsRequestParams@.
data MTRDiagnosticLogsClusterRetrieveLogsRequestParams

instance IsObjCObject (Id MTRDiagnosticLogsClusterRetrieveLogsRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDiagnosticLogsClusterRetrieveLogsRequestParams"

class IsNSObject a => IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams a where
  toMTRDiagnosticLogsClusterRetrieveLogsRequestParams :: a -> Id MTRDiagnosticLogsClusterRetrieveLogsRequestParams

instance IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams (Id MTRDiagnosticLogsClusterRetrieveLogsRequestParams) where
  toMTRDiagnosticLogsClusterRetrieveLogsRequestParams = unsafeCastId

instance IsNSObject (Id MTRDiagnosticLogsClusterRetrieveLogsRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDiagnosticLogsClusterRetrieveLogsResponseParams ----------

-- | Phantom type for @MTRDiagnosticLogsClusterRetrieveLogsResponseParams@.
data MTRDiagnosticLogsClusterRetrieveLogsResponseParams

instance IsObjCObject (Id MTRDiagnosticLogsClusterRetrieveLogsResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDiagnosticLogsClusterRetrieveLogsResponseParams"

class IsNSObject a => IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams a where
  toMTRDiagnosticLogsClusterRetrieveLogsResponseParams :: a -> Id MTRDiagnosticLogsClusterRetrieveLogsResponseParams

instance IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams (Id MTRDiagnosticLogsClusterRetrieveLogsResponseParams) where
  toMTRDiagnosticLogsClusterRetrieveLogsResponseParams = unsafeCastId

instance IsNSObject (Id MTRDiagnosticLogsClusterRetrieveLogsResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterClearCredentialParams ----------

-- | Phantom type for @MTRDoorLockClusterClearCredentialParams@.
data MTRDoorLockClusterClearCredentialParams

instance IsObjCObject (Id MTRDoorLockClusterClearCredentialParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterClearCredentialParams"

class IsNSObject a => IsMTRDoorLockClusterClearCredentialParams a where
  toMTRDoorLockClusterClearCredentialParams :: a -> Id MTRDoorLockClusterClearCredentialParams

instance IsMTRDoorLockClusterClearCredentialParams (Id MTRDoorLockClusterClearCredentialParams) where
  toMTRDoorLockClusterClearCredentialParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterClearCredentialParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterClearHolidayScheduleParams ----------

-- | Phantom type for @MTRDoorLockClusterClearHolidayScheduleParams@.
data MTRDoorLockClusterClearHolidayScheduleParams

instance IsObjCObject (Id MTRDoorLockClusterClearHolidayScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterClearHolidayScheduleParams"

class IsNSObject a => IsMTRDoorLockClusterClearHolidayScheduleParams a where
  toMTRDoorLockClusterClearHolidayScheduleParams :: a -> Id MTRDoorLockClusterClearHolidayScheduleParams

instance IsMTRDoorLockClusterClearHolidayScheduleParams (Id MTRDoorLockClusterClearHolidayScheduleParams) where
  toMTRDoorLockClusterClearHolidayScheduleParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterClearHolidayScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterClearUserParams ----------

-- | Phantom type for @MTRDoorLockClusterClearUserParams@.
data MTRDoorLockClusterClearUserParams

instance IsObjCObject (Id MTRDoorLockClusterClearUserParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterClearUserParams"

class IsNSObject a => IsMTRDoorLockClusterClearUserParams a where
  toMTRDoorLockClusterClearUserParams :: a -> Id MTRDoorLockClusterClearUserParams

instance IsMTRDoorLockClusterClearUserParams (Id MTRDoorLockClusterClearUserParams) where
  toMTRDoorLockClusterClearUserParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterClearUserParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterClearWeekDayScheduleParams ----------

-- | Phantom type for @MTRDoorLockClusterClearWeekDayScheduleParams@.
data MTRDoorLockClusterClearWeekDayScheduleParams

instance IsObjCObject (Id MTRDoorLockClusterClearWeekDayScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterClearWeekDayScheduleParams"

class IsNSObject a => IsMTRDoorLockClusterClearWeekDayScheduleParams a where
  toMTRDoorLockClusterClearWeekDayScheduleParams :: a -> Id MTRDoorLockClusterClearWeekDayScheduleParams

instance IsMTRDoorLockClusterClearWeekDayScheduleParams (Id MTRDoorLockClusterClearWeekDayScheduleParams) where
  toMTRDoorLockClusterClearWeekDayScheduleParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterClearWeekDayScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterClearYearDayScheduleParams ----------

-- | Phantom type for @MTRDoorLockClusterClearYearDayScheduleParams@.
data MTRDoorLockClusterClearYearDayScheduleParams

instance IsObjCObject (Id MTRDoorLockClusterClearYearDayScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterClearYearDayScheduleParams"

class IsNSObject a => IsMTRDoorLockClusterClearYearDayScheduleParams a where
  toMTRDoorLockClusterClearYearDayScheduleParams :: a -> Id MTRDoorLockClusterClearYearDayScheduleParams

instance IsMTRDoorLockClusterClearYearDayScheduleParams (Id MTRDoorLockClusterClearYearDayScheduleParams) where
  toMTRDoorLockClusterClearYearDayScheduleParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterClearYearDayScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterDlCredential ----------

-- | Phantom type for @MTRDoorLockClusterDlCredential@.
data MTRDoorLockClusterDlCredential

instance IsObjCObject (Id MTRDoorLockClusterDlCredential) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterDlCredential"

class IsNSObject a => IsMTRDoorLockClusterDlCredential a where
  toMTRDoorLockClusterDlCredential :: a -> Id MTRDoorLockClusterDlCredential

instance IsMTRDoorLockClusterDlCredential (Id MTRDoorLockClusterDlCredential) where
  toMTRDoorLockClusterDlCredential = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterDlCredential) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterDoorLockAlarmEvent ----------

-- | Phantom type for @MTRDoorLockClusterDoorLockAlarmEvent@.
data MTRDoorLockClusterDoorLockAlarmEvent

instance IsObjCObject (Id MTRDoorLockClusterDoorLockAlarmEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterDoorLockAlarmEvent"

class IsNSObject a => IsMTRDoorLockClusterDoorLockAlarmEvent a where
  toMTRDoorLockClusterDoorLockAlarmEvent :: a -> Id MTRDoorLockClusterDoorLockAlarmEvent

instance IsMTRDoorLockClusterDoorLockAlarmEvent (Id MTRDoorLockClusterDoorLockAlarmEvent) where
  toMTRDoorLockClusterDoorLockAlarmEvent = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterDoorLockAlarmEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterDoorStateChangeEvent ----------

-- | Phantom type for @MTRDoorLockClusterDoorStateChangeEvent@.
data MTRDoorLockClusterDoorStateChangeEvent

instance IsObjCObject (Id MTRDoorLockClusterDoorStateChangeEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterDoorStateChangeEvent"

class IsNSObject a => IsMTRDoorLockClusterDoorStateChangeEvent a where
  toMTRDoorLockClusterDoorStateChangeEvent :: a -> Id MTRDoorLockClusterDoorStateChangeEvent

instance IsMTRDoorLockClusterDoorStateChangeEvent (Id MTRDoorLockClusterDoorStateChangeEvent) where
  toMTRDoorLockClusterDoorStateChangeEvent = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterDoorStateChangeEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterGetCredentialStatusParams ----------

-- | Phantom type for @MTRDoorLockClusterGetCredentialStatusParams@.
data MTRDoorLockClusterGetCredentialStatusParams

instance IsObjCObject (Id MTRDoorLockClusterGetCredentialStatusParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterGetCredentialStatusParams"

class IsNSObject a => IsMTRDoorLockClusterGetCredentialStatusParams a where
  toMTRDoorLockClusterGetCredentialStatusParams :: a -> Id MTRDoorLockClusterGetCredentialStatusParams

instance IsMTRDoorLockClusterGetCredentialStatusParams (Id MTRDoorLockClusterGetCredentialStatusParams) where
  toMTRDoorLockClusterGetCredentialStatusParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterGetCredentialStatusParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterGetCredentialStatusResponseParams ----------

-- | Phantom type for @MTRDoorLockClusterGetCredentialStatusResponseParams@.
data MTRDoorLockClusterGetCredentialStatusResponseParams

instance IsObjCObject (Id MTRDoorLockClusterGetCredentialStatusResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterGetCredentialStatusResponseParams"

class IsNSObject a => IsMTRDoorLockClusterGetCredentialStatusResponseParams a where
  toMTRDoorLockClusterGetCredentialStatusResponseParams :: a -> Id MTRDoorLockClusterGetCredentialStatusResponseParams

instance IsMTRDoorLockClusterGetCredentialStatusResponseParams (Id MTRDoorLockClusterGetCredentialStatusResponseParams) where
  toMTRDoorLockClusterGetCredentialStatusResponseParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterGetCredentialStatusResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterGetHolidayScheduleParams ----------

-- | Phantom type for @MTRDoorLockClusterGetHolidayScheduleParams@.
data MTRDoorLockClusterGetHolidayScheduleParams

instance IsObjCObject (Id MTRDoorLockClusterGetHolidayScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterGetHolidayScheduleParams"

class IsNSObject a => IsMTRDoorLockClusterGetHolidayScheduleParams a where
  toMTRDoorLockClusterGetHolidayScheduleParams :: a -> Id MTRDoorLockClusterGetHolidayScheduleParams

instance IsMTRDoorLockClusterGetHolidayScheduleParams (Id MTRDoorLockClusterGetHolidayScheduleParams) where
  toMTRDoorLockClusterGetHolidayScheduleParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterGetHolidayScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterGetHolidayScheduleResponseParams ----------

-- | Phantom type for @MTRDoorLockClusterGetHolidayScheduleResponseParams@.
data MTRDoorLockClusterGetHolidayScheduleResponseParams

instance IsObjCObject (Id MTRDoorLockClusterGetHolidayScheduleResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterGetHolidayScheduleResponseParams"

class IsNSObject a => IsMTRDoorLockClusterGetHolidayScheduleResponseParams a where
  toMTRDoorLockClusterGetHolidayScheduleResponseParams :: a -> Id MTRDoorLockClusterGetHolidayScheduleResponseParams

instance IsMTRDoorLockClusterGetHolidayScheduleResponseParams (Id MTRDoorLockClusterGetHolidayScheduleResponseParams) where
  toMTRDoorLockClusterGetHolidayScheduleResponseParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterGetHolidayScheduleResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterGetUserParams ----------

-- | Phantom type for @MTRDoorLockClusterGetUserParams@.
data MTRDoorLockClusterGetUserParams

instance IsObjCObject (Id MTRDoorLockClusterGetUserParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterGetUserParams"

class IsNSObject a => IsMTRDoorLockClusterGetUserParams a where
  toMTRDoorLockClusterGetUserParams :: a -> Id MTRDoorLockClusterGetUserParams

instance IsMTRDoorLockClusterGetUserParams (Id MTRDoorLockClusterGetUserParams) where
  toMTRDoorLockClusterGetUserParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterGetUserParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterGetUserResponseParams ----------

-- | Phantom type for @MTRDoorLockClusterGetUserResponseParams@.
data MTRDoorLockClusterGetUserResponseParams

instance IsObjCObject (Id MTRDoorLockClusterGetUserResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterGetUserResponseParams"

class IsNSObject a => IsMTRDoorLockClusterGetUserResponseParams a where
  toMTRDoorLockClusterGetUserResponseParams :: a -> Id MTRDoorLockClusterGetUserResponseParams

instance IsMTRDoorLockClusterGetUserResponseParams (Id MTRDoorLockClusterGetUserResponseParams) where
  toMTRDoorLockClusterGetUserResponseParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterGetUserResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterGetWeekDayScheduleParams ----------

-- | Phantom type for @MTRDoorLockClusterGetWeekDayScheduleParams@.
data MTRDoorLockClusterGetWeekDayScheduleParams

instance IsObjCObject (Id MTRDoorLockClusterGetWeekDayScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterGetWeekDayScheduleParams"

class IsNSObject a => IsMTRDoorLockClusterGetWeekDayScheduleParams a where
  toMTRDoorLockClusterGetWeekDayScheduleParams :: a -> Id MTRDoorLockClusterGetWeekDayScheduleParams

instance IsMTRDoorLockClusterGetWeekDayScheduleParams (Id MTRDoorLockClusterGetWeekDayScheduleParams) where
  toMTRDoorLockClusterGetWeekDayScheduleParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterGetWeekDayScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterGetWeekDayScheduleResponseParams ----------

-- | Phantom type for @MTRDoorLockClusterGetWeekDayScheduleResponseParams@.
data MTRDoorLockClusterGetWeekDayScheduleResponseParams

instance IsObjCObject (Id MTRDoorLockClusterGetWeekDayScheduleResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterGetWeekDayScheduleResponseParams"

class IsNSObject a => IsMTRDoorLockClusterGetWeekDayScheduleResponseParams a where
  toMTRDoorLockClusterGetWeekDayScheduleResponseParams :: a -> Id MTRDoorLockClusterGetWeekDayScheduleResponseParams

instance IsMTRDoorLockClusterGetWeekDayScheduleResponseParams (Id MTRDoorLockClusterGetWeekDayScheduleResponseParams) where
  toMTRDoorLockClusterGetWeekDayScheduleResponseParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterGetWeekDayScheduleResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterGetYearDayScheduleParams ----------

-- | Phantom type for @MTRDoorLockClusterGetYearDayScheduleParams@.
data MTRDoorLockClusterGetYearDayScheduleParams

instance IsObjCObject (Id MTRDoorLockClusterGetYearDayScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterGetYearDayScheduleParams"

class IsNSObject a => IsMTRDoorLockClusterGetYearDayScheduleParams a where
  toMTRDoorLockClusterGetYearDayScheduleParams :: a -> Id MTRDoorLockClusterGetYearDayScheduleParams

instance IsMTRDoorLockClusterGetYearDayScheduleParams (Id MTRDoorLockClusterGetYearDayScheduleParams) where
  toMTRDoorLockClusterGetYearDayScheduleParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterGetYearDayScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterGetYearDayScheduleResponseParams ----------

-- | Phantom type for @MTRDoorLockClusterGetYearDayScheduleResponseParams@.
data MTRDoorLockClusterGetYearDayScheduleResponseParams

instance IsObjCObject (Id MTRDoorLockClusterGetYearDayScheduleResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterGetYearDayScheduleResponseParams"

class IsNSObject a => IsMTRDoorLockClusterGetYearDayScheduleResponseParams a where
  toMTRDoorLockClusterGetYearDayScheduleResponseParams :: a -> Id MTRDoorLockClusterGetYearDayScheduleResponseParams

instance IsMTRDoorLockClusterGetYearDayScheduleResponseParams (Id MTRDoorLockClusterGetYearDayScheduleResponseParams) where
  toMTRDoorLockClusterGetYearDayScheduleResponseParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterGetYearDayScheduleResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterLockDoorParams ----------

-- | Phantom type for @MTRDoorLockClusterLockDoorParams@.
data MTRDoorLockClusterLockDoorParams

instance IsObjCObject (Id MTRDoorLockClusterLockDoorParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterLockDoorParams"

class IsNSObject a => IsMTRDoorLockClusterLockDoorParams a where
  toMTRDoorLockClusterLockDoorParams :: a -> Id MTRDoorLockClusterLockDoorParams

instance IsMTRDoorLockClusterLockDoorParams (Id MTRDoorLockClusterLockDoorParams) where
  toMTRDoorLockClusterLockDoorParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterLockDoorParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterLockOperationErrorEvent ----------

-- | Phantom type for @MTRDoorLockClusterLockOperationErrorEvent@.
data MTRDoorLockClusterLockOperationErrorEvent

instance IsObjCObject (Id MTRDoorLockClusterLockOperationErrorEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterLockOperationErrorEvent"

class IsNSObject a => IsMTRDoorLockClusterLockOperationErrorEvent a where
  toMTRDoorLockClusterLockOperationErrorEvent :: a -> Id MTRDoorLockClusterLockOperationErrorEvent

instance IsMTRDoorLockClusterLockOperationErrorEvent (Id MTRDoorLockClusterLockOperationErrorEvent) where
  toMTRDoorLockClusterLockOperationErrorEvent = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterLockOperationErrorEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterLockOperationEvent ----------

-- | Phantom type for @MTRDoorLockClusterLockOperationEvent@.
data MTRDoorLockClusterLockOperationEvent

instance IsObjCObject (Id MTRDoorLockClusterLockOperationEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterLockOperationEvent"

class IsNSObject a => IsMTRDoorLockClusterLockOperationEvent a where
  toMTRDoorLockClusterLockOperationEvent :: a -> Id MTRDoorLockClusterLockOperationEvent

instance IsMTRDoorLockClusterLockOperationEvent (Id MTRDoorLockClusterLockOperationEvent) where
  toMTRDoorLockClusterLockOperationEvent = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterLockOperationEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterLockUserChangeEvent ----------

-- | Phantom type for @MTRDoorLockClusterLockUserChangeEvent@.
data MTRDoorLockClusterLockUserChangeEvent

instance IsObjCObject (Id MTRDoorLockClusterLockUserChangeEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterLockUserChangeEvent"

class IsNSObject a => IsMTRDoorLockClusterLockUserChangeEvent a where
  toMTRDoorLockClusterLockUserChangeEvent :: a -> Id MTRDoorLockClusterLockUserChangeEvent

instance IsMTRDoorLockClusterLockUserChangeEvent (Id MTRDoorLockClusterLockUserChangeEvent) where
  toMTRDoorLockClusterLockUserChangeEvent = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterLockUserChangeEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterSetCredentialParams ----------

-- | Phantom type for @MTRDoorLockClusterSetCredentialParams@.
data MTRDoorLockClusterSetCredentialParams

instance IsObjCObject (Id MTRDoorLockClusterSetCredentialParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterSetCredentialParams"

class IsNSObject a => IsMTRDoorLockClusterSetCredentialParams a where
  toMTRDoorLockClusterSetCredentialParams :: a -> Id MTRDoorLockClusterSetCredentialParams

instance IsMTRDoorLockClusterSetCredentialParams (Id MTRDoorLockClusterSetCredentialParams) where
  toMTRDoorLockClusterSetCredentialParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterSetCredentialParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterSetCredentialResponseParams ----------

-- | Phantom type for @MTRDoorLockClusterSetCredentialResponseParams@.
data MTRDoorLockClusterSetCredentialResponseParams

instance IsObjCObject (Id MTRDoorLockClusterSetCredentialResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterSetCredentialResponseParams"

class IsNSObject a => IsMTRDoorLockClusterSetCredentialResponseParams a where
  toMTRDoorLockClusterSetCredentialResponseParams :: a -> Id MTRDoorLockClusterSetCredentialResponseParams

instance IsMTRDoorLockClusterSetCredentialResponseParams (Id MTRDoorLockClusterSetCredentialResponseParams) where
  toMTRDoorLockClusterSetCredentialResponseParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterSetCredentialResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterSetHolidayScheduleParams ----------

-- | Phantom type for @MTRDoorLockClusterSetHolidayScheduleParams@.
data MTRDoorLockClusterSetHolidayScheduleParams

instance IsObjCObject (Id MTRDoorLockClusterSetHolidayScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterSetHolidayScheduleParams"

class IsNSObject a => IsMTRDoorLockClusterSetHolidayScheduleParams a where
  toMTRDoorLockClusterSetHolidayScheduleParams :: a -> Id MTRDoorLockClusterSetHolidayScheduleParams

instance IsMTRDoorLockClusterSetHolidayScheduleParams (Id MTRDoorLockClusterSetHolidayScheduleParams) where
  toMTRDoorLockClusterSetHolidayScheduleParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterSetHolidayScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterSetUserParams ----------

-- | Phantom type for @MTRDoorLockClusterSetUserParams@.
data MTRDoorLockClusterSetUserParams

instance IsObjCObject (Id MTRDoorLockClusterSetUserParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterSetUserParams"

class IsNSObject a => IsMTRDoorLockClusterSetUserParams a where
  toMTRDoorLockClusterSetUserParams :: a -> Id MTRDoorLockClusterSetUserParams

instance IsMTRDoorLockClusterSetUserParams (Id MTRDoorLockClusterSetUserParams) where
  toMTRDoorLockClusterSetUserParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterSetUserParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterSetWeekDayScheduleParams ----------

-- | Phantom type for @MTRDoorLockClusterSetWeekDayScheduleParams@.
data MTRDoorLockClusterSetWeekDayScheduleParams

instance IsObjCObject (Id MTRDoorLockClusterSetWeekDayScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterSetWeekDayScheduleParams"

class IsNSObject a => IsMTRDoorLockClusterSetWeekDayScheduleParams a where
  toMTRDoorLockClusterSetWeekDayScheduleParams :: a -> Id MTRDoorLockClusterSetWeekDayScheduleParams

instance IsMTRDoorLockClusterSetWeekDayScheduleParams (Id MTRDoorLockClusterSetWeekDayScheduleParams) where
  toMTRDoorLockClusterSetWeekDayScheduleParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterSetWeekDayScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterSetYearDayScheduleParams ----------

-- | Phantom type for @MTRDoorLockClusterSetYearDayScheduleParams@.
data MTRDoorLockClusterSetYearDayScheduleParams

instance IsObjCObject (Id MTRDoorLockClusterSetYearDayScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterSetYearDayScheduleParams"

class IsNSObject a => IsMTRDoorLockClusterSetYearDayScheduleParams a where
  toMTRDoorLockClusterSetYearDayScheduleParams :: a -> Id MTRDoorLockClusterSetYearDayScheduleParams

instance IsMTRDoorLockClusterSetYearDayScheduleParams (Id MTRDoorLockClusterSetYearDayScheduleParams) where
  toMTRDoorLockClusterSetYearDayScheduleParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterSetYearDayScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterUnlockDoorParams ----------

-- | Phantom type for @MTRDoorLockClusterUnlockDoorParams@.
data MTRDoorLockClusterUnlockDoorParams

instance IsObjCObject (Id MTRDoorLockClusterUnlockDoorParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterUnlockDoorParams"

class IsNSObject a => IsMTRDoorLockClusterUnlockDoorParams a where
  toMTRDoorLockClusterUnlockDoorParams :: a -> Id MTRDoorLockClusterUnlockDoorParams

instance IsMTRDoorLockClusterUnlockDoorParams (Id MTRDoorLockClusterUnlockDoorParams) where
  toMTRDoorLockClusterUnlockDoorParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterUnlockDoorParams) where
  toNSObject = unsafeCastId

-- ---------- MTRDoorLockClusterUnlockWithTimeoutParams ----------

-- | Phantom type for @MTRDoorLockClusterUnlockWithTimeoutParams@.
data MTRDoorLockClusterUnlockWithTimeoutParams

instance IsObjCObject (Id MTRDoorLockClusterUnlockWithTimeoutParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRDoorLockClusterUnlockWithTimeoutParams"

class IsNSObject a => IsMTRDoorLockClusterUnlockWithTimeoutParams a where
  toMTRDoorLockClusterUnlockWithTimeoutParams :: a -> Id MTRDoorLockClusterUnlockWithTimeoutParams

instance IsMTRDoorLockClusterUnlockWithTimeoutParams (Id MTRDoorLockClusterUnlockWithTimeoutParams) where
  toMTRDoorLockClusterUnlockWithTimeoutParams = unsafeCastId

instance IsNSObject (Id MTRDoorLockClusterUnlockWithTimeoutParams) where
  toNSObject = unsafeCastId

-- ---------- MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams ----------

-- | Phantom type for @MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams@.
data MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams

instance IsObjCObject (Id MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams"

class IsNSObject a => IsMTRElectricalMeasurementClusterGetMeasurementProfileCommandParams a where
  toMTRElectricalMeasurementClusterGetMeasurementProfileCommandParams :: a -> Id MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams

instance IsMTRElectricalMeasurementClusterGetMeasurementProfileCommandParams (Id MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams) where
  toMTRElectricalMeasurementClusterGetMeasurementProfileCommandParams = unsafeCastId

instance IsNSObject (Id MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams) where
  toNSObject = unsafeCastId

-- ---------- MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams ----------

-- | Phantom type for @MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams@.
data MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams

instance IsObjCObject (Id MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams"

class IsNSObject a => IsMTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams a where
  toMTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams :: a -> Id MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams

instance IsMTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams (Id MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams) where
  toMTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams = unsafeCastId

instance IsNSObject (Id MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams) where
  toNSObject = unsafeCastId

-- ---------- MTRElectricalMeasurementClusterGetProfileInfoCommandParams ----------

-- | Phantom type for @MTRElectricalMeasurementClusterGetProfileInfoCommandParams@.
data MTRElectricalMeasurementClusterGetProfileInfoCommandParams

instance IsObjCObject (Id MTRElectricalMeasurementClusterGetProfileInfoCommandParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRElectricalMeasurementClusterGetProfileInfoCommandParams"

class IsNSObject a => IsMTRElectricalMeasurementClusterGetProfileInfoCommandParams a where
  toMTRElectricalMeasurementClusterGetProfileInfoCommandParams :: a -> Id MTRElectricalMeasurementClusterGetProfileInfoCommandParams

instance IsMTRElectricalMeasurementClusterGetProfileInfoCommandParams (Id MTRElectricalMeasurementClusterGetProfileInfoCommandParams) where
  toMTRElectricalMeasurementClusterGetProfileInfoCommandParams = unsafeCastId

instance IsNSObject (Id MTRElectricalMeasurementClusterGetProfileInfoCommandParams) where
  toNSObject = unsafeCastId

-- ---------- MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams ----------

-- | Phantom type for @MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams@.
data MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams

instance IsObjCObject (Id MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams"

class IsNSObject a => IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams a where
  toMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams :: a -> Id MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams

instance IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams (Id MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams) where
  toMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams = unsafeCastId

instance IsNSObject (Id MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams) where
  toNSObject = unsafeCastId

-- ---------- MTREthernetNetworkDiagnosticsClusterResetCountsParams ----------

-- | Phantom type for @MTREthernetNetworkDiagnosticsClusterResetCountsParams@.
data MTREthernetNetworkDiagnosticsClusterResetCountsParams

instance IsObjCObject (Id MTREthernetNetworkDiagnosticsClusterResetCountsParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTREthernetNetworkDiagnosticsClusterResetCountsParams"

class IsNSObject a => IsMTREthernetNetworkDiagnosticsClusterResetCountsParams a where
  toMTREthernetNetworkDiagnosticsClusterResetCountsParams :: a -> Id MTREthernetNetworkDiagnosticsClusterResetCountsParams

instance IsMTREthernetNetworkDiagnosticsClusterResetCountsParams (Id MTREthernetNetworkDiagnosticsClusterResetCountsParams) where
  toMTREthernetNetworkDiagnosticsClusterResetCountsParams = unsafeCastId

instance IsNSObject (Id MTREthernetNetworkDiagnosticsClusterResetCountsParams) where
  toNSObject = unsafeCastId

-- ---------- MTREventPath ----------

-- | Phantom type for @MTREventPath@.
data MTREventPath

instance IsObjCObject (Id MTREventPath) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTREventPath"

class IsNSObject a => IsMTREventPath a where
  toMTREventPath :: a -> Id MTREventPath

instance IsMTREventPath (Id MTREventPath) where
  toMTREventPath = unsafeCastId

instance IsNSObject (Id MTREventPath) where
  toNSObject = unsafeCastId

-- ---------- MTREventReport ----------

-- | Phantom type for @MTREventReport@.
data MTREventReport

instance IsObjCObject (Id MTREventReport) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTREventReport"

class IsNSObject a => IsMTREventReport a where
  toMTREventReport :: a -> Id MTREventReport

instance IsMTREventReport (Id MTREventReport) where
  toMTREventReport = unsafeCastId

instance IsNSObject (Id MTREventReport) where
  toNSObject = unsafeCastId

-- ---------- MTRFaultInjectionClusterFailAtFaultParams ----------

-- | Phantom type for @MTRFaultInjectionClusterFailAtFaultParams@.
data MTRFaultInjectionClusterFailAtFaultParams

instance IsObjCObject (Id MTRFaultInjectionClusterFailAtFaultParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRFaultInjectionClusterFailAtFaultParams"

class IsNSObject a => IsMTRFaultInjectionClusterFailAtFaultParams a where
  toMTRFaultInjectionClusterFailAtFaultParams :: a -> Id MTRFaultInjectionClusterFailAtFaultParams

instance IsMTRFaultInjectionClusterFailAtFaultParams (Id MTRFaultInjectionClusterFailAtFaultParams) where
  toMTRFaultInjectionClusterFailAtFaultParams = unsafeCastId

instance IsNSObject (Id MTRFaultInjectionClusterFailAtFaultParams) where
  toNSObject = unsafeCastId

-- ---------- MTRFaultInjectionClusterFailRandomlyAtFaultParams ----------

-- | Phantom type for @MTRFaultInjectionClusterFailRandomlyAtFaultParams@.
data MTRFaultInjectionClusterFailRandomlyAtFaultParams

instance IsObjCObject (Id MTRFaultInjectionClusterFailRandomlyAtFaultParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRFaultInjectionClusterFailRandomlyAtFaultParams"

class IsNSObject a => IsMTRFaultInjectionClusterFailRandomlyAtFaultParams a where
  toMTRFaultInjectionClusterFailRandomlyAtFaultParams :: a -> Id MTRFaultInjectionClusterFailRandomlyAtFaultParams

instance IsMTRFaultInjectionClusterFailRandomlyAtFaultParams (Id MTRFaultInjectionClusterFailRandomlyAtFaultParams) where
  toMTRFaultInjectionClusterFailRandomlyAtFaultParams = unsafeCastId

instance IsNSObject (Id MTRFaultInjectionClusterFailRandomlyAtFaultParams) where
  toNSObject = unsafeCastId

-- ---------- MTRFixedLabelClusterLabelStruct ----------

-- | Phantom type for @MTRFixedLabelClusterLabelStruct@.
data MTRFixedLabelClusterLabelStruct

instance IsObjCObject (Id MTRFixedLabelClusterLabelStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRFixedLabelClusterLabelStruct"

class IsNSObject a => IsMTRFixedLabelClusterLabelStruct a where
  toMTRFixedLabelClusterLabelStruct :: a -> Id MTRFixedLabelClusterLabelStruct

instance IsMTRFixedLabelClusterLabelStruct (Id MTRFixedLabelClusterLabelStruct) where
  toMTRFixedLabelClusterLabelStruct = unsafeCastId

instance IsNSObject (Id MTRFixedLabelClusterLabelStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralCommissioningClusterArmFailSafeParams ----------

-- | Phantom type for @MTRGeneralCommissioningClusterArmFailSafeParams@.
data MTRGeneralCommissioningClusterArmFailSafeParams

instance IsObjCObject (Id MTRGeneralCommissioningClusterArmFailSafeParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralCommissioningClusterArmFailSafeParams"

class IsNSObject a => IsMTRGeneralCommissioningClusterArmFailSafeParams a where
  toMTRGeneralCommissioningClusterArmFailSafeParams :: a -> Id MTRGeneralCommissioningClusterArmFailSafeParams

instance IsMTRGeneralCommissioningClusterArmFailSafeParams (Id MTRGeneralCommissioningClusterArmFailSafeParams) where
  toMTRGeneralCommissioningClusterArmFailSafeParams = unsafeCastId

instance IsNSObject (Id MTRGeneralCommissioningClusterArmFailSafeParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralCommissioningClusterArmFailSafeResponseParams ----------

-- | Phantom type for @MTRGeneralCommissioningClusterArmFailSafeResponseParams@.
data MTRGeneralCommissioningClusterArmFailSafeResponseParams

instance IsObjCObject (Id MTRGeneralCommissioningClusterArmFailSafeResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralCommissioningClusterArmFailSafeResponseParams"

class IsNSObject a => IsMTRGeneralCommissioningClusterArmFailSafeResponseParams a where
  toMTRGeneralCommissioningClusterArmFailSafeResponseParams :: a -> Id MTRGeneralCommissioningClusterArmFailSafeResponseParams

instance IsMTRGeneralCommissioningClusterArmFailSafeResponseParams (Id MTRGeneralCommissioningClusterArmFailSafeResponseParams) where
  toMTRGeneralCommissioningClusterArmFailSafeResponseParams = unsafeCastId

instance IsNSObject (Id MTRGeneralCommissioningClusterArmFailSafeResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralCommissioningClusterBasicCommissioningInfo ----------

-- | Phantom type for @MTRGeneralCommissioningClusterBasicCommissioningInfo@.
data MTRGeneralCommissioningClusterBasicCommissioningInfo

instance IsObjCObject (Id MTRGeneralCommissioningClusterBasicCommissioningInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralCommissioningClusterBasicCommissioningInfo"

class IsNSObject a => IsMTRGeneralCommissioningClusterBasicCommissioningInfo a where
  toMTRGeneralCommissioningClusterBasicCommissioningInfo :: a -> Id MTRGeneralCommissioningClusterBasicCommissioningInfo

instance IsMTRGeneralCommissioningClusterBasicCommissioningInfo (Id MTRGeneralCommissioningClusterBasicCommissioningInfo) where
  toMTRGeneralCommissioningClusterBasicCommissioningInfo = unsafeCastId

instance IsNSObject (Id MTRGeneralCommissioningClusterBasicCommissioningInfo) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralCommissioningClusterCommissioningCompleteParams ----------

-- | Phantom type for @MTRGeneralCommissioningClusterCommissioningCompleteParams@.
data MTRGeneralCommissioningClusterCommissioningCompleteParams

instance IsObjCObject (Id MTRGeneralCommissioningClusterCommissioningCompleteParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralCommissioningClusterCommissioningCompleteParams"

class IsNSObject a => IsMTRGeneralCommissioningClusterCommissioningCompleteParams a where
  toMTRGeneralCommissioningClusterCommissioningCompleteParams :: a -> Id MTRGeneralCommissioningClusterCommissioningCompleteParams

instance IsMTRGeneralCommissioningClusterCommissioningCompleteParams (Id MTRGeneralCommissioningClusterCommissioningCompleteParams) where
  toMTRGeneralCommissioningClusterCommissioningCompleteParams = unsafeCastId

instance IsNSObject (Id MTRGeneralCommissioningClusterCommissioningCompleteParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralCommissioningClusterCommissioningCompleteResponseParams ----------

-- | Phantom type for @MTRGeneralCommissioningClusterCommissioningCompleteResponseParams@.
data MTRGeneralCommissioningClusterCommissioningCompleteResponseParams

instance IsObjCObject (Id MTRGeneralCommissioningClusterCommissioningCompleteResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralCommissioningClusterCommissioningCompleteResponseParams"

class IsNSObject a => IsMTRGeneralCommissioningClusterCommissioningCompleteResponseParams a where
  toMTRGeneralCommissioningClusterCommissioningCompleteResponseParams :: a -> Id MTRGeneralCommissioningClusterCommissioningCompleteResponseParams

instance IsMTRGeneralCommissioningClusterCommissioningCompleteResponseParams (Id MTRGeneralCommissioningClusterCommissioningCompleteResponseParams) where
  toMTRGeneralCommissioningClusterCommissioningCompleteResponseParams = unsafeCastId

instance IsNSObject (Id MTRGeneralCommissioningClusterCommissioningCompleteResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralCommissioningClusterSetRegulatoryConfigParams ----------

-- | Phantom type for @MTRGeneralCommissioningClusterSetRegulatoryConfigParams@.
data MTRGeneralCommissioningClusterSetRegulatoryConfigParams

instance IsObjCObject (Id MTRGeneralCommissioningClusterSetRegulatoryConfigParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralCommissioningClusterSetRegulatoryConfigParams"

class IsNSObject a => IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams a where
  toMTRGeneralCommissioningClusterSetRegulatoryConfigParams :: a -> Id MTRGeneralCommissioningClusterSetRegulatoryConfigParams

instance IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams (Id MTRGeneralCommissioningClusterSetRegulatoryConfigParams) where
  toMTRGeneralCommissioningClusterSetRegulatoryConfigParams = unsafeCastId

instance IsNSObject (Id MTRGeneralCommissioningClusterSetRegulatoryConfigParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams ----------

-- | Phantom type for @MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams@.
data MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams

instance IsObjCObject (Id MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams"

class IsNSObject a => IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams a where
  toMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams :: a -> Id MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams

instance IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams (Id MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams) where
  toMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams = unsafeCastId

instance IsNSObject (Id MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralDiagnosticsClusterBootReasonEvent ----------

-- | Phantom type for @MTRGeneralDiagnosticsClusterBootReasonEvent@.
data MTRGeneralDiagnosticsClusterBootReasonEvent

instance IsObjCObject (Id MTRGeneralDiagnosticsClusterBootReasonEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralDiagnosticsClusterBootReasonEvent"

class IsNSObject a => IsMTRGeneralDiagnosticsClusterBootReasonEvent a where
  toMTRGeneralDiagnosticsClusterBootReasonEvent :: a -> Id MTRGeneralDiagnosticsClusterBootReasonEvent

instance IsMTRGeneralDiagnosticsClusterBootReasonEvent (Id MTRGeneralDiagnosticsClusterBootReasonEvent) where
  toMTRGeneralDiagnosticsClusterBootReasonEvent = unsafeCastId

instance IsNSObject (Id MTRGeneralDiagnosticsClusterBootReasonEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent ----------

-- | Phantom type for @MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent@.
data MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent

instance IsObjCObject (Id MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent"

class IsNSObject a => IsMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent a where
  toMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent :: a -> Id MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent

instance IsMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent (Id MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent) where
  toMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent = unsafeCastId

instance IsNSObject (Id MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralDiagnosticsClusterNetworkFaultChangeEvent ----------

-- | Phantom type for @MTRGeneralDiagnosticsClusterNetworkFaultChangeEvent@.
data MTRGeneralDiagnosticsClusterNetworkFaultChangeEvent

instance IsObjCObject (Id MTRGeneralDiagnosticsClusterNetworkFaultChangeEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralDiagnosticsClusterNetworkFaultChangeEvent"

class IsNSObject a => IsMTRGeneralDiagnosticsClusterNetworkFaultChangeEvent a where
  toMTRGeneralDiagnosticsClusterNetworkFaultChangeEvent :: a -> Id MTRGeneralDiagnosticsClusterNetworkFaultChangeEvent

instance IsMTRGeneralDiagnosticsClusterNetworkFaultChangeEvent (Id MTRGeneralDiagnosticsClusterNetworkFaultChangeEvent) where
  toMTRGeneralDiagnosticsClusterNetworkFaultChangeEvent = unsafeCastId

instance IsNSObject (Id MTRGeneralDiagnosticsClusterNetworkFaultChangeEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralDiagnosticsClusterNetworkInterfaceType ----------

-- | Phantom type for @MTRGeneralDiagnosticsClusterNetworkInterfaceType@.
data MTRGeneralDiagnosticsClusterNetworkInterfaceType

instance IsObjCObject (Id MTRGeneralDiagnosticsClusterNetworkInterfaceType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralDiagnosticsClusterNetworkInterfaceType"

class IsNSObject a => IsMTRGeneralDiagnosticsClusterNetworkInterfaceType a where
  toMTRGeneralDiagnosticsClusterNetworkInterfaceType :: a -> Id MTRGeneralDiagnosticsClusterNetworkInterfaceType

instance IsMTRGeneralDiagnosticsClusterNetworkInterfaceType (Id MTRGeneralDiagnosticsClusterNetworkInterfaceType) where
  toMTRGeneralDiagnosticsClusterNetworkInterfaceType = unsafeCastId

instance IsNSObject (Id MTRGeneralDiagnosticsClusterNetworkInterfaceType) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralDiagnosticsClusterRadioFaultChangeEvent ----------

-- | Phantom type for @MTRGeneralDiagnosticsClusterRadioFaultChangeEvent@.
data MTRGeneralDiagnosticsClusterRadioFaultChangeEvent

instance IsObjCObject (Id MTRGeneralDiagnosticsClusterRadioFaultChangeEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralDiagnosticsClusterRadioFaultChangeEvent"

class IsNSObject a => IsMTRGeneralDiagnosticsClusterRadioFaultChangeEvent a where
  toMTRGeneralDiagnosticsClusterRadioFaultChangeEvent :: a -> Id MTRGeneralDiagnosticsClusterRadioFaultChangeEvent

instance IsMTRGeneralDiagnosticsClusterRadioFaultChangeEvent (Id MTRGeneralDiagnosticsClusterRadioFaultChangeEvent) where
  toMTRGeneralDiagnosticsClusterRadioFaultChangeEvent = unsafeCastId

instance IsNSObject (Id MTRGeneralDiagnosticsClusterRadioFaultChangeEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRGeneralDiagnosticsClusterTestEventTriggerParams ----------

-- | Phantom type for @MTRGeneralDiagnosticsClusterTestEventTriggerParams@.
data MTRGeneralDiagnosticsClusterTestEventTriggerParams

instance IsObjCObject (Id MTRGeneralDiagnosticsClusterTestEventTriggerParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGeneralDiagnosticsClusterTestEventTriggerParams"

class IsNSObject a => IsMTRGeneralDiagnosticsClusterTestEventTriggerParams a where
  toMTRGeneralDiagnosticsClusterTestEventTriggerParams :: a -> Id MTRGeneralDiagnosticsClusterTestEventTriggerParams

instance IsMTRGeneralDiagnosticsClusterTestEventTriggerParams (Id MTRGeneralDiagnosticsClusterTestEventTriggerParams) where
  toMTRGeneralDiagnosticsClusterTestEventTriggerParams = unsafeCastId

instance IsNSObject (Id MTRGeneralDiagnosticsClusterTestEventTriggerParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupKeyManagementClusterGroupInfoMapStruct ----------

-- | Phantom type for @MTRGroupKeyManagementClusterGroupInfoMapStruct@.
data MTRGroupKeyManagementClusterGroupInfoMapStruct

instance IsObjCObject (Id MTRGroupKeyManagementClusterGroupInfoMapStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupKeyManagementClusterGroupInfoMapStruct"

class IsNSObject a => IsMTRGroupKeyManagementClusterGroupInfoMapStruct a where
  toMTRGroupKeyManagementClusterGroupInfoMapStruct :: a -> Id MTRGroupKeyManagementClusterGroupInfoMapStruct

instance IsMTRGroupKeyManagementClusterGroupInfoMapStruct (Id MTRGroupKeyManagementClusterGroupInfoMapStruct) where
  toMTRGroupKeyManagementClusterGroupInfoMapStruct = unsafeCastId

instance IsNSObject (Id MTRGroupKeyManagementClusterGroupInfoMapStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupKeyManagementClusterGroupKeyMapStruct ----------

-- | Phantom type for @MTRGroupKeyManagementClusterGroupKeyMapStruct@.
data MTRGroupKeyManagementClusterGroupKeyMapStruct

instance IsObjCObject (Id MTRGroupKeyManagementClusterGroupKeyMapStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupKeyManagementClusterGroupKeyMapStruct"

class IsNSObject a => IsMTRGroupKeyManagementClusterGroupKeyMapStruct a where
  toMTRGroupKeyManagementClusterGroupKeyMapStruct :: a -> Id MTRGroupKeyManagementClusterGroupKeyMapStruct

instance IsMTRGroupKeyManagementClusterGroupKeyMapStruct (Id MTRGroupKeyManagementClusterGroupKeyMapStruct) where
  toMTRGroupKeyManagementClusterGroupKeyMapStruct = unsafeCastId

instance IsNSObject (Id MTRGroupKeyManagementClusterGroupKeyMapStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupKeyManagementClusterGroupKeySetStruct ----------

-- | Phantom type for @MTRGroupKeyManagementClusterGroupKeySetStruct@.
data MTRGroupKeyManagementClusterGroupKeySetStruct

instance IsObjCObject (Id MTRGroupKeyManagementClusterGroupKeySetStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupKeyManagementClusterGroupKeySetStruct"

class IsNSObject a => IsMTRGroupKeyManagementClusterGroupKeySetStruct a where
  toMTRGroupKeyManagementClusterGroupKeySetStruct :: a -> Id MTRGroupKeyManagementClusterGroupKeySetStruct

instance IsMTRGroupKeyManagementClusterGroupKeySetStruct (Id MTRGroupKeyManagementClusterGroupKeySetStruct) where
  toMTRGroupKeyManagementClusterGroupKeySetStruct = unsafeCastId

instance IsNSObject (Id MTRGroupKeyManagementClusterGroupKeySetStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupKeyManagementClusterKeySetReadAllIndicesParams ----------

-- | Phantom type for @MTRGroupKeyManagementClusterKeySetReadAllIndicesParams@.
data MTRGroupKeyManagementClusterKeySetReadAllIndicesParams

instance IsObjCObject (Id MTRGroupKeyManagementClusterKeySetReadAllIndicesParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupKeyManagementClusterKeySetReadAllIndicesParams"

class IsNSObject a => IsMTRGroupKeyManagementClusterKeySetReadAllIndicesParams a where
  toMTRGroupKeyManagementClusterKeySetReadAllIndicesParams :: a -> Id MTRGroupKeyManagementClusterKeySetReadAllIndicesParams

instance IsMTRGroupKeyManagementClusterKeySetReadAllIndicesParams (Id MTRGroupKeyManagementClusterKeySetReadAllIndicesParams) where
  toMTRGroupKeyManagementClusterKeySetReadAllIndicesParams = unsafeCastId

instance IsNSObject (Id MTRGroupKeyManagementClusterKeySetReadAllIndicesParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams ----------

-- | Phantom type for @MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams@.
data MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams

instance IsObjCObject (Id MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams"

class IsNSObject a => IsMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams a where
  toMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams :: a -> Id MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams

instance IsMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams (Id MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams) where
  toMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams = unsafeCastId

instance IsNSObject (Id MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupKeyManagementClusterKeySetReadParams ----------

-- | Phantom type for @MTRGroupKeyManagementClusterKeySetReadParams@.
data MTRGroupKeyManagementClusterKeySetReadParams

instance IsObjCObject (Id MTRGroupKeyManagementClusterKeySetReadParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupKeyManagementClusterKeySetReadParams"

class IsNSObject a => IsMTRGroupKeyManagementClusterKeySetReadParams a where
  toMTRGroupKeyManagementClusterKeySetReadParams :: a -> Id MTRGroupKeyManagementClusterKeySetReadParams

instance IsMTRGroupKeyManagementClusterKeySetReadParams (Id MTRGroupKeyManagementClusterKeySetReadParams) where
  toMTRGroupKeyManagementClusterKeySetReadParams = unsafeCastId

instance IsNSObject (Id MTRGroupKeyManagementClusterKeySetReadParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupKeyManagementClusterKeySetReadResponseParams ----------

-- | Phantom type for @MTRGroupKeyManagementClusterKeySetReadResponseParams@.
data MTRGroupKeyManagementClusterKeySetReadResponseParams

instance IsObjCObject (Id MTRGroupKeyManagementClusterKeySetReadResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupKeyManagementClusterKeySetReadResponseParams"

class IsNSObject a => IsMTRGroupKeyManagementClusterKeySetReadResponseParams a where
  toMTRGroupKeyManagementClusterKeySetReadResponseParams :: a -> Id MTRGroupKeyManagementClusterKeySetReadResponseParams

instance IsMTRGroupKeyManagementClusterKeySetReadResponseParams (Id MTRGroupKeyManagementClusterKeySetReadResponseParams) where
  toMTRGroupKeyManagementClusterKeySetReadResponseParams = unsafeCastId

instance IsNSObject (Id MTRGroupKeyManagementClusterKeySetReadResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupKeyManagementClusterKeySetRemoveParams ----------

-- | Phantom type for @MTRGroupKeyManagementClusterKeySetRemoveParams@.
data MTRGroupKeyManagementClusterKeySetRemoveParams

instance IsObjCObject (Id MTRGroupKeyManagementClusterKeySetRemoveParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupKeyManagementClusterKeySetRemoveParams"

class IsNSObject a => IsMTRGroupKeyManagementClusterKeySetRemoveParams a where
  toMTRGroupKeyManagementClusterKeySetRemoveParams :: a -> Id MTRGroupKeyManagementClusterKeySetRemoveParams

instance IsMTRGroupKeyManagementClusterKeySetRemoveParams (Id MTRGroupKeyManagementClusterKeySetRemoveParams) where
  toMTRGroupKeyManagementClusterKeySetRemoveParams = unsafeCastId

instance IsNSObject (Id MTRGroupKeyManagementClusterKeySetRemoveParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupKeyManagementClusterKeySetWriteParams ----------

-- | Phantom type for @MTRGroupKeyManagementClusterKeySetWriteParams@.
data MTRGroupKeyManagementClusterKeySetWriteParams

instance IsObjCObject (Id MTRGroupKeyManagementClusterKeySetWriteParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupKeyManagementClusterKeySetWriteParams"

class IsNSObject a => IsMTRGroupKeyManagementClusterKeySetWriteParams a where
  toMTRGroupKeyManagementClusterKeySetWriteParams :: a -> Id MTRGroupKeyManagementClusterKeySetWriteParams

instance IsMTRGroupKeyManagementClusterKeySetWriteParams (Id MTRGroupKeyManagementClusterKeySetWriteParams) where
  toMTRGroupKeyManagementClusterKeySetWriteParams = unsafeCastId

instance IsNSObject (Id MTRGroupKeyManagementClusterKeySetWriteParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupsClusterAddGroupIfIdentifyingParams ----------

-- | Phantom type for @MTRGroupsClusterAddGroupIfIdentifyingParams@.
data MTRGroupsClusterAddGroupIfIdentifyingParams

instance IsObjCObject (Id MTRGroupsClusterAddGroupIfIdentifyingParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupsClusterAddGroupIfIdentifyingParams"

class IsNSObject a => IsMTRGroupsClusterAddGroupIfIdentifyingParams a where
  toMTRGroupsClusterAddGroupIfIdentifyingParams :: a -> Id MTRGroupsClusterAddGroupIfIdentifyingParams

instance IsMTRGroupsClusterAddGroupIfIdentifyingParams (Id MTRGroupsClusterAddGroupIfIdentifyingParams) where
  toMTRGroupsClusterAddGroupIfIdentifyingParams = unsafeCastId

instance IsNSObject (Id MTRGroupsClusterAddGroupIfIdentifyingParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupsClusterAddGroupParams ----------

-- | Phantom type for @MTRGroupsClusterAddGroupParams@.
data MTRGroupsClusterAddGroupParams

instance IsObjCObject (Id MTRGroupsClusterAddGroupParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupsClusterAddGroupParams"

class IsNSObject a => IsMTRGroupsClusterAddGroupParams a where
  toMTRGroupsClusterAddGroupParams :: a -> Id MTRGroupsClusterAddGroupParams

instance IsMTRGroupsClusterAddGroupParams (Id MTRGroupsClusterAddGroupParams) where
  toMTRGroupsClusterAddGroupParams = unsafeCastId

instance IsNSObject (Id MTRGroupsClusterAddGroupParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupsClusterAddGroupResponseParams ----------

-- | Phantom type for @MTRGroupsClusterAddGroupResponseParams@.
data MTRGroupsClusterAddGroupResponseParams

instance IsObjCObject (Id MTRGroupsClusterAddGroupResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupsClusterAddGroupResponseParams"

class IsNSObject a => IsMTRGroupsClusterAddGroupResponseParams a where
  toMTRGroupsClusterAddGroupResponseParams :: a -> Id MTRGroupsClusterAddGroupResponseParams

instance IsMTRGroupsClusterAddGroupResponseParams (Id MTRGroupsClusterAddGroupResponseParams) where
  toMTRGroupsClusterAddGroupResponseParams = unsafeCastId

instance IsNSObject (Id MTRGroupsClusterAddGroupResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupsClusterGetGroupMembershipParams ----------

-- | Phantom type for @MTRGroupsClusterGetGroupMembershipParams@.
data MTRGroupsClusterGetGroupMembershipParams

instance IsObjCObject (Id MTRGroupsClusterGetGroupMembershipParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupsClusterGetGroupMembershipParams"

class IsNSObject a => IsMTRGroupsClusterGetGroupMembershipParams a where
  toMTRGroupsClusterGetGroupMembershipParams :: a -> Id MTRGroupsClusterGetGroupMembershipParams

instance IsMTRGroupsClusterGetGroupMembershipParams (Id MTRGroupsClusterGetGroupMembershipParams) where
  toMTRGroupsClusterGetGroupMembershipParams = unsafeCastId

instance IsNSObject (Id MTRGroupsClusterGetGroupMembershipParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupsClusterGetGroupMembershipResponseParams ----------

-- | Phantom type for @MTRGroupsClusterGetGroupMembershipResponseParams@.
data MTRGroupsClusterGetGroupMembershipResponseParams

instance IsObjCObject (Id MTRGroupsClusterGetGroupMembershipResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupsClusterGetGroupMembershipResponseParams"

class IsNSObject a => IsMTRGroupsClusterGetGroupMembershipResponseParams a where
  toMTRGroupsClusterGetGroupMembershipResponseParams :: a -> Id MTRGroupsClusterGetGroupMembershipResponseParams

instance IsMTRGroupsClusterGetGroupMembershipResponseParams (Id MTRGroupsClusterGetGroupMembershipResponseParams) where
  toMTRGroupsClusterGetGroupMembershipResponseParams = unsafeCastId

instance IsNSObject (Id MTRGroupsClusterGetGroupMembershipResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupsClusterRemoveAllGroupsParams ----------

-- | Phantom type for @MTRGroupsClusterRemoveAllGroupsParams@.
data MTRGroupsClusterRemoveAllGroupsParams

instance IsObjCObject (Id MTRGroupsClusterRemoveAllGroupsParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupsClusterRemoveAllGroupsParams"

class IsNSObject a => IsMTRGroupsClusterRemoveAllGroupsParams a where
  toMTRGroupsClusterRemoveAllGroupsParams :: a -> Id MTRGroupsClusterRemoveAllGroupsParams

instance IsMTRGroupsClusterRemoveAllGroupsParams (Id MTRGroupsClusterRemoveAllGroupsParams) where
  toMTRGroupsClusterRemoveAllGroupsParams = unsafeCastId

instance IsNSObject (Id MTRGroupsClusterRemoveAllGroupsParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupsClusterRemoveGroupParams ----------

-- | Phantom type for @MTRGroupsClusterRemoveGroupParams@.
data MTRGroupsClusterRemoveGroupParams

instance IsObjCObject (Id MTRGroupsClusterRemoveGroupParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupsClusterRemoveGroupParams"

class IsNSObject a => IsMTRGroupsClusterRemoveGroupParams a where
  toMTRGroupsClusterRemoveGroupParams :: a -> Id MTRGroupsClusterRemoveGroupParams

instance IsMTRGroupsClusterRemoveGroupParams (Id MTRGroupsClusterRemoveGroupParams) where
  toMTRGroupsClusterRemoveGroupParams = unsafeCastId

instance IsNSObject (Id MTRGroupsClusterRemoveGroupParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupsClusterRemoveGroupResponseParams ----------

-- | Phantom type for @MTRGroupsClusterRemoveGroupResponseParams@.
data MTRGroupsClusterRemoveGroupResponseParams

instance IsObjCObject (Id MTRGroupsClusterRemoveGroupResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupsClusterRemoveGroupResponseParams"

class IsNSObject a => IsMTRGroupsClusterRemoveGroupResponseParams a where
  toMTRGroupsClusterRemoveGroupResponseParams :: a -> Id MTRGroupsClusterRemoveGroupResponseParams

instance IsMTRGroupsClusterRemoveGroupResponseParams (Id MTRGroupsClusterRemoveGroupResponseParams) where
  toMTRGroupsClusterRemoveGroupResponseParams = unsafeCastId

instance IsNSObject (Id MTRGroupsClusterRemoveGroupResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupsClusterViewGroupParams ----------

-- | Phantom type for @MTRGroupsClusterViewGroupParams@.
data MTRGroupsClusterViewGroupParams

instance IsObjCObject (Id MTRGroupsClusterViewGroupParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupsClusterViewGroupParams"

class IsNSObject a => IsMTRGroupsClusterViewGroupParams a where
  toMTRGroupsClusterViewGroupParams :: a -> Id MTRGroupsClusterViewGroupParams

instance IsMTRGroupsClusterViewGroupParams (Id MTRGroupsClusterViewGroupParams) where
  toMTRGroupsClusterViewGroupParams = unsafeCastId

instance IsNSObject (Id MTRGroupsClusterViewGroupParams) where
  toNSObject = unsafeCastId

-- ---------- MTRGroupsClusterViewGroupResponseParams ----------

-- | Phantom type for @MTRGroupsClusterViewGroupResponseParams@.
data MTRGroupsClusterViewGroupResponseParams

instance IsObjCObject (Id MTRGroupsClusterViewGroupResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRGroupsClusterViewGroupResponseParams"

class IsNSObject a => IsMTRGroupsClusterViewGroupResponseParams a where
  toMTRGroupsClusterViewGroupResponseParams :: a -> Id MTRGroupsClusterViewGroupResponseParams

instance IsMTRGroupsClusterViewGroupResponseParams (Id MTRGroupsClusterViewGroupResponseParams) where
  toMTRGroupsClusterViewGroupResponseParams = unsafeCastId

instance IsNSObject (Id MTRGroupsClusterViewGroupResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRIdentifyClusterIdentifyParams ----------

-- | Phantom type for @MTRIdentifyClusterIdentifyParams@.
data MTRIdentifyClusterIdentifyParams

instance IsObjCObject (Id MTRIdentifyClusterIdentifyParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRIdentifyClusterIdentifyParams"

class IsNSObject a => IsMTRIdentifyClusterIdentifyParams a where
  toMTRIdentifyClusterIdentifyParams :: a -> Id MTRIdentifyClusterIdentifyParams

instance IsMTRIdentifyClusterIdentifyParams (Id MTRIdentifyClusterIdentifyParams) where
  toMTRIdentifyClusterIdentifyParams = unsafeCastId

instance IsNSObject (Id MTRIdentifyClusterIdentifyParams) where
  toNSObject = unsafeCastId

-- ---------- MTRIdentifyClusterTriggerEffectParams ----------

-- | Phantom type for @MTRIdentifyClusterTriggerEffectParams@.
data MTRIdentifyClusterTriggerEffectParams

instance IsObjCObject (Id MTRIdentifyClusterTriggerEffectParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRIdentifyClusterTriggerEffectParams"

class IsNSObject a => IsMTRIdentifyClusterTriggerEffectParams a where
  toMTRIdentifyClusterTriggerEffectParams :: a -> Id MTRIdentifyClusterTriggerEffectParams

instance IsMTRIdentifyClusterTriggerEffectParams (Id MTRIdentifyClusterTriggerEffectParams) where
  toMTRIdentifyClusterTriggerEffectParams = unsafeCastId

instance IsNSObject (Id MTRIdentifyClusterTriggerEffectParams) where
  toNSObject = unsafeCastId

-- ---------- MTRKeypadInputClusterSendKeyParams ----------

-- | Phantom type for @MTRKeypadInputClusterSendKeyParams@.
data MTRKeypadInputClusterSendKeyParams

instance IsObjCObject (Id MTRKeypadInputClusterSendKeyParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRKeypadInputClusterSendKeyParams"

class IsNSObject a => IsMTRKeypadInputClusterSendKeyParams a where
  toMTRKeypadInputClusterSendKeyParams :: a -> Id MTRKeypadInputClusterSendKeyParams

instance IsMTRKeypadInputClusterSendKeyParams (Id MTRKeypadInputClusterSendKeyParams) where
  toMTRKeypadInputClusterSendKeyParams = unsafeCastId

instance IsNSObject (Id MTRKeypadInputClusterSendKeyParams) where
  toNSObject = unsafeCastId

-- ---------- MTRKeypadInputClusterSendKeyResponseParams ----------

-- | Phantom type for @MTRKeypadInputClusterSendKeyResponseParams@.
data MTRKeypadInputClusterSendKeyResponseParams

instance IsObjCObject (Id MTRKeypadInputClusterSendKeyResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRKeypadInputClusterSendKeyResponseParams"

class IsNSObject a => IsMTRKeypadInputClusterSendKeyResponseParams a where
  toMTRKeypadInputClusterSendKeyResponseParams :: a -> Id MTRKeypadInputClusterSendKeyResponseParams

instance IsMTRKeypadInputClusterSendKeyResponseParams (Id MTRKeypadInputClusterSendKeyResponseParams) where
  toMTRKeypadInputClusterSendKeyResponseParams = unsafeCastId

instance IsNSObject (Id MTRKeypadInputClusterSendKeyResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRLevelControlClusterMoveParams ----------

-- | Phantom type for @MTRLevelControlClusterMoveParams@.
data MTRLevelControlClusterMoveParams

instance IsObjCObject (Id MTRLevelControlClusterMoveParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRLevelControlClusterMoveParams"

class IsNSObject a => IsMTRLevelControlClusterMoveParams a where
  toMTRLevelControlClusterMoveParams :: a -> Id MTRLevelControlClusterMoveParams

instance IsMTRLevelControlClusterMoveParams (Id MTRLevelControlClusterMoveParams) where
  toMTRLevelControlClusterMoveParams = unsafeCastId

instance IsNSObject (Id MTRLevelControlClusterMoveParams) where
  toNSObject = unsafeCastId

-- ---------- MTRLevelControlClusterMoveToClosestFrequencyParams ----------

-- | Phantom type for @MTRLevelControlClusterMoveToClosestFrequencyParams@.
data MTRLevelControlClusterMoveToClosestFrequencyParams

instance IsObjCObject (Id MTRLevelControlClusterMoveToClosestFrequencyParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRLevelControlClusterMoveToClosestFrequencyParams"

class IsNSObject a => IsMTRLevelControlClusterMoveToClosestFrequencyParams a where
  toMTRLevelControlClusterMoveToClosestFrequencyParams :: a -> Id MTRLevelControlClusterMoveToClosestFrequencyParams

instance IsMTRLevelControlClusterMoveToClosestFrequencyParams (Id MTRLevelControlClusterMoveToClosestFrequencyParams) where
  toMTRLevelControlClusterMoveToClosestFrequencyParams = unsafeCastId

instance IsNSObject (Id MTRLevelControlClusterMoveToClosestFrequencyParams) where
  toNSObject = unsafeCastId

-- ---------- MTRLevelControlClusterMoveToLevelParams ----------

-- | Phantom type for @MTRLevelControlClusterMoveToLevelParams@.
data MTRLevelControlClusterMoveToLevelParams

instance IsObjCObject (Id MTRLevelControlClusterMoveToLevelParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRLevelControlClusterMoveToLevelParams"

class IsNSObject a => IsMTRLevelControlClusterMoveToLevelParams a where
  toMTRLevelControlClusterMoveToLevelParams :: a -> Id MTRLevelControlClusterMoveToLevelParams

instance IsMTRLevelControlClusterMoveToLevelParams (Id MTRLevelControlClusterMoveToLevelParams) where
  toMTRLevelControlClusterMoveToLevelParams = unsafeCastId

instance IsNSObject (Id MTRLevelControlClusterMoveToLevelParams) where
  toNSObject = unsafeCastId

-- ---------- MTRLevelControlClusterMoveToLevelWithOnOffParams ----------

-- | Phantom type for @MTRLevelControlClusterMoveToLevelWithOnOffParams@.
data MTRLevelControlClusterMoveToLevelWithOnOffParams

instance IsObjCObject (Id MTRLevelControlClusterMoveToLevelWithOnOffParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRLevelControlClusterMoveToLevelWithOnOffParams"

class IsNSObject a => IsMTRLevelControlClusterMoveToLevelWithOnOffParams a where
  toMTRLevelControlClusterMoveToLevelWithOnOffParams :: a -> Id MTRLevelControlClusterMoveToLevelWithOnOffParams

instance IsMTRLevelControlClusterMoveToLevelWithOnOffParams (Id MTRLevelControlClusterMoveToLevelWithOnOffParams) where
  toMTRLevelControlClusterMoveToLevelWithOnOffParams = unsafeCastId

instance IsNSObject (Id MTRLevelControlClusterMoveToLevelWithOnOffParams) where
  toNSObject = unsafeCastId

-- ---------- MTRLevelControlClusterMoveWithOnOffParams ----------

-- | Phantom type for @MTRLevelControlClusterMoveWithOnOffParams@.
data MTRLevelControlClusterMoveWithOnOffParams

instance IsObjCObject (Id MTRLevelControlClusterMoveWithOnOffParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRLevelControlClusterMoveWithOnOffParams"

class IsNSObject a => IsMTRLevelControlClusterMoveWithOnOffParams a where
  toMTRLevelControlClusterMoveWithOnOffParams :: a -> Id MTRLevelControlClusterMoveWithOnOffParams

instance IsMTRLevelControlClusterMoveWithOnOffParams (Id MTRLevelControlClusterMoveWithOnOffParams) where
  toMTRLevelControlClusterMoveWithOnOffParams = unsafeCastId

instance IsNSObject (Id MTRLevelControlClusterMoveWithOnOffParams) where
  toNSObject = unsafeCastId

-- ---------- MTRLevelControlClusterStepParams ----------

-- | Phantom type for @MTRLevelControlClusterStepParams@.
data MTRLevelControlClusterStepParams

instance IsObjCObject (Id MTRLevelControlClusterStepParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRLevelControlClusterStepParams"

class IsNSObject a => IsMTRLevelControlClusterStepParams a where
  toMTRLevelControlClusterStepParams :: a -> Id MTRLevelControlClusterStepParams

instance IsMTRLevelControlClusterStepParams (Id MTRLevelControlClusterStepParams) where
  toMTRLevelControlClusterStepParams = unsafeCastId

instance IsNSObject (Id MTRLevelControlClusterStepParams) where
  toNSObject = unsafeCastId

-- ---------- MTRLevelControlClusterStepWithOnOffParams ----------

-- | Phantom type for @MTRLevelControlClusterStepWithOnOffParams@.
data MTRLevelControlClusterStepWithOnOffParams

instance IsObjCObject (Id MTRLevelControlClusterStepWithOnOffParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRLevelControlClusterStepWithOnOffParams"

class IsNSObject a => IsMTRLevelControlClusterStepWithOnOffParams a where
  toMTRLevelControlClusterStepWithOnOffParams :: a -> Id MTRLevelControlClusterStepWithOnOffParams

instance IsMTRLevelControlClusterStepWithOnOffParams (Id MTRLevelControlClusterStepWithOnOffParams) where
  toMTRLevelControlClusterStepWithOnOffParams = unsafeCastId

instance IsNSObject (Id MTRLevelControlClusterStepWithOnOffParams) where
  toNSObject = unsafeCastId

-- ---------- MTRLevelControlClusterStopParams ----------

-- | Phantom type for @MTRLevelControlClusterStopParams@.
data MTRLevelControlClusterStopParams

instance IsObjCObject (Id MTRLevelControlClusterStopParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRLevelControlClusterStopParams"

class IsNSObject a => IsMTRLevelControlClusterStopParams a where
  toMTRLevelControlClusterStopParams :: a -> Id MTRLevelControlClusterStopParams

instance IsMTRLevelControlClusterStopParams (Id MTRLevelControlClusterStopParams) where
  toMTRLevelControlClusterStopParams = unsafeCastId

instance IsNSObject (Id MTRLevelControlClusterStopParams) where
  toNSObject = unsafeCastId

-- ---------- MTRLevelControlClusterStopWithOnOffParams ----------

-- | Phantom type for @MTRLevelControlClusterStopWithOnOffParams@.
data MTRLevelControlClusterStopWithOnOffParams

instance IsObjCObject (Id MTRLevelControlClusterStopWithOnOffParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRLevelControlClusterStopWithOnOffParams"

class IsNSObject a => IsMTRLevelControlClusterStopWithOnOffParams a where
  toMTRLevelControlClusterStopWithOnOffParams :: a -> Id MTRLevelControlClusterStopWithOnOffParams

instance IsMTRLevelControlClusterStopWithOnOffParams (Id MTRLevelControlClusterStopWithOnOffParams) where
  toMTRLevelControlClusterStopWithOnOffParams = unsafeCastId

instance IsNSObject (Id MTRLevelControlClusterStopWithOnOffParams) where
  toNSObject = unsafeCastId

-- ---------- MTRLowPowerClusterSleepParams ----------

-- | Phantom type for @MTRLowPowerClusterSleepParams@.
data MTRLowPowerClusterSleepParams

instance IsObjCObject (Id MTRLowPowerClusterSleepParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRLowPowerClusterSleepParams"

class IsNSObject a => IsMTRLowPowerClusterSleepParams a where
  toMTRLowPowerClusterSleepParams :: a -> Id MTRLowPowerClusterSleepParams

instance IsMTRLowPowerClusterSleepParams (Id MTRLowPowerClusterSleepParams) where
  toMTRLowPowerClusterSleepParams = unsafeCastId

instance IsNSObject (Id MTRLowPowerClusterSleepParams) where
  toNSObject = unsafeCastId

-- ---------- MTRManualSetupPayloadParser ----------

-- | Phantom type for @MTRManualSetupPayloadParser@.
data MTRManualSetupPayloadParser

instance IsObjCObject (Id MTRManualSetupPayloadParser) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRManualSetupPayloadParser"

class IsNSObject a => IsMTRManualSetupPayloadParser a where
  toMTRManualSetupPayloadParser :: a -> Id MTRManualSetupPayloadParser

instance IsMTRManualSetupPayloadParser (Id MTRManualSetupPayloadParser) where
  toMTRManualSetupPayloadParser = unsafeCastId

instance IsNSObject (Id MTRManualSetupPayloadParser) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaInputClusterHideInputStatusParams ----------

-- | Phantom type for @MTRMediaInputClusterHideInputStatusParams@.
data MTRMediaInputClusterHideInputStatusParams

instance IsObjCObject (Id MTRMediaInputClusterHideInputStatusParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaInputClusterHideInputStatusParams"

class IsNSObject a => IsMTRMediaInputClusterHideInputStatusParams a where
  toMTRMediaInputClusterHideInputStatusParams :: a -> Id MTRMediaInputClusterHideInputStatusParams

instance IsMTRMediaInputClusterHideInputStatusParams (Id MTRMediaInputClusterHideInputStatusParams) where
  toMTRMediaInputClusterHideInputStatusParams = unsafeCastId

instance IsNSObject (Id MTRMediaInputClusterHideInputStatusParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaInputClusterInputInfo ----------

-- | Phantom type for @MTRMediaInputClusterInputInfo@.
data MTRMediaInputClusterInputInfo

instance IsObjCObject (Id MTRMediaInputClusterInputInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaInputClusterInputInfo"

class IsNSObject a => IsMTRMediaInputClusterInputInfo a where
  toMTRMediaInputClusterInputInfo :: a -> Id MTRMediaInputClusterInputInfo

instance IsMTRMediaInputClusterInputInfo (Id MTRMediaInputClusterInputInfo) where
  toMTRMediaInputClusterInputInfo = unsafeCastId

instance IsNSObject (Id MTRMediaInputClusterInputInfo) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaInputClusterRenameInputParams ----------

-- | Phantom type for @MTRMediaInputClusterRenameInputParams@.
data MTRMediaInputClusterRenameInputParams

instance IsObjCObject (Id MTRMediaInputClusterRenameInputParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaInputClusterRenameInputParams"

class IsNSObject a => IsMTRMediaInputClusterRenameInputParams a where
  toMTRMediaInputClusterRenameInputParams :: a -> Id MTRMediaInputClusterRenameInputParams

instance IsMTRMediaInputClusterRenameInputParams (Id MTRMediaInputClusterRenameInputParams) where
  toMTRMediaInputClusterRenameInputParams = unsafeCastId

instance IsNSObject (Id MTRMediaInputClusterRenameInputParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaInputClusterSelectInputParams ----------

-- | Phantom type for @MTRMediaInputClusterSelectInputParams@.
data MTRMediaInputClusterSelectInputParams

instance IsObjCObject (Id MTRMediaInputClusterSelectInputParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaInputClusterSelectInputParams"

class IsNSObject a => IsMTRMediaInputClusterSelectInputParams a where
  toMTRMediaInputClusterSelectInputParams :: a -> Id MTRMediaInputClusterSelectInputParams

instance IsMTRMediaInputClusterSelectInputParams (Id MTRMediaInputClusterSelectInputParams) where
  toMTRMediaInputClusterSelectInputParams = unsafeCastId

instance IsNSObject (Id MTRMediaInputClusterSelectInputParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaInputClusterShowInputStatusParams ----------

-- | Phantom type for @MTRMediaInputClusterShowInputStatusParams@.
data MTRMediaInputClusterShowInputStatusParams

instance IsObjCObject (Id MTRMediaInputClusterShowInputStatusParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaInputClusterShowInputStatusParams"

class IsNSObject a => IsMTRMediaInputClusterShowInputStatusParams a where
  toMTRMediaInputClusterShowInputStatusParams :: a -> Id MTRMediaInputClusterShowInputStatusParams

instance IsMTRMediaInputClusterShowInputStatusParams (Id MTRMediaInputClusterShowInputStatusParams) where
  toMTRMediaInputClusterShowInputStatusParams = unsafeCastId

instance IsNSObject (Id MTRMediaInputClusterShowInputStatusParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterFastForwardParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterFastForwardParams@.
data MTRMediaPlaybackClusterFastForwardParams

instance IsObjCObject (Id MTRMediaPlaybackClusterFastForwardParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterFastForwardParams"

class IsNSObject a => IsMTRMediaPlaybackClusterFastForwardParams a where
  toMTRMediaPlaybackClusterFastForwardParams :: a -> Id MTRMediaPlaybackClusterFastForwardParams

instance IsMTRMediaPlaybackClusterFastForwardParams (Id MTRMediaPlaybackClusterFastForwardParams) where
  toMTRMediaPlaybackClusterFastForwardParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterFastForwardParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterNextParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterNextParams@.
data MTRMediaPlaybackClusterNextParams

instance IsObjCObject (Id MTRMediaPlaybackClusterNextParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterNextParams"

class IsNSObject a => IsMTRMediaPlaybackClusterNextParams a where
  toMTRMediaPlaybackClusterNextParams :: a -> Id MTRMediaPlaybackClusterNextParams

instance IsMTRMediaPlaybackClusterNextParams (Id MTRMediaPlaybackClusterNextParams) where
  toMTRMediaPlaybackClusterNextParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterNextParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterPauseParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterPauseParams@.
data MTRMediaPlaybackClusterPauseParams

instance IsObjCObject (Id MTRMediaPlaybackClusterPauseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterPauseParams"

class IsNSObject a => IsMTRMediaPlaybackClusterPauseParams a where
  toMTRMediaPlaybackClusterPauseParams :: a -> Id MTRMediaPlaybackClusterPauseParams

instance IsMTRMediaPlaybackClusterPauseParams (Id MTRMediaPlaybackClusterPauseParams) where
  toMTRMediaPlaybackClusterPauseParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterPauseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterPlayParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterPlayParams@.
data MTRMediaPlaybackClusterPlayParams

instance IsObjCObject (Id MTRMediaPlaybackClusterPlayParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterPlayParams"

class IsNSObject a => IsMTRMediaPlaybackClusterPlayParams a where
  toMTRMediaPlaybackClusterPlayParams :: a -> Id MTRMediaPlaybackClusterPlayParams

instance IsMTRMediaPlaybackClusterPlayParams (Id MTRMediaPlaybackClusterPlayParams) where
  toMTRMediaPlaybackClusterPlayParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterPlayParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterPlaybackPosition ----------

-- | Phantom type for @MTRMediaPlaybackClusterPlaybackPosition@.
data MTRMediaPlaybackClusterPlaybackPosition

instance IsObjCObject (Id MTRMediaPlaybackClusterPlaybackPosition) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterPlaybackPosition"

class IsNSObject a => IsMTRMediaPlaybackClusterPlaybackPosition a where
  toMTRMediaPlaybackClusterPlaybackPosition :: a -> Id MTRMediaPlaybackClusterPlaybackPosition

instance IsMTRMediaPlaybackClusterPlaybackPosition (Id MTRMediaPlaybackClusterPlaybackPosition) where
  toMTRMediaPlaybackClusterPlaybackPosition = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterPlaybackPosition) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterPlaybackResponseParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterPlaybackResponseParams@.
data MTRMediaPlaybackClusterPlaybackResponseParams

instance IsObjCObject (Id MTRMediaPlaybackClusterPlaybackResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterPlaybackResponseParams"

class IsNSObject a => IsMTRMediaPlaybackClusterPlaybackResponseParams a where
  toMTRMediaPlaybackClusterPlaybackResponseParams :: a -> Id MTRMediaPlaybackClusterPlaybackResponseParams

instance IsMTRMediaPlaybackClusterPlaybackResponseParams (Id MTRMediaPlaybackClusterPlaybackResponseParams) where
  toMTRMediaPlaybackClusterPlaybackResponseParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterPlaybackResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterPreviousParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterPreviousParams@.
data MTRMediaPlaybackClusterPreviousParams

instance IsObjCObject (Id MTRMediaPlaybackClusterPreviousParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterPreviousParams"

class IsNSObject a => IsMTRMediaPlaybackClusterPreviousParams a where
  toMTRMediaPlaybackClusterPreviousParams :: a -> Id MTRMediaPlaybackClusterPreviousParams

instance IsMTRMediaPlaybackClusterPreviousParams (Id MTRMediaPlaybackClusterPreviousParams) where
  toMTRMediaPlaybackClusterPreviousParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterPreviousParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterRewindParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterRewindParams@.
data MTRMediaPlaybackClusterRewindParams

instance IsObjCObject (Id MTRMediaPlaybackClusterRewindParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterRewindParams"

class IsNSObject a => IsMTRMediaPlaybackClusterRewindParams a where
  toMTRMediaPlaybackClusterRewindParams :: a -> Id MTRMediaPlaybackClusterRewindParams

instance IsMTRMediaPlaybackClusterRewindParams (Id MTRMediaPlaybackClusterRewindParams) where
  toMTRMediaPlaybackClusterRewindParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterRewindParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterSeekParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterSeekParams@.
data MTRMediaPlaybackClusterSeekParams

instance IsObjCObject (Id MTRMediaPlaybackClusterSeekParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterSeekParams"

class IsNSObject a => IsMTRMediaPlaybackClusterSeekParams a where
  toMTRMediaPlaybackClusterSeekParams :: a -> Id MTRMediaPlaybackClusterSeekParams

instance IsMTRMediaPlaybackClusterSeekParams (Id MTRMediaPlaybackClusterSeekParams) where
  toMTRMediaPlaybackClusterSeekParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterSeekParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterSkipBackwardParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterSkipBackwardParams@.
data MTRMediaPlaybackClusterSkipBackwardParams

instance IsObjCObject (Id MTRMediaPlaybackClusterSkipBackwardParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterSkipBackwardParams"

class IsNSObject a => IsMTRMediaPlaybackClusterSkipBackwardParams a where
  toMTRMediaPlaybackClusterSkipBackwardParams :: a -> Id MTRMediaPlaybackClusterSkipBackwardParams

instance IsMTRMediaPlaybackClusterSkipBackwardParams (Id MTRMediaPlaybackClusterSkipBackwardParams) where
  toMTRMediaPlaybackClusterSkipBackwardParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterSkipBackwardParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterSkipForwardParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterSkipForwardParams@.
data MTRMediaPlaybackClusterSkipForwardParams

instance IsObjCObject (Id MTRMediaPlaybackClusterSkipForwardParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterSkipForwardParams"

class IsNSObject a => IsMTRMediaPlaybackClusterSkipForwardParams a where
  toMTRMediaPlaybackClusterSkipForwardParams :: a -> Id MTRMediaPlaybackClusterSkipForwardParams

instance IsMTRMediaPlaybackClusterSkipForwardParams (Id MTRMediaPlaybackClusterSkipForwardParams) where
  toMTRMediaPlaybackClusterSkipForwardParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterSkipForwardParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterStartOverParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterStartOverParams@.
data MTRMediaPlaybackClusterStartOverParams

instance IsObjCObject (Id MTRMediaPlaybackClusterStartOverParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterStartOverParams"

class IsNSObject a => IsMTRMediaPlaybackClusterStartOverParams a where
  toMTRMediaPlaybackClusterStartOverParams :: a -> Id MTRMediaPlaybackClusterStartOverParams

instance IsMTRMediaPlaybackClusterStartOverParams (Id MTRMediaPlaybackClusterStartOverParams) where
  toMTRMediaPlaybackClusterStartOverParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterStartOverParams) where
  toNSObject = unsafeCastId

-- ---------- MTRMediaPlaybackClusterStopPlaybackParams ----------

-- | Phantom type for @MTRMediaPlaybackClusterStopPlaybackParams@.
data MTRMediaPlaybackClusterStopPlaybackParams

instance IsObjCObject (Id MTRMediaPlaybackClusterStopPlaybackParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRMediaPlaybackClusterStopPlaybackParams"

class IsNSObject a => IsMTRMediaPlaybackClusterStopPlaybackParams a where
  toMTRMediaPlaybackClusterStopPlaybackParams :: a -> Id MTRMediaPlaybackClusterStopPlaybackParams

instance IsMTRMediaPlaybackClusterStopPlaybackParams (Id MTRMediaPlaybackClusterStopPlaybackParams) where
  toMTRMediaPlaybackClusterStopPlaybackParams = unsafeCastId

instance IsNSObject (Id MTRMediaPlaybackClusterStopPlaybackParams) where
  toNSObject = unsafeCastId

-- ---------- MTRModeSelectClusterChangeToModeParams ----------

-- | Phantom type for @MTRModeSelectClusterChangeToModeParams@.
data MTRModeSelectClusterChangeToModeParams

instance IsObjCObject (Id MTRModeSelectClusterChangeToModeParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRModeSelectClusterChangeToModeParams"

class IsNSObject a => IsMTRModeSelectClusterChangeToModeParams a where
  toMTRModeSelectClusterChangeToModeParams :: a -> Id MTRModeSelectClusterChangeToModeParams

instance IsMTRModeSelectClusterChangeToModeParams (Id MTRModeSelectClusterChangeToModeParams) where
  toMTRModeSelectClusterChangeToModeParams = unsafeCastId

instance IsNSObject (Id MTRModeSelectClusterChangeToModeParams) where
  toNSObject = unsafeCastId

-- ---------- MTRModeSelectClusterModeOptionStruct ----------

-- | Phantom type for @MTRModeSelectClusterModeOptionStruct@.
data MTRModeSelectClusterModeOptionStruct

instance IsObjCObject (Id MTRModeSelectClusterModeOptionStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRModeSelectClusterModeOptionStruct"

class IsNSObject a => IsMTRModeSelectClusterModeOptionStruct a where
  toMTRModeSelectClusterModeOptionStruct :: a -> Id MTRModeSelectClusterModeOptionStruct

instance IsMTRModeSelectClusterModeOptionStruct (Id MTRModeSelectClusterModeOptionStruct) where
  toMTRModeSelectClusterModeOptionStruct = unsafeCastId

instance IsNSObject (Id MTRModeSelectClusterModeOptionStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRModeSelectClusterSemanticTag ----------

-- | Phantom type for @MTRModeSelectClusterSemanticTag@.
data MTRModeSelectClusterSemanticTag

instance IsObjCObject (Id MTRModeSelectClusterSemanticTag) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRModeSelectClusterSemanticTag"

class IsNSObject a => IsMTRModeSelectClusterSemanticTag a where
  toMTRModeSelectClusterSemanticTag :: a -> Id MTRModeSelectClusterSemanticTag

instance IsMTRModeSelectClusterSemanticTag (Id MTRModeSelectClusterSemanticTag) where
  toMTRModeSelectClusterSemanticTag = unsafeCastId

instance IsNSObject (Id MTRModeSelectClusterSemanticTag) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams ----------

-- | Phantom type for @MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams@.
data MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams

instance IsObjCObject (Id MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams"

class IsNSObject a => IsMTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams a where
  toMTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams :: a -> Id MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams

instance IsMTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams (Id MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams) where
  toMTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams ----------

-- | Phantom type for @MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams@.
data MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams

instance IsObjCObject (Id MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams"

class IsNSObject a => IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams a where
  toMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams :: a -> Id MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams

instance IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams (Id MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams) where
  toMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterConnectNetworkParams ----------

-- | Phantom type for @MTRNetworkCommissioningClusterConnectNetworkParams@.
data MTRNetworkCommissioningClusterConnectNetworkParams

instance IsObjCObject (Id MTRNetworkCommissioningClusterConnectNetworkParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterConnectNetworkParams"

class IsNSObject a => IsMTRNetworkCommissioningClusterConnectNetworkParams a where
  toMTRNetworkCommissioningClusterConnectNetworkParams :: a -> Id MTRNetworkCommissioningClusterConnectNetworkParams

instance IsMTRNetworkCommissioningClusterConnectNetworkParams (Id MTRNetworkCommissioningClusterConnectNetworkParams) where
  toMTRNetworkCommissioningClusterConnectNetworkParams = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterConnectNetworkParams) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterConnectNetworkResponseParams ----------

-- | Phantom type for @MTRNetworkCommissioningClusterConnectNetworkResponseParams@.
data MTRNetworkCommissioningClusterConnectNetworkResponseParams

instance IsObjCObject (Id MTRNetworkCommissioningClusterConnectNetworkResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterConnectNetworkResponseParams"

class IsNSObject a => IsMTRNetworkCommissioningClusterConnectNetworkResponseParams a where
  toMTRNetworkCommissioningClusterConnectNetworkResponseParams :: a -> Id MTRNetworkCommissioningClusterConnectNetworkResponseParams

instance IsMTRNetworkCommissioningClusterConnectNetworkResponseParams (Id MTRNetworkCommissioningClusterConnectNetworkResponseParams) where
  toMTRNetworkCommissioningClusterConnectNetworkResponseParams = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterConnectNetworkResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterNetworkConfigResponseParams ----------

-- | Phantom type for @MTRNetworkCommissioningClusterNetworkConfigResponseParams@.
data MTRNetworkCommissioningClusterNetworkConfigResponseParams

instance IsObjCObject (Id MTRNetworkCommissioningClusterNetworkConfigResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterNetworkConfigResponseParams"

class IsNSObject a => IsMTRNetworkCommissioningClusterNetworkConfigResponseParams a where
  toMTRNetworkCommissioningClusterNetworkConfigResponseParams :: a -> Id MTRNetworkCommissioningClusterNetworkConfigResponseParams

instance IsMTRNetworkCommissioningClusterNetworkConfigResponseParams (Id MTRNetworkCommissioningClusterNetworkConfigResponseParams) where
  toMTRNetworkCommissioningClusterNetworkConfigResponseParams = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterNetworkConfigResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterNetworkInfo ----------

-- | Phantom type for @MTRNetworkCommissioningClusterNetworkInfo@.
data MTRNetworkCommissioningClusterNetworkInfo

instance IsObjCObject (Id MTRNetworkCommissioningClusterNetworkInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterNetworkInfo"

class IsNSObject a => IsMTRNetworkCommissioningClusterNetworkInfo a where
  toMTRNetworkCommissioningClusterNetworkInfo :: a -> Id MTRNetworkCommissioningClusterNetworkInfo

instance IsMTRNetworkCommissioningClusterNetworkInfo (Id MTRNetworkCommissioningClusterNetworkInfo) where
  toMTRNetworkCommissioningClusterNetworkInfo = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterNetworkInfo) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterRemoveNetworkParams ----------

-- | Phantom type for @MTRNetworkCommissioningClusterRemoveNetworkParams@.
data MTRNetworkCommissioningClusterRemoveNetworkParams

instance IsObjCObject (Id MTRNetworkCommissioningClusterRemoveNetworkParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterRemoveNetworkParams"

class IsNSObject a => IsMTRNetworkCommissioningClusterRemoveNetworkParams a where
  toMTRNetworkCommissioningClusterRemoveNetworkParams :: a -> Id MTRNetworkCommissioningClusterRemoveNetworkParams

instance IsMTRNetworkCommissioningClusterRemoveNetworkParams (Id MTRNetworkCommissioningClusterRemoveNetworkParams) where
  toMTRNetworkCommissioningClusterRemoveNetworkParams = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterRemoveNetworkParams) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterReorderNetworkParams ----------

-- | Phantom type for @MTRNetworkCommissioningClusterReorderNetworkParams@.
data MTRNetworkCommissioningClusterReorderNetworkParams

instance IsObjCObject (Id MTRNetworkCommissioningClusterReorderNetworkParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterReorderNetworkParams"

class IsNSObject a => IsMTRNetworkCommissioningClusterReorderNetworkParams a where
  toMTRNetworkCommissioningClusterReorderNetworkParams :: a -> Id MTRNetworkCommissioningClusterReorderNetworkParams

instance IsMTRNetworkCommissioningClusterReorderNetworkParams (Id MTRNetworkCommissioningClusterReorderNetworkParams) where
  toMTRNetworkCommissioningClusterReorderNetworkParams = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterReorderNetworkParams) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterScanNetworksParams ----------

-- | Phantom type for @MTRNetworkCommissioningClusterScanNetworksParams@.
data MTRNetworkCommissioningClusterScanNetworksParams

instance IsObjCObject (Id MTRNetworkCommissioningClusterScanNetworksParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterScanNetworksParams"

class IsNSObject a => IsMTRNetworkCommissioningClusterScanNetworksParams a where
  toMTRNetworkCommissioningClusterScanNetworksParams :: a -> Id MTRNetworkCommissioningClusterScanNetworksParams

instance IsMTRNetworkCommissioningClusterScanNetworksParams (Id MTRNetworkCommissioningClusterScanNetworksParams) where
  toMTRNetworkCommissioningClusterScanNetworksParams = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterScanNetworksParams) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterScanNetworksResponseParams ----------

-- | Phantom type for @MTRNetworkCommissioningClusterScanNetworksResponseParams@.
data MTRNetworkCommissioningClusterScanNetworksResponseParams

instance IsObjCObject (Id MTRNetworkCommissioningClusterScanNetworksResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterScanNetworksResponseParams"

class IsNSObject a => IsMTRNetworkCommissioningClusterScanNetworksResponseParams a where
  toMTRNetworkCommissioningClusterScanNetworksResponseParams :: a -> Id MTRNetworkCommissioningClusterScanNetworksResponseParams

instance IsMTRNetworkCommissioningClusterScanNetworksResponseParams (Id MTRNetworkCommissioningClusterScanNetworksResponseParams) where
  toMTRNetworkCommissioningClusterScanNetworksResponseParams = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterScanNetworksResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterThreadInterfaceScanResult ----------

-- | Phantom type for @MTRNetworkCommissioningClusterThreadInterfaceScanResult@.
data MTRNetworkCommissioningClusterThreadInterfaceScanResult

instance IsObjCObject (Id MTRNetworkCommissioningClusterThreadInterfaceScanResult) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterThreadInterfaceScanResult"

class IsNSObject a => IsMTRNetworkCommissioningClusterThreadInterfaceScanResult a where
  toMTRNetworkCommissioningClusterThreadInterfaceScanResult :: a -> Id MTRNetworkCommissioningClusterThreadInterfaceScanResult

instance IsMTRNetworkCommissioningClusterThreadInterfaceScanResult (Id MTRNetworkCommissioningClusterThreadInterfaceScanResult) where
  toMTRNetworkCommissioningClusterThreadInterfaceScanResult = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterThreadInterfaceScanResult) where
  toNSObject = unsafeCastId

-- ---------- MTRNetworkCommissioningClusterWiFiInterfaceScanResult ----------

-- | Phantom type for @MTRNetworkCommissioningClusterWiFiInterfaceScanResult@.
data MTRNetworkCommissioningClusterWiFiInterfaceScanResult

instance IsObjCObject (Id MTRNetworkCommissioningClusterWiFiInterfaceScanResult) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRNetworkCommissioningClusterWiFiInterfaceScanResult"

class IsNSObject a => IsMTRNetworkCommissioningClusterWiFiInterfaceScanResult a where
  toMTRNetworkCommissioningClusterWiFiInterfaceScanResult :: a -> Id MTRNetworkCommissioningClusterWiFiInterfaceScanResult

instance IsMTRNetworkCommissioningClusterWiFiInterfaceScanResult (Id MTRNetworkCommissioningClusterWiFiInterfaceScanResult) where
  toMTRNetworkCommissioningClusterWiFiInterfaceScanResult = unsafeCastId

instance IsNSObject (Id MTRNetworkCommissioningClusterWiFiInterfaceScanResult) where
  toNSObject = unsafeCastId

-- ---------- MTROTAHeader ----------

-- | Phantom type for @MTROTAHeader@.
data MTROTAHeader

instance IsObjCObject (Id MTROTAHeader) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROTAHeader"

class IsNSObject a => IsMTROTAHeader a where
  toMTROTAHeader :: a -> Id MTROTAHeader

instance IsMTROTAHeader (Id MTROTAHeader) where
  toMTROTAHeader = unsafeCastId

instance IsNSObject (Id MTROTAHeader) where
  toNSObject = unsafeCastId

-- ---------- MTROTAHeaderParser ----------

-- | Phantom type for @MTROTAHeaderParser@.
data MTROTAHeaderParser

instance IsObjCObject (Id MTROTAHeaderParser) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROTAHeaderParser"

class IsNSObject a => IsMTROTAHeaderParser a where
  toMTROTAHeaderParser :: a -> Id MTROTAHeaderParser

instance IsMTROTAHeaderParser (Id MTROTAHeaderParser) where
  toMTROTAHeaderParser = unsafeCastId

instance IsNSObject (Id MTROTAHeaderParser) where
  toNSObject = unsafeCastId

-- ---------- MTROnOffClusterOffParams ----------

-- | Phantom type for @MTROnOffClusterOffParams@.
data MTROnOffClusterOffParams

instance IsObjCObject (Id MTROnOffClusterOffParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROnOffClusterOffParams"

class IsNSObject a => IsMTROnOffClusterOffParams a where
  toMTROnOffClusterOffParams :: a -> Id MTROnOffClusterOffParams

instance IsMTROnOffClusterOffParams (Id MTROnOffClusterOffParams) where
  toMTROnOffClusterOffParams = unsafeCastId

instance IsNSObject (Id MTROnOffClusterOffParams) where
  toNSObject = unsafeCastId

-- ---------- MTROnOffClusterOffWithEffectParams ----------

-- | Phantom type for @MTROnOffClusterOffWithEffectParams@.
data MTROnOffClusterOffWithEffectParams

instance IsObjCObject (Id MTROnOffClusterOffWithEffectParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROnOffClusterOffWithEffectParams"

class IsNSObject a => IsMTROnOffClusterOffWithEffectParams a where
  toMTROnOffClusterOffWithEffectParams :: a -> Id MTROnOffClusterOffWithEffectParams

instance IsMTROnOffClusterOffWithEffectParams (Id MTROnOffClusterOffWithEffectParams) where
  toMTROnOffClusterOffWithEffectParams = unsafeCastId

instance IsNSObject (Id MTROnOffClusterOffWithEffectParams) where
  toNSObject = unsafeCastId

-- ---------- MTROnOffClusterOnParams ----------

-- | Phantom type for @MTROnOffClusterOnParams@.
data MTROnOffClusterOnParams

instance IsObjCObject (Id MTROnOffClusterOnParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROnOffClusterOnParams"

class IsNSObject a => IsMTROnOffClusterOnParams a where
  toMTROnOffClusterOnParams :: a -> Id MTROnOffClusterOnParams

instance IsMTROnOffClusterOnParams (Id MTROnOffClusterOnParams) where
  toMTROnOffClusterOnParams = unsafeCastId

instance IsNSObject (Id MTROnOffClusterOnParams) where
  toNSObject = unsafeCastId

-- ---------- MTROnOffClusterOnWithRecallGlobalSceneParams ----------

-- | Phantom type for @MTROnOffClusterOnWithRecallGlobalSceneParams@.
data MTROnOffClusterOnWithRecallGlobalSceneParams

instance IsObjCObject (Id MTROnOffClusterOnWithRecallGlobalSceneParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROnOffClusterOnWithRecallGlobalSceneParams"

class IsNSObject a => IsMTROnOffClusterOnWithRecallGlobalSceneParams a where
  toMTROnOffClusterOnWithRecallGlobalSceneParams :: a -> Id MTROnOffClusterOnWithRecallGlobalSceneParams

instance IsMTROnOffClusterOnWithRecallGlobalSceneParams (Id MTROnOffClusterOnWithRecallGlobalSceneParams) where
  toMTROnOffClusterOnWithRecallGlobalSceneParams = unsafeCastId

instance IsNSObject (Id MTROnOffClusterOnWithRecallGlobalSceneParams) where
  toNSObject = unsafeCastId

-- ---------- MTROnOffClusterOnWithTimedOffParams ----------

-- | Phantom type for @MTROnOffClusterOnWithTimedOffParams@.
data MTROnOffClusterOnWithTimedOffParams

instance IsObjCObject (Id MTROnOffClusterOnWithTimedOffParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROnOffClusterOnWithTimedOffParams"

class IsNSObject a => IsMTROnOffClusterOnWithTimedOffParams a where
  toMTROnOffClusterOnWithTimedOffParams :: a -> Id MTROnOffClusterOnWithTimedOffParams

instance IsMTROnOffClusterOnWithTimedOffParams (Id MTROnOffClusterOnWithTimedOffParams) where
  toMTROnOffClusterOnWithTimedOffParams = unsafeCastId

instance IsNSObject (Id MTROnOffClusterOnWithTimedOffParams) where
  toNSObject = unsafeCastId

-- ---------- MTROnOffClusterToggleParams ----------

-- | Phantom type for @MTROnOffClusterToggleParams@.
data MTROnOffClusterToggleParams

instance IsObjCObject (Id MTROnOffClusterToggleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROnOffClusterToggleParams"

class IsNSObject a => IsMTROnOffClusterToggleParams a where
  toMTROnOffClusterToggleParams :: a -> Id MTROnOffClusterToggleParams

instance IsMTROnOffClusterToggleParams (Id MTROnOffClusterToggleParams) where
  toMTROnOffClusterToggleParams = unsafeCastId

instance IsNSObject (Id MTROnOffClusterToggleParams) where
  toNSObject = unsafeCastId

-- ---------- MTROnboardingPayloadParser ----------

-- | Phantom type for @MTROnboardingPayloadParser@.
data MTROnboardingPayloadParser

instance IsObjCObject (Id MTROnboardingPayloadParser) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROnboardingPayloadParser"

class IsNSObject a => IsMTROnboardingPayloadParser a where
  toMTROnboardingPayloadParser :: a -> Id MTROnboardingPayloadParser

instance IsMTROnboardingPayloadParser (Id MTROnboardingPayloadParser) where
  toMTROnboardingPayloadParser = unsafeCastId

instance IsNSObject (Id MTROnboardingPayloadParser) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterAddNOCParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterAddNOCParams@.
data MTROperationalCredentialsClusterAddNOCParams

instance IsObjCObject (Id MTROperationalCredentialsClusterAddNOCParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterAddNOCParams"

class IsNSObject a => IsMTROperationalCredentialsClusterAddNOCParams a where
  toMTROperationalCredentialsClusterAddNOCParams :: a -> Id MTROperationalCredentialsClusterAddNOCParams

instance IsMTROperationalCredentialsClusterAddNOCParams (Id MTROperationalCredentialsClusterAddNOCParams) where
  toMTROperationalCredentialsClusterAddNOCParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterAddNOCParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterAddTrustedRootCertificateParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterAddTrustedRootCertificateParams@.
data MTROperationalCredentialsClusterAddTrustedRootCertificateParams

instance IsObjCObject (Id MTROperationalCredentialsClusterAddTrustedRootCertificateParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterAddTrustedRootCertificateParams"

class IsNSObject a => IsMTROperationalCredentialsClusterAddTrustedRootCertificateParams a where
  toMTROperationalCredentialsClusterAddTrustedRootCertificateParams :: a -> Id MTROperationalCredentialsClusterAddTrustedRootCertificateParams

instance IsMTROperationalCredentialsClusterAddTrustedRootCertificateParams (Id MTROperationalCredentialsClusterAddTrustedRootCertificateParams) where
  toMTROperationalCredentialsClusterAddTrustedRootCertificateParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterAddTrustedRootCertificateParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterAttestationRequestParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterAttestationRequestParams@.
data MTROperationalCredentialsClusterAttestationRequestParams

instance IsObjCObject (Id MTROperationalCredentialsClusterAttestationRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterAttestationRequestParams"

class IsNSObject a => IsMTROperationalCredentialsClusterAttestationRequestParams a where
  toMTROperationalCredentialsClusterAttestationRequestParams :: a -> Id MTROperationalCredentialsClusterAttestationRequestParams

instance IsMTROperationalCredentialsClusterAttestationRequestParams (Id MTROperationalCredentialsClusterAttestationRequestParams) where
  toMTROperationalCredentialsClusterAttestationRequestParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterAttestationRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterAttestationResponseParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterAttestationResponseParams@.
data MTROperationalCredentialsClusterAttestationResponseParams

instance IsObjCObject (Id MTROperationalCredentialsClusterAttestationResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterAttestationResponseParams"

class IsNSObject a => IsMTROperationalCredentialsClusterAttestationResponseParams a where
  toMTROperationalCredentialsClusterAttestationResponseParams :: a -> Id MTROperationalCredentialsClusterAttestationResponseParams

instance IsMTROperationalCredentialsClusterAttestationResponseParams (Id MTROperationalCredentialsClusterAttestationResponseParams) where
  toMTROperationalCredentialsClusterAttestationResponseParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterAttestationResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterCSRRequestParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterCSRRequestParams@.
data MTROperationalCredentialsClusterCSRRequestParams

instance IsObjCObject (Id MTROperationalCredentialsClusterCSRRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterCSRRequestParams"

class IsNSObject a => IsMTROperationalCredentialsClusterCSRRequestParams a where
  toMTROperationalCredentialsClusterCSRRequestParams :: a -> Id MTROperationalCredentialsClusterCSRRequestParams

instance IsMTROperationalCredentialsClusterCSRRequestParams (Id MTROperationalCredentialsClusterCSRRequestParams) where
  toMTROperationalCredentialsClusterCSRRequestParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterCSRRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterCSRResponseParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterCSRResponseParams@.
data MTROperationalCredentialsClusterCSRResponseParams

instance IsObjCObject (Id MTROperationalCredentialsClusterCSRResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterCSRResponseParams"

class IsNSObject a => IsMTROperationalCredentialsClusterCSRResponseParams a where
  toMTROperationalCredentialsClusterCSRResponseParams :: a -> Id MTROperationalCredentialsClusterCSRResponseParams

instance IsMTROperationalCredentialsClusterCSRResponseParams (Id MTROperationalCredentialsClusterCSRResponseParams) where
  toMTROperationalCredentialsClusterCSRResponseParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterCSRResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterCertificateChainRequestParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterCertificateChainRequestParams@.
data MTROperationalCredentialsClusterCertificateChainRequestParams

instance IsObjCObject (Id MTROperationalCredentialsClusterCertificateChainRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterCertificateChainRequestParams"

class IsNSObject a => IsMTROperationalCredentialsClusterCertificateChainRequestParams a where
  toMTROperationalCredentialsClusterCertificateChainRequestParams :: a -> Id MTROperationalCredentialsClusterCertificateChainRequestParams

instance IsMTROperationalCredentialsClusterCertificateChainRequestParams (Id MTROperationalCredentialsClusterCertificateChainRequestParams) where
  toMTROperationalCredentialsClusterCertificateChainRequestParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterCertificateChainRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterCertificateChainResponseParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterCertificateChainResponseParams@.
data MTROperationalCredentialsClusterCertificateChainResponseParams

instance IsObjCObject (Id MTROperationalCredentialsClusterCertificateChainResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterCertificateChainResponseParams"

class IsNSObject a => IsMTROperationalCredentialsClusterCertificateChainResponseParams a where
  toMTROperationalCredentialsClusterCertificateChainResponseParams :: a -> Id MTROperationalCredentialsClusterCertificateChainResponseParams

instance IsMTROperationalCredentialsClusterCertificateChainResponseParams (Id MTROperationalCredentialsClusterCertificateChainResponseParams) where
  toMTROperationalCredentialsClusterCertificateChainResponseParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterCertificateChainResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterFabricDescriptor ----------

-- | Phantom type for @MTROperationalCredentialsClusterFabricDescriptor@.
data MTROperationalCredentialsClusterFabricDescriptor

instance IsObjCObject (Id MTROperationalCredentialsClusterFabricDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterFabricDescriptor"

class IsNSObject a => IsMTROperationalCredentialsClusterFabricDescriptor a where
  toMTROperationalCredentialsClusterFabricDescriptor :: a -> Id MTROperationalCredentialsClusterFabricDescriptor

instance IsMTROperationalCredentialsClusterFabricDescriptor (Id MTROperationalCredentialsClusterFabricDescriptor) where
  toMTROperationalCredentialsClusterFabricDescriptor = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterFabricDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterNOCResponseParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterNOCResponseParams@.
data MTROperationalCredentialsClusterNOCResponseParams

instance IsObjCObject (Id MTROperationalCredentialsClusterNOCResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterNOCResponseParams"

class IsNSObject a => IsMTROperationalCredentialsClusterNOCResponseParams a where
  toMTROperationalCredentialsClusterNOCResponseParams :: a -> Id MTROperationalCredentialsClusterNOCResponseParams

instance IsMTROperationalCredentialsClusterNOCResponseParams (Id MTROperationalCredentialsClusterNOCResponseParams) where
  toMTROperationalCredentialsClusterNOCResponseParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterNOCResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterNOCStruct ----------

-- | Phantom type for @MTROperationalCredentialsClusterNOCStruct@.
data MTROperationalCredentialsClusterNOCStruct

instance IsObjCObject (Id MTROperationalCredentialsClusterNOCStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterNOCStruct"

class IsNSObject a => IsMTROperationalCredentialsClusterNOCStruct a where
  toMTROperationalCredentialsClusterNOCStruct :: a -> Id MTROperationalCredentialsClusterNOCStruct

instance IsMTROperationalCredentialsClusterNOCStruct (Id MTROperationalCredentialsClusterNOCStruct) where
  toMTROperationalCredentialsClusterNOCStruct = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterNOCStruct) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterRemoveFabricParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterRemoveFabricParams@.
data MTROperationalCredentialsClusterRemoveFabricParams

instance IsObjCObject (Id MTROperationalCredentialsClusterRemoveFabricParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterRemoveFabricParams"

class IsNSObject a => IsMTROperationalCredentialsClusterRemoveFabricParams a where
  toMTROperationalCredentialsClusterRemoveFabricParams :: a -> Id MTROperationalCredentialsClusterRemoveFabricParams

instance IsMTROperationalCredentialsClusterRemoveFabricParams (Id MTROperationalCredentialsClusterRemoveFabricParams) where
  toMTROperationalCredentialsClusterRemoveFabricParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterRemoveFabricParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterUpdateFabricLabelParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterUpdateFabricLabelParams@.
data MTROperationalCredentialsClusterUpdateFabricLabelParams

instance IsObjCObject (Id MTROperationalCredentialsClusterUpdateFabricLabelParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterUpdateFabricLabelParams"

class IsNSObject a => IsMTROperationalCredentialsClusterUpdateFabricLabelParams a where
  toMTROperationalCredentialsClusterUpdateFabricLabelParams :: a -> Id MTROperationalCredentialsClusterUpdateFabricLabelParams

instance IsMTROperationalCredentialsClusterUpdateFabricLabelParams (Id MTROperationalCredentialsClusterUpdateFabricLabelParams) where
  toMTROperationalCredentialsClusterUpdateFabricLabelParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterUpdateFabricLabelParams) where
  toNSObject = unsafeCastId

-- ---------- MTROperationalCredentialsClusterUpdateNOCParams ----------

-- | Phantom type for @MTROperationalCredentialsClusterUpdateNOCParams@.
data MTROperationalCredentialsClusterUpdateNOCParams

instance IsObjCObject (Id MTROperationalCredentialsClusterUpdateNOCParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROperationalCredentialsClusterUpdateNOCParams"

class IsNSObject a => IsMTROperationalCredentialsClusterUpdateNOCParams a where
  toMTROperationalCredentialsClusterUpdateNOCParams :: a -> Id MTROperationalCredentialsClusterUpdateNOCParams

instance IsMTROperationalCredentialsClusterUpdateNOCParams (Id MTROperationalCredentialsClusterUpdateNOCParams) where
  toMTROperationalCredentialsClusterUpdateNOCParams = unsafeCastId

instance IsNSObject (Id MTROperationalCredentialsClusterUpdateNOCParams) where
  toNSObject = unsafeCastId

-- ---------- MTROptionalQRCodeInfo ----------

-- | Phantom type for @MTROptionalQRCodeInfo@.
data MTROptionalQRCodeInfo

instance IsObjCObject (Id MTROptionalQRCodeInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROptionalQRCodeInfo"

class IsNSObject a => IsMTROptionalQRCodeInfo a where
  toMTROptionalQRCodeInfo :: a -> Id MTROptionalQRCodeInfo

instance IsMTROptionalQRCodeInfo (Id MTROptionalQRCodeInfo) where
  toMTROptionalQRCodeInfo = unsafeCastId

instance IsNSObject (Id MTROptionalQRCodeInfo) where
  toNSObject = unsafeCastId

-- ---------- MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams ----------

-- | Phantom type for @MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams@.
data MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams

instance IsObjCObject (Id MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams"

class IsNSObject a => IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams a where
  toMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams :: a -> Id MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams

instance IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams (Id MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams) where
  toMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams = unsafeCastId

instance IsNSObject (Id MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams ----------

-- | Phantom type for @MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams@.
data MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams

instance IsObjCObject (Id MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams"

class IsNSObject a => IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams a where
  toMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams :: a -> Id MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams

instance IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams (Id MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams) where
  toMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams = unsafeCastId

instance IsNSObject (Id MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams ----------

-- | Phantom type for @MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams@.
data MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams

instance IsObjCObject (Id MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams"

class IsNSObject a => IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams a where
  toMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams :: a -> Id MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams

instance IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams (Id MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams) where
  toMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams = unsafeCastId

instance IsNSObject (Id MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams) where
  toNSObject = unsafeCastId

-- ---------- MTROtaSoftwareUpdateProviderClusterQueryImageParams ----------

-- | Phantom type for @MTROtaSoftwareUpdateProviderClusterQueryImageParams@.
data MTROtaSoftwareUpdateProviderClusterQueryImageParams

instance IsObjCObject (Id MTROtaSoftwareUpdateProviderClusterQueryImageParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROtaSoftwareUpdateProviderClusterQueryImageParams"

class IsNSObject a => IsMTROtaSoftwareUpdateProviderClusterQueryImageParams a where
  toMTROtaSoftwareUpdateProviderClusterQueryImageParams :: a -> Id MTROtaSoftwareUpdateProviderClusterQueryImageParams

instance IsMTROtaSoftwareUpdateProviderClusterQueryImageParams (Id MTROtaSoftwareUpdateProviderClusterQueryImageParams) where
  toMTROtaSoftwareUpdateProviderClusterQueryImageParams = unsafeCastId

instance IsNSObject (Id MTROtaSoftwareUpdateProviderClusterQueryImageParams) where
  toNSObject = unsafeCastId

-- ---------- MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams ----------

-- | Phantom type for @MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams@.
data MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams

instance IsObjCObject (Id MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams"

class IsNSObject a => IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams a where
  toMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams :: a -> Id MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams

instance IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams (Id MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams) where
  toMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams = unsafeCastId

instance IsNSObject (Id MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams ----------

-- | Phantom type for @MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams@.
data MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams

instance IsObjCObject (Id MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams"

class IsNSObject a => IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams a where
  toMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams :: a -> Id MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams

instance IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams (Id MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams) where
  toMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams = unsafeCastId

instance IsNSObject (Id MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams) where
  toNSObject = unsafeCastId

-- ---------- MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent ----------

-- | Phantom type for @MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent@.
data MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent

instance IsObjCObject (Id MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent"

class IsNSObject a => IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent a where
  toMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent :: a -> Id MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent

instance IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent (Id MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent) where
  toMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent = unsafeCastId

instance IsNSObject (Id MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent) where
  toNSObject = unsafeCastId

-- ---------- MTROtaSoftwareUpdateRequestorClusterProviderLocation ----------

-- | Phantom type for @MTROtaSoftwareUpdateRequestorClusterProviderLocation@.
data MTROtaSoftwareUpdateRequestorClusterProviderLocation

instance IsObjCObject (Id MTROtaSoftwareUpdateRequestorClusterProviderLocation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROtaSoftwareUpdateRequestorClusterProviderLocation"

class IsNSObject a => IsMTROtaSoftwareUpdateRequestorClusterProviderLocation a where
  toMTROtaSoftwareUpdateRequestorClusterProviderLocation :: a -> Id MTROtaSoftwareUpdateRequestorClusterProviderLocation

instance IsMTROtaSoftwareUpdateRequestorClusterProviderLocation (Id MTROtaSoftwareUpdateRequestorClusterProviderLocation) where
  toMTROtaSoftwareUpdateRequestorClusterProviderLocation = unsafeCastId

instance IsNSObject (Id MTROtaSoftwareUpdateRequestorClusterProviderLocation) where
  toNSObject = unsafeCastId

-- ---------- MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent ----------

-- | Phantom type for @MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent@.
data MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent

instance IsObjCObject (Id MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent"

class IsNSObject a => IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent a where
  toMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent :: a -> Id MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent

instance IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent (Id MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent) where
  toMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent = unsafeCastId

instance IsNSObject (Id MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent) where
  toNSObject = unsafeCastId

-- ---------- MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent ----------

-- | Phantom type for @MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent@.
data MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent

instance IsObjCObject (Id MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent"

class IsNSObject a => IsMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent a where
  toMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent :: a -> Id MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent

instance IsMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent (Id MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent) where
  toMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent = unsafeCastId

instance IsNSObject (Id MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPowerSourceClusterBatChargeFaultChangeType ----------

-- | Phantom type for @MTRPowerSourceClusterBatChargeFaultChangeType@.
data MTRPowerSourceClusterBatChargeFaultChangeType

instance IsObjCObject (Id MTRPowerSourceClusterBatChargeFaultChangeType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPowerSourceClusterBatChargeFaultChangeType"

class IsNSObject a => IsMTRPowerSourceClusterBatChargeFaultChangeType a where
  toMTRPowerSourceClusterBatChargeFaultChangeType :: a -> Id MTRPowerSourceClusterBatChargeFaultChangeType

instance IsMTRPowerSourceClusterBatChargeFaultChangeType (Id MTRPowerSourceClusterBatChargeFaultChangeType) where
  toMTRPowerSourceClusterBatChargeFaultChangeType = unsafeCastId

instance IsNSObject (Id MTRPowerSourceClusterBatChargeFaultChangeType) where
  toNSObject = unsafeCastId

-- ---------- MTRPowerSourceClusterBatFaultChangeType ----------

-- | Phantom type for @MTRPowerSourceClusterBatFaultChangeType@.
data MTRPowerSourceClusterBatFaultChangeType

instance IsObjCObject (Id MTRPowerSourceClusterBatFaultChangeType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPowerSourceClusterBatFaultChangeType"

class IsNSObject a => IsMTRPowerSourceClusterBatFaultChangeType a where
  toMTRPowerSourceClusterBatFaultChangeType :: a -> Id MTRPowerSourceClusterBatFaultChangeType

instance IsMTRPowerSourceClusterBatFaultChangeType (Id MTRPowerSourceClusterBatFaultChangeType) where
  toMTRPowerSourceClusterBatFaultChangeType = unsafeCastId

instance IsNSObject (Id MTRPowerSourceClusterBatFaultChangeType) where
  toNSObject = unsafeCastId

-- ---------- MTRPowerSourceClusterWiredFaultChangeType ----------

-- | Phantom type for @MTRPowerSourceClusterWiredFaultChangeType@.
data MTRPowerSourceClusterWiredFaultChangeType

instance IsObjCObject (Id MTRPowerSourceClusterWiredFaultChangeType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPowerSourceClusterWiredFaultChangeType"

class IsNSObject a => IsMTRPowerSourceClusterWiredFaultChangeType a where
  toMTRPowerSourceClusterWiredFaultChangeType :: a -> Id MTRPowerSourceClusterWiredFaultChangeType

instance IsMTRPowerSourceClusterWiredFaultChangeType (Id MTRPowerSourceClusterWiredFaultChangeType) where
  toMTRPowerSourceClusterWiredFaultChangeType = unsafeCastId

instance IsNSObject (Id MTRPowerSourceClusterWiredFaultChangeType) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterAirDetectionEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterAirDetectionEvent@.
data MTRPumpConfigurationAndControlClusterAirDetectionEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterAirDetectionEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterAirDetectionEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterAirDetectionEvent a where
  toMTRPumpConfigurationAndControlClusterAirDetectionEvent :: a -> Id MTRPumpConfigurationAndControlClusterAirDetectionEvent

instance IsMTRPumpConfigurationAndControlClusterAirDetectionEvent (Id MTRPumpConfigurationAndControlClusterAirDetectionEvent) where
  toMTRPumpConfigurationAndControlClusterAirDetectionEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterAirDetectionEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterDryRunningEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterDryRunningEvent@.
data MTRPumpConfigurationAndControlClusterDryRunningEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterDryRunningEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterDryRunningEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterDryRunningEvent a where
  toMTRPumpConfigurationAndControlClusterDryRunningEvent :: a -> Id MTRPumpConfigurationAndControlClusterDryRunningEvent

instance IsMTRPumpConfigurationAndControlClusterDryRunningEvent (Id MTRPumpConfigurationAndControlClusterDryRunningEvent) where
  toMTRPumpConfigurationAndControlClusterDryRunningEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterDryRunningEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent@.
data MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent a where
  toMTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent :: a -> Id MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent

instance IsMTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent (Id MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent) where
  toMTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent@.
data MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent a where
  toMTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent :: a -> Id MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent

instance IsMTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent (Id MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent) where
  toMTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent@.
data MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent a where
  toMTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent :: a -> Id MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent

instance IsMTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent (Id MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent) where
  toMTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterGeneralFaultEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterGeneralFaultEvent@.
data MTRPumpConfigurationAndControlClusterGeneralFaultEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterGeneralFaultEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterGeneralFaultEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterGeneralFaultEvent a where
  toMTRPumpConfigurationAndControlClusterGeneralFaultEvent :: a -> Id MTRPumpConfigurationAndControlClusterGeneralFaultEvent

instance IsMTRPumpConfigurationAndControlClusterGeneralFaultEvent (Id MTRPumpConfigurationAndControlClusterGeneralFaultEvent) where
  toMTRPumpConfigurationAndControlClusterGeneralFaultEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterGeneralFaultEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterLeakageEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterLeakageEvent@.
data MTRPumpConfigurationAndControlClusterLeakageEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterLeakageEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterLeakageEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterLeakageEvent a where
  toMTRPumpConfigurationAndControlClusterLeakageEvent :: a -> Id MTRPumpConfigurationAndControlClusterLeakageEvent

instance IsMTRPumpConfigurationAndControlClusterLeakageEvent (Id MTRPumpConfigurationAndControlClusterLeakageEvent) where
  toMTRPumpConfigurationAndControlClusterLeakageEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterLeakageEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent@.
data MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent a where
  toMTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent :: a -> Id MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent

instance IsMTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent (Id MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent) where
  toMTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent@.
data MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent a where
  toMTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent :: a -> Id MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent

instance IsMTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent (Id MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent) where
  toMTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterPumpBlockedEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterPumpBlockedEvent@.
data MTRPumpConfigurationAndControlClusterPumpBlockedEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterPumpBlockedEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterPumpBlockedEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterPumpBlockedEvent a where
  toMTRPumpConfigurationAndControlClusterPumpBlockedEvent :: a -> Id MTRPumpConfigurationAndControlClusterPumpBlockedEvent

instance IsMTRPumpConfigurationAndControlClusterPumpBlockedEvent (Id MTRPumpConfigurationAndControlClusterPumpBlockedEvent) where
  toMTRPumpConfigurationAndControlClusterPumpBlockedEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterPumpBlockedEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent@.
data MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent a where
  toMTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent :: a -> Id MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent

instance IsMTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent (Id MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent) where
  toMTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterSensorFailureEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterSensorFailureEvent@.
data MTRPumpConfigurationAndControlClusterSensorFailureEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterSensorFailureEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterSensorFailureEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterSensorFailureEvent a where
  toMTRPumpConfigurationAndControlClusterSensorFailureEvent :: a -> Id MTRPumpConfigurationAndControlClusterSensorFailureEvent

instance IsMTRPumpConfigurationAndControlClusterSensorFailureEvent (Id MTRPumpConfigurationAndControlClusterSensorFailureEvent) where
  toMTRPumpConfigurationAndControlClusterSensorFailureEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterSensorFailureEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent@.
data MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent a where
  toMTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent :: a -> Id MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent

instance IsMTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent (Id MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent) where
  toMTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent@.
data MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent a where
  toMTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent :: a -> Id MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent

instance IsMTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent (Id MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent) where
  toMTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterSystemPressureHighEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterSystemPressureHighEvent@.
data MTRPumpConfigurationAndControlClusterSystemPressureHighEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterSystemPressureHighEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterSystemPressureHighEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterSystemPressureHighEvent a where
  toMTRPumpConfigurationAndControlClusterSystemPressureHighEvent :: a -> Id MTRPumpConfigurationAndControlClusterSystemPressureHighEvent

instance IsMTRPumpConfigurationAndControlClusterSystemPressureHighEvent (Id MTRPumpConfigurationAndControlClusterSystemPressureHighEvent) where
  toMTRPumpConfigurationAndControlClusterSystemPressureHighEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterSystemPressureHighEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterSystemPressureLowEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterSystemPressureLowEvent@.
data MTRPumpConfigurationAndControlClusterSystemPressureLowEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterSystemPressureLowEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterSystemPressureLowEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterSystemPressureLowEvent a where
  toMTRPumpConfigurationAndControlClusterSystemPressureLowEvent :: a -> Id MTRPumpConfigurationAndControlClusterSystemPressureLowEvent

instance IsMTRPumpConfigurationAndControlClusterSystemPressureLowEvent (Id MTRPumpConfigurationAndControlClusterSystemPressureLowEvent) where
  toMTRPumpConfigurationAndControlClusterSystemPressureLowEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterSystemPressureLowEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRPumpConfigurationAndControlClusterTurbineOperationEvent ----------

-- | Phantom type for @MTRPumpConfigurationAndControlClusterTurbineOperationEvent@.
data MTRPumpConfigurationAndControlClusterTurbineOperationEvent

instance IsObjCObject (Id MTRPumpConfigurationAndControlClusterTurbineOperationEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRPumpConfigurationAndControlClusterTurbineOperationEvent"

class IsNSObject a => IsMTRPumpConfigurationAndControlClusterTurbineOperationEvent a where
  toMTRPumpConfigurationAndControlClusterTurbineOperationEvent :: a -> Id MTRPumpConfigurationAndControlClusterTurbineOperationEvent

instance IsMTRPumpConfigurationAndControlClusterTurbineOperationEvent (Id MTRPumpConfigurationAndControlClusterTurbineOperationEvent) where
  toMTRPumpConfigurationAndControlClusterTurbineOperationEvent = unsafeCastId

instance IsNSObject (Id MTRPumpConfigurationAndControlClusterTurbineOperationEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRQRCodeSetupPayloadParser ----------

-- | Phantom type for @MTRQRCodeSetupPayloadParser@.
data MTRQRCodeSetupPayloadParser

instance IsObjCObject (Id MTRQRCodeSetupPayloadParser) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRQRCodeSetupPayloadParser"

class IsNSObject a => IsMTRQRCodeSetupPayloadParser a where
  toMTRQRCodeSetupPayloadParser :: a -> Id MTRQRCodeSetupPayloadParser

instance IsMTRQRCodeSetupPayloadParser (Id MTRQRCodeSetupPayloadParser) where
  toMTRQRCodeSetupPayloadParser = unsafeCastId

instance IsNSObject (Id MTRQRCodeSetupPayloadParser) where
  toNSObject = unsafeCastId

-- ---------- MTRReadParams ----------

-- | MTRReadParams    This is used to control the behavior of attribute reads and subscribes.    If not provided (i.e. nil passed for the MTRReadParams argument), will be    treated as if a default-initialized object was passed in.
-- 
-- Phantom type for @MTRReadParams@.
data MTRReadParams

instance IsObjCObject (Id MTRReadParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRReadParams"

class IsNSObject a => IsMTRReadParams a where
  toMTRReadParams :: a -> Id MTRReadParams

instance IsMTRReadParams (Id MTRReadParams) where
  toMTRReadParams = unsafeCastId

instance IsNSObject (Id MTRReadParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterAddSceneParams ----------

-- | Phantom type for @MTRScenesClusterAddSceneParams@.
data MTRScenesClusterAddSceneParams

instance IsObjCObject (Id MTRScenesClusterAddSceneParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterAddSceneParams"

class IsNSObject a => IsMTRScenesClusterAddSceneParams a where
  toMTRScenesClusterAddSceneParams :: a -> Id MTRScenesClusterAddSceneParams

instance IsMTRScenesClusterAddSceneParams (Id MTRScenesClusterAddSceneParams) where
  toMTRScenesClusterAddSceneParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterAddSceneParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterAddSceneResponseParams ----------

-- | Phantom type for @MTRScenesClusterAddSceneResponseParams@.
data MTRScenesClusterAddSceneResponseParams

instance IsObjCObject (Id MTRScenesClusterAddSceneResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterAddSceneResponseParams"

class IsNSObject a => IsMTRScenesClusterAddSceneResponseParams a where
  toMTRScenesClusterAddSceneResponseParams :: a -> Id MTRScenesClusterAddSceneResponseParams

instance IsMTRScenesClusterAddSceneResponseParams (Id MTRScenesClusterAddSceneResponseParams) where
  toMTRScenesClusterAddSceneResponseParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterAddSceneResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterAttributeValuePair ----------

-- | Phantom type for @MTRScenesClusterAttributeValuePair@.
data MTRScenesClusterAttributeValuePair

instance IsObjCObject (Id MTRScenesClusterAttributeValuePair) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterAttributeValuePair"

class IsNSObject a => IsMTRScenesClusterAttributeValuePair a where
  toMTRScenesClusterAttributeValuePair :: a -> Id MTRScenesClusterAttributeValuePair

instance IsMTRScenesClusterAttributeValuePair (Id MTRScenesClusterAttributeValuePair) where
  toMTRScenesClusterAttributeValuePair = unsafeCastId

instance IsNSObject (Id MTRScenesClusterAttributeValuePair) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterCopySceneParams ----------

-- | Phantom type for @MTRScenesClusterCopySceneParams@.
data MTRScenesClusterCopySceneParams

instance IsObjCObject (Id MTRScenesClusterCopySceneParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterCopySceneParams"

class IsNSObject a => IsMTRScenesClusterCopySceneParams a where
  toMTRScenesClusterCopySceneParams :: a -> Id MTRScenesClusterCopySceneParams

instance IsMTRScenesClusterCopySceneParams (Id MTRScenesClusterCopySceneParams) where
  toMTRScenesClusterCopySceneParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterCopySceneParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterCopySceneResponseParams ----------

-- | Phantom type for @MTRScenesClusterCopySceneResponseParams@.
data MTRScenesClusterCopySceneResponseParams

instance IsObjCObject (Id MTRScenesClusterCopySceneResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterCopySceneResponseParams"

class IsNSObject a => IsMTRScenesClusterCopySceneResponseParams a where
  toMTRScenesClusterCopySceneResponseParams :: a -> Id MTRScenesClusterCopySceneResponseParams

instance IsMTRScenesClusterCopySceneResponseParams (Id MTRScenesClusterCopySceneResponseParams) where
  toMTRScenesClusterCopySceneResponseParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterCopySceneResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterEnhancedAddSceneParams ----------

-- | Phantom type for @MTRScenesClusterEnhancedAddSceneParams@.
data MTRScenesClusterEnhancedAddSceneParams

instance IsObjCObject (Id MTRScenesClusterEnhancedAddSceneParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterEnhancedAddSceneParams"

class IsNSObject a => IsMTRScenesClusterEnhancedAddSceneParams a where
  toMTRScenesClusterEnhancedAddSceneParams :: a -> Id MTRScenesClusterEnhancedAddSceneParams

instance IsMTRScenesClusterEnhancedAddSceneParams (Id MTRScenesClusterEnhancedAddSceneParams) where
  toMTRScenesClusterEnhancedAddSceneParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterEnhancedAddSceneParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterEnhancedAddSceneResponseParams ----------

-- | Phantom type for @MTRScenesClusterEnhancedAddSceneResponseParams@.
data MTRScenesClusterEnhancedAddSceneResponseParams

instance IsObjCObject (Id MTRScenesClusterEnhancedAddSceneResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterEnhancedAddSceneResponseParams"

class IsNSObject a => IsMTRScenesClusterEnhancedAddSceneResponseParams a where
  toMTRScenesClusterEnhancedAddSceneResponseParams :: a -> Id MTRScenesClusterEnhancedAddSceneResponseParams

instance IsMTRScenesClusterEnhancedAddSceneResponseParams (Id MTRScenesClusterEnhancedAddSceneResponseParams) where
  toMTRScenesClusterEnhancedAddSceneResponseParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterEnhancedAddSceneResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterEnhancedViewSceneParams ----------

-- | Phantom type for @MTRScenesClusterEnhancedViewSceneParams@.
data MTRScenesClusterEnhancedViewSceneParams

instance IsObjCObject (Id MTRScenesClusterEnhancedViewSceneParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterEnhancedViewSceneParams"

class IsNSObject a => IsMTRScenesClusterEnhancedViewSceneParams a where
  toMTRScenesClusterEnhancedViewSceneParams :: a -> Id MTRScenesClusterEnhancedViewSceneParams

instance IsMTRScenesClusterEnhancedViewSceneParams (Id MTRScenesClusterEnhancedViewSceneParams) where
  toMTRScenesClusterEnhancedViewSceneParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterEnhancedViewSceneParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterEnhancedViewSceneResponseParams ----------

-- | Phantom type for @MTRScenesClusterEnhancedViewSceneResponseParams@.
data MTRScenesClusterEnhancedViewSceneResponseParams

instance IsObjCObject (Id MTRScenesClusterEnhancedViewSceneResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterEnhancedViewSceneResponseParams"

class IsNSObject a => IsMTRScenesClusterEnhancedViewSceneResponseParams a where
  toMTRScenesClusterEnhancedViewSceneResponseParams :: a -> Id MTRScenesClusterEnhancedViewSceneResponseParams

instance IsMTRScenesClusterEnhancedViewSceneResponseParams (Id MTRScenesClusterEnhancedViewSceneResponseParams) where
  toMTRScenesClusterEnhancedViewSceneResponseParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterEnhancedViewSceneResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterExtensionFieldSet ----------

-- | Phantom type for @MTRScenesClusterExtensionFieldSet@.
data MTRScenesClusterExtensionFieldSet

instance IsObjCObject (Id MTRScenesClusterExtensionFieldSet) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterExtensionFieldSet"

class IsNSObject a => IsMTRScenesClusterExtensionFieldSet a where
  toMTRScenesClusterExtensionFieldSet :: a -> Id MTRScenesClusterExtensionFieldSet

instance IsMTRScenesClusterExtensionFieldSet (Id MTRScenesClusterExtensionFieldSet) where
  toMTRScenesClusterExtensionFieldSet = unsafeCastId

instance IsNSObject (Id MTRScenesClusterExtensionFieldSet) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterGetSceneMembershipParams ----------

-- | Phantom type for @MTRScenesClusterGetSceneMembershipParams@.
data MTRScenesClusterGetSceneMembershipParams

instance IsObjCObject (Id MTRScenesClusterGetSceneMembershipParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterGetSceneMembershipParams"

class IsNSObject a => IsMTRScenesClusterGetSceneMembershipParams a where
  toMTRScenesClusterGetSceneMembershipParams :: a -> Id MTRScenesClusterGetSceneMembershipParams

instance IsMTRScenesClusterGetSceneMembershipParams (Id MTRScenesClusterGetSceneMembershipParams) where
  toMTRScenesClusterGetSceneMembershipParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterGetSceneMembershipParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterGetSceneMembershipResponseParams ----------

-- | Phantom type for @MTRScenesClusterGetSceneMembershipResponseParams@.
data MTRScenesClusterGetSceneMembershipResponseParams

instance IsObjCObject (Id MTRScenesClusterGetSceneMembershipResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterGetSceneMembershipResponseParams"

class IsNSObject a => IsMTRScenesClusterGetSceneMembershipResponseParams a where
  toMTRScenesClusterGetSceneMembershipResponseParams :: a -> Id MTRScenesClusterGetSceneMembershipResponseParams

instance IsMTRScenesClusterGetSceneMembershipResponseParams (Id MTRScenesClusterGetSceneMembershipResponseParams) where
  toMTRScenesClusterGetSceneMembershipResponseParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterGetSceneMembershipResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterRecallSceneParams ----------

-- | Phantom type for @MTRScenesClusterRecallSceneParams@.
data MTRScenesClusterRecallSceneParams

instance IsObjCObject (Id MTRScenesClusterRecallSceneParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterRecallSceneParams"

class IsNSObject a => IsMTRScenesClusterRecallSceneParams a where
  toMTRScenesClusterRecallSceneParams :: a -> Id MTRScenesClusterRecallSceneParams

instance IsMTRScenesClusterRecallSceneParams (Id MTRScenesClusterRecallSceneParams) where
  toMTRScenesClusterRecallSceneParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterRecallSceneParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterRemoveAllScenesParams ----------

-- | Phantom type for @MTRScenesClusterRemoveAllScenesParams@.
data MTRScenesClusterRemoveAllScenesParams

instance IsObjCObject (Id MTRScenesClusterRemoveAllScenesParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterRemoveAllScenesParams"

class IsNSObject a => IsMTRScenesClusterRemoveAllScenesParams a where
  toMTRScenesClusterRemoveAllScenesParams :: a -> Id MTRScenesClusterRemoveAllScenesParams

instance IsMTRScenesClusterRemoveAllScenesParams (Id MTRScenesClusterRemoveAllScenesParams) where
  toMTRScenesClusterRemoveAllScenesParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterRemoveAllScenesParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterRemoveAllScenesResponseParams ----------

-- | Phantom type for @MTRScenesClusterRemoveAllScenesResponseParams@.
data MTRScenesClusterRemoveAllScenesResponseParams

instance IsObjCObject (Id MTRScenesClusterRemoveAllScenesResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterRemoveAllScenesResponseParams"

class IsNSObject a => IsMTRScenesClusterRemoveAllScenesResponseParams a where
  toMTRScenesClusterRemoveAllScenesResponseParams :: a -> Id MTRScenesClusterRemoveAllScenesResponseParams

instance IsMTRScenesClusterRemoveAllScenesResponseParams (Id MTRScenesClusterRemoveAllScenesResponseParams) where
  toMTRScenesClusterRemoveAllScenesResponseParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterRemoveAllScenesResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterRemoveSceneParams ----------

-- | Phantom type for @MTRScenesClusterRemoveSceneParams@.
data MTRScenesClusterRemoveSceneParams

instance IsObjCObject (Id MTRScenesClusterRemoveSceneParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterRemoveSceneParams"

class IsNSObject a => IsMTRScenesClusterRemoveSceneParams a where
  toMTRScenesClusterRemoveSceneParams :: a -> Id MTRScenesClusterRemoveSceneParams

instance IsMTRScenesClusterRemoveSceneParams (Id MTRScenesClusterRemoveSceneParams) where
  toMTRScenesClusterRemoveSceneParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterRemoveSceneParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterRemoveSceneResponseParams ----------

-- | Phantom type for @MTRScenesClusterRemoveSceneResponseParams@.
data MTRScenesClusterRemoveSceneResponseParams

instance IsObjCObject (Id MTRScenesClusterRemoveSceneResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterRemoveSceneResponseParams"

class IsNSObject a => IsMTRScenesClusterRemoveSceneResponseParams a where
  toMTRScenesClusterRemoveSceneResponseParams :: a -> Id MTRScenesClusterRemoveSceneResponseParams

instance IsMTRScenesClusterRemoveSceneResponseParams (Id MTRScenesClusterRemoveSceneResponseParams) where
  toMTRScenesClusterRemoveSceneResponseParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterRemoveSceneResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterStoreSceneParams ----------

-- | Phantom type for @MTRScenesClusterStoreSceneParams@.
data MTRScenesClusterStoreSceneParams

instance IsObjCObject (Id MTRScenesClusterStoreSceneParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterStoreSceneParams"

class IsNSObject a => IsMTRScenesClusterStoreSceneParams a where
  toMTRScenesClusterStoreSceneParams :: a -> Id MTRScenesClusterStoreSceneParams

instance IsMTRScenesClusterStoreSceneParams (Id MTRScenesClusterStoreSceneParams) where
  toMTRScenesClusterStoreSceneParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterStoreSceneParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterStoreSceneResponseParams ----------

-- | Phantom type for @MTRScenesClusterStoreSceneResponseParams@.
data MTRScenesClusterStoreSceneResponseParams

instance IsObjCObject (Id MTRScenesClusterStoreSceneResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterStoreSceneResponseParams"

class IsNSObject a => IsMTRScenesClusterStoreSceneResponseParams a where
  toMTRScenesClusterStoreSceneResponseParams :: a -> Id MTRScenesClusterStoreSceneResponseParams

instance IsMTRScenesClusterStoreSceneResponseParams (Id MTRScenesClusterStoreSceneResponseParams) where
  toMTRScenesClusterStoreSceneResponseParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterStoreSceneResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterViewSceneParams ----------

-- | Phantom type for @MTRScenesClusterViewSceneParams@.
data MTRScenesClusterViewSceneParams

instance IsObjCObject (Id MTRScenesClusterViewSceneParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterViewSceneParams"

class IsNSObject a => IsMTRScenesClusterViewSceneParams a where
  toMTRScenesClusterViewSceneParams :: a -> Id MTRScenesClusterViewSceneParams

instance IsMTRScenesClusterViewSceneParams (Id MTRScenesClusterViewSceneParams) where
  toMTRScenesClusterViewSceneParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterViewSceneParams) where
  toNSObject = unsafeCastId

-- ---------- MTRScenesClusterViewSceneResponseParams ----------

-- | Phantom type for @MTRScenesClusterViewSceneResponseParams@.
data MTRScenesClusterViewSceneResponseParams

instance IsObjCObject (Id MTRScenesClusterViewSceneResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRScenesClusterViewSceneResponseParams"

class IsNSObject a => IsMTRScenesClusterViewSceneResponseParams a where
  toMTRScenesClusterViewSceneResponseParams :: a -> Id MTRScenesClusterViewSceneResponseParams

instance IsMTRScenesClusterViewSceneResponseParams (Id MTRScenesClusterViewSceneResponseParams) where
  toMTRScenesClusterViewSceneResponseParams = unsafeCastId

instance IsNSObject (Id MTRScenesClusterViewSceneResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRSetupPayload ----------

-- | Phantom type for @MTRSetupPayload@.
data MTRSetupPayload

instance IsObjCObject (Id MTRSetupPayload) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSetupPayload"

class IsNSObject a => IsMTRSetupPayload a where
  toMTRSetupPayload :: a -> Id MTRSetupPayload

instance IsMTRSetupPayload (Id MTRSetupPayload) where
  toMTRSetupPayload = unsafeCastId

instance IsNSObject (Id MTRSetupPayload) where
  toNSObject = unsafeCastId

-- ---------- MTRSoftwareDiagnosticsClusterResetWatermarksParams ----------

-- | Phantom type for @MTRSoftwareDiagnosticsClusterResetWatermarksParams@.
data MTRSoftwareDiagnosticsClusterResetWatermarksParams

instance IsObjCObject (Id MTRSoftwareDiagnosticsClusterResetWatermarksParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSoftwareDiagnosticsClusterResetWatermarksParams"

class IsNSObject a => IsMTRSoftwareDiagnosticsClusterResetWatermarksParams a where
  toMTRSoftwareDiagnosticsClusterResetWatermarksParams :: a -> Id MTRSoftwareDiagnosticsClusterResetWatermarksParams

instance IsMTRSoftwareDiagnosticsClusterResetWatermarksParams (Id MTRSoftwareDiagnosticsClusterResetWatermarksParams) where
  toMTRSoftwareDiagnosticsClusterResetWatermarksParams = unsafeCastId

instance IsNSObject (Id MTRSoftwareDiagnosticsClusterResetWatermarksParams) where
  toNSObject = unsafeCastId

-- ---------- MTRSoftwareDiagnosticsClusterSoftwareFaultEvent ----------

-- | Phantom type for @MTRSoftwareDiagnosticsClusterSoftwareFaultEvent@.
data MTRSoftwareDiagnosticsClusterSoftwareFaultEvent

instance IsObjCObject (Id MTRSoftwareDiagnosticsClusterSoftwareFaultEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSoftwareDiagnosticsClusterSoftwareFaultEvent"

class IsNSObject a => IsMTRSoftwareDiagnosticsClusterSoftwareFaultEvent a where
  toMTRSoftwareDiagnosticsClusterSoftwareFaultEvent :: a -> Id MTRSoftwareDiagnosticsClusterSoftwareFaultEvent

instance IsMTRSoftwareDiagnosticsClusterSoftwareFaultEvent (Id MTRSoftwareDiagnosticsClusterSoftwareFaultEvent) where
  toMTRSoftwareDiagnosticsClusterSoftwareFaultEvent = unsafeCastId

instance IsNSObject (Id MTRSoftwareDiagnosticsClusterSoftwareFaultEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRSoftwareDiagnosticsClusterThreadMetrics ----------

-- | Phantom type for @MTRSoftwareDiagnosticsClusterThreadMetrics@.
data MTRSoftwareDiagnosticsClusterThreadMetrics

instance IsObjCObject (Id MTRSoftwareDiagnosticsClusterThreadMetrics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSoftwareDiagnosticsClusterThreadMetrics"

class IsNSObject a => IsMTRSoftwareDiagnosticsClusterThreadMetrics a where
  toMTRSoftwareDiagnosticsClusterThreadMetrics :: a -> Id MTRSoftwareDiagnosticsClusterThreadMetrics

instance IsMTRSoftwareDiagnosticsClusterThreadMetrics (Id MTRSoftwareDiagnosticsClusterThreadMetrics) where
  toMTRSoftwareDiagnosticsClusterThreadMetrics = unsafeCastId

instance IsNSObject (Id MTRSoftwareDiagnosticsClusterThreadMetrics) where
  toNSObject = unsafeCastId

-- ---------- MTRSwitchClusterInitialPressEvent ----------

-- | Phantom type for @MTRSwitchClusterInitialPressEvent@.
data MTRSwitchClusterInitialPressEvent

instance IsObjCObject (Id MTRSwitchClusterInitialPressEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSwitchClusterInitialPressEvent"

class IsNSObject a => IsMTRSwitchClusterInitialPressEvent a where
  toMTRSwitchClusterInitialPressEvent :: a -> Id MTRSwitchClusterInitialPressEvent

instance IsMTRSwitchClusterInitialPressEvent (Id MTRSwitchClusterInitialPressEvent) where
  toMTRSwitchClusterInitialPressEvent = unsafeCastId

instance IsNSObject (Id MTRSwitchClusterInitialPressEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRSwitchClusterLongPressEvent ----------

-- | Phantom type for @MTRSwitchClusterLongPressEvent@.
data MTRSwitchClusterLongPressEvent

instance IsObjCObject (Id MTRSwitchClusterLongPressEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSwitchClusterLongPressEvent"

class IsNSObject a => IsMTRSwitchClusterLongPressEvent a where
  toMTRSwitchClusterLongPressEvent :: a -> Id MTRSwitchClusterLongPressEvent

instance IsMTRSwitchClusterLongPressEvent (Id MTRSwitchClusterLongPressEvent) where
  toMTRSwitchClusterLongPressEvent = unsafeCastId

instance IsNSObject (Id MTRSwitchClusterLongPressEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRSwitchClusterLongReleaseEvent ----------

-- | Phantom type for @MTRSwitchClusterLongReleaseEvent@.
data MTRSwitchClusterLongReleaseEvent

instance IsObjCObject (Id MTRSwitchClusterLongReleaseEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSwitchClusterLongReleaseEvent"

class IsNSObject a => IsMTRSwitchClusterLongReleaseEvent a where
  toMTRSwitchClusterLongReleaseEvent :: a -> Id MTRSwitchClusterLongReleaseEvent

instance IsMTRSwitchClusterLongReleaseEvent (Id MTRSwitchClusterLongReleaseEvent) where
  toMTRSwitchClusterLongReleaseEvent = unsafeCastId

instance IsNSObject (Id MTRSwitchClusterLongReleaseEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRSwitchClusterMultiPressCompleteEvent ----------

-- | Phantom type for @MTRSwitchClusterMultiPressCompleteEvent@.
data MTRSwitchClusterMultiPressCompleteEvent

instance IsObjCObject (Id MTRSwitchClusterMultiPressCompleteEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSwitchClusterMultiPressCompleteEvent"

class IsNSObject a => IsMTRSwitchClusterMultiPressCompleteEvent a where
  toMTRSwitchClusterMultiPressCompleteEvent :: a -> Id MTRSwitchClusterMultiPressCompleteEvent

instance IsMTRSwitchClusterMultiPressCompleteEvent (Id MTRSwitchClusterMultiPressCompleteEvent) where
  toMTRSwitchClusterMultiPressCompleteEvent = unsafeCastId

instance IsNSObject (Id MTRSwitchClusterMultiPressCompleteEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRSwitchClusterMultiPressOngoingEvent ----------

-- | Phantom type for @MTRSwitchClusterMultiPressOngoingEvent@.
data MTRSwitchClusterMultiPressOngoingEvent

instance IsObjCObject (Id MTRSwitchClusterMultiPressOngoingEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSwitchClusterMultiPressOngoingEvent"

class IsNSObject a => IsMTRSwitchClusterMultiPressOngoingEvent a where
  toMTRSwitchClusterMultiPressOngoingEvent :: a -> Id MTRSwitchClusterMultiPressOngoingEvent

instance IsMTRSwitchClusterMultiPressOngoingEvent (Id MTRSwitchClusterMultiPressOngoingEvent) where
  toMTRSwitchClusterMultiPressOngoingEvent = unsafeCastId

instance IsNSObject (Id MTRSwitchClusterMultiPressOngoingEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRSwitchClusterShortReleaseEvent ----------

-- | Phantom type for @MTRSwitchClusterShortReleaseEvent@.
data MTRSwitchClusterShortReleaseEvent

instance IsObjCObject (Id MTRSwitchClusterShortReleaseEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSwitchClusterShortReleaseEvent"

class IsNSObject a => IsMTRSwitchClusterShortReleaseEvent a where
  toMTRSwitchClusterShortReleaseEvent :: a -> Id MTRSwitchClusterShortReleaseEvent

instance IsMTRSwitchClusterShortReleaseEvent (Id MTRSwitchClusterShortReleaseEvent) where
  toMTRSwitchClusterShortReleaseEvent = unsafeCastId

instance IsNSObject (Id MTRSwitchClusterShortReleaseEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRSwitchClusterSwitchLatchedEvent ----------

-- | Phantom type for @MTRSwitchClusterSwitchLatchedEvent@.
data MTRSwitchClusterSwitchLatchedEvent

instance IsObjCObject (Id MTRSwitchClusterSwitchLatchedEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSwitchClusterSwitchLatchedEvent"

class IsNSObject a => IsMTRSwitchClusterSwitchLatchedEvent a where
  toMTRSwitchClusterSwitchLatchedEvent :: a -> Id MTRSwitchClusterSwitchLatchedEvent

instance IsMTRSwitchClusterSwitchLatchedEvent (Id MTRSwitchClusterSwitchLatchedEvent) where
  toMTRSwitchClusterSwitchLatchedEvent = unsafeCastId

instance IsNSObject (Id MTRSwitchClusterSwitchLatchedEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRTargetNavigatorClusterNavigateTargetParams ----------

-- | Phantom type for @MTRTargetNavigatorClusterNavigateTargetParams@.
data MTRTargetNavigatorClusterNavigateTargetParams

instance IsObjCObject (Id MTRTargetNavigatorClusterNavigateTargetParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTargetNavigatorClusterNavigateTargetParams"

class IsNSObject a => IsMTRTargetNavigatorClusterNavigateTargetParams a where
  toMTRTargetNavigatorClusterNavigateTargetParams :: a -> Id MTRTargetNavigatorClusterNavigateTargetParams

instance IsMTRTargetNavigatorClusterNavigateTargetParams (Id MTRTargetNavigatorClusterNavigateTargetParams) where
  toMTRTargetNavigatorClusterNavigateTargetParams = unsafeCastId

instance IsNSObject (Id MTRTargetNavigatorClusterNavigateTargetParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTargetNavigatorClusterNavigateTargetResponseParams ----------

-- | Phantom type for @MTRTargetNavigatorClusterNavigateTargetResponseParams@.
data MTRTargetNavigatorClusterNavigateTargetResponseParams

instance IsObjCObject (Id MTRTargetNavigatorClusterNavigateTargetResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTargetNavigatorClusterNavigateTargetResponseParams"

class IsNSObject a => IsMTRTargetNavigatorClusterNavigateTargetResponseParams a where
  toMTRTargetNavigatorClusterNavigateTargetResponseParams :: a -> Id MTRTargetNavigatorClusterNavigateTargetResponseParams

instance IsMTRTargetNavigatorClusterNavigateTargetResponseParams (Id MTRTargetNavigatorClusterNavigateTargetResponseParams) where
  toMTRTargetNavigatorClusterNavigateTargetResponseParams = unsafeCastId

instance IsNSObject (Id MTRTargetNavigatorClusterNavigateTargetResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTargetNavigatorClusterTargetInfo ----------

-- | Phantom type for @MTRTargetNavigatorClusterTargetInfo@.
data MTRTargetNavigatorClusterTargetInfo

instance IsObjCObject (Id MTRTargetNavigatorClusterTargetInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTargetNavigatorClusterTargetInfo"

class IsNSObject a => IsMTRTargetNavigatorClusterTargetInfo a where
  toMTRTargetNavigatorClusterTargetInfo :: a -> Id MTRTargetNavigatorClusterTargetInfo

instance IsMTRTargetNavigatorClusterTargetInfo (Id MTRTargetNavigatorClusterTargetInfo) where
  toMTRTargetNavigatorClusterTargetInfo = unsafeCastId

instance IsNSObject (Id MTRTargetNavigatorClusterTargetInfo) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterBooleanResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterBooleanResponseParams@.
data MTRTestClusterClusterBooleanResponseParams

instance IsObjCObject (Id MTRTestClusterClusterBooleanResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterBooleanResponseParams"

class IsNSObject a => IsMTRTestClusterClusterBooleanResponseParams a where
  toMTRTestClusterClusterBooleanResponseParams :: a -> Id MTRTestClusterClusterBooleanResponseParams

instance IsMTRTestClusterClusterBooleanResponseParams (Id MTRTestClusterClusterBooleanResponseParams) where
  toMTRTestClusterClusterBooleanResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterBooleanResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterDoubleNestedStructList ----------

-- | Phantom type for @MTRTestClusterClusterDoubleNestedStructList@.
data MTRTestClusterClusterDoubleNestedStructList

instance IsObjCObject (Id MTRTestClusterClusterDoubleNestedStructList) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterDoubleNestedStructList"

class IsNSObject a => IsMTRTestClusterClusterDoubleNestedStructList a where
  toMTRTestClusterClusterDoubleNestedStructList :: a -> Id MTRTestClusterClusterDoubleNestedStructList

instance IsMTRTestClusterClusterDoubleNestedStructList (Id MTRTestClusterClusterDoubleNestedStructList) where
  toMTRTestClusterClusterDoubleNestedStructList = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterDoubleNestedStructList) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterNestedStruct ----------

-- | Phantom type for @MTRTestClusterClusterNestedStruct@.
data MTRTestClusterClusterNestedStruct

instance IsObjCObject (Id MTRTestClusterClusterNestedStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterNestedStruct"

class IsNSObject a => IsMTRTestClusterClusterNestedStruct a where
  toMTRTestClusterClusterNestedStruct :: a -> Id MTRTestClusterClusterNestedStruct

instance IsMTRTestClusterClusterNestedStruct (Id MTRTestClusterClusterNestedStruct) where
  toMTRTestClusterClusterNestedStruct = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterNestedStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterNestedStructList ----------

-- | Phantom type for @MTRTestClusterClusterNestedStructList@.
data MTRTestClusterClusterNestedStructList

instance IsObjCObject (Id MTRTestClusterClusterNestedStructList) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterNestedStructList"

class IsNSObject a => IsMTRTestClusterClusterNestedStructList a where
  toMTRTestClusterClusterNestedStructList :: a -> Id MTRTestClusterClusterNestedStructList

instance IsMTRTestClusterClusterNestedStructList (Id MTRTestClusterClusterNestedStructList) where
  toMTRTestClusterClusterNestedStructList = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterNestedStructList) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterNullablesAndOptionalsStruct ----------

-- | Phantom type for @MTRTestClusterClusterNullablesAndOptionalsStruct@.
data MTRTestClusterClusterNullablesAndOptionalsStruct

instance IsObjCObject (Id MTRTestClusterClusterNullablesAndOptionalsStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterNullablesAndOptionalsStruct"

class IsNSObject a => IsMTRTestClusterClusterNullablesAndOptionalsStruct a where
  toMTRTestClusterClusterNullablesAndOptionalsStruct :: a -> Id MTRTestClusterClusterNullablesAndOptionalsStruct

instance IsMTRTestClusterClusterNullablesAndOptionalsStruct (Id MTRTestClusterClusterNullablesAndOptionalsStruct) where
  toMTRTestClusterClusterNullablesAndOptionalsStruct = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterNullablesAndOptionalsStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterSimpleStruct ----------

-- | Phantom type for @MTRTestClusterClusterSimpleStruct@.
data MTRTestClusterClusterSimpleStruct

instance IsObjCObject (Id MTRTestClusterClusterSimpleStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterSimpleStruct"

class IsNSObject a => IsMTRTestClusterClusterSimpleStruct a where
  toMTRTestClusterClusterSimpleStruct :: a -> Id MTRTestClusterClusterSimpleStruct

instance IsMTRTestClusterClusterSimpleStruct (Id MTRTestClusterClusterSimpleStruct) where
  toMTRTestClusterClusterSimpleStruct = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterSimpleStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterSimpleStructEchoRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterSimpleStructEchoRequestParams@.
data MTRTestClusterClusterSimpleStructEchoRequestParams

instance IsObjCObject (Id MTRTestClusterClusterSimpleStructEchoRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterSimpleStructEchoRequestParams"

class IsNSObject a => IsMTRTestClusterClusterSimpleStructEchoRequestParams a where
  toMTRTestClusterClusterSimpleStructEchoRequestParams :: a -> Id MTRTestClusterClusterSimpleStructEchoRequestParams

instance IsMTRTestClusterClusterSimpleStructEchoRequestParams (Id MTRTestClusterClusterSimpleStructEchoRequestParams) where
  toMTRTestClusterClusterSimpleStructEchoRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterSimpleStructEchoRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterSimpleStructResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterSimpleStructResponseParams@.
data MTRTestClusterClusterSimpleStructResponseParams

instance IsObjCObject (Id MTRTestClusterClusterSimpleStructResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterSimpleStructResponseParams"

class IsNSObject a => IsMTRTestClusterClusterSimpleStructResponseParams a where
  toMTRTestClusterClusterSimpleStructResponseParams :: a -> Id MTRTestClusterClusterSimpleStructResponseParams

instance IsMTRTestClusterClusterSimpleStructResponseParams (Id MTRTestClusterClusterSimpleStructResponseParams) where
  toMTRTestClusterClusterSimpleStructResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterSimpleStructResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestAddArgumentsParams ----------

-- | Phantom type for @MTRTestClusterClusterTestAddArgumentsParams@.
data MTRTestClusterClusterTestAddArgumentsParams

instance IsObjCObject (Id MTRTestClusterClusterTestAddArgumentsParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestAddArgumentsParams"

class IsNSObject a => IsMTRTestClusterClusterTestAddArgumentsParams a where
  toMTRTestClusterClusterTestAddArgumentsParams :: a -> Id MTRTestClusterClusterTestAddArgumentsParams

instance IsMTRTestClusterClusterTestAddArgumentsParams (Id MTRTestClusterClusterTestAddArgumentsParams) where
  toMTRTestClusterClusterTestAddArgumentsParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestAddArgumentsParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestAddArgumentsResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterTestAddArgumentsResponseParams@.
data MTRTestClusterClusterTestAddArgumentsResponseParams

instance IsObjCObject (Id MTRTestClusterClusterTestAddArgumentsResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestAddArgumentsResponseParams"

class IsNSObject a => IsMTRTestClusterClusterTestAddArgumentsResponseParams a where
  toMTRTestClusterClusterTestAddArgumentsResponseParams :: a -> Id MTRTestClusterClusterTestAddArgumentsResponseParams

instance IsMTRTestClusterClusterTestAddArgumentsResponseParams (Id MTRTestClusterClusterTestAddArgumentsResponseParams) where
  toMTRTestClusterClusterTestAddArgumentsResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestAddArgumentsResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestComplexNullableOptionalRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestComplexNullableOptionalRequestParams@.
data MTRTestClusterClusterTestComplexNullableOptionalRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestComplexNullableOptionalRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestComplexNullableOptionalRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams a where
  toMTRTestClusterClusterTestComplexNullableOptionalRequestParams :: a -> Id MTRTestClusterClusterTestComplexNullableOptionalRequestParams

instance IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams (Id MTRTestClusterClusterTestComplexNullableOptionalRequestParams) where
  toMTRTestClusterClusterTestComplexNullableOptionalRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestComplexNullableOptionalRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestComplexNullableOptionalResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterTestComplexNullableOptionalResponseParams@.
data MTRTestClusterClusterTestComplexNullableOptionalResponseParams

instance IsObjCObject (Id MTRTestClusterClusterTestComplexNullableOptionalResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestComplexNullableOptionalResponseParams"

class IsNSObject a => IsMTRTestClusterClusterTestComplexNullableOptionalResponseParams a where
  toMTRTestClusterClusterTestComplexNullableOptionalResponseParams :: a -> Id MTRTestClusterClusterTestComplexNullableOptionalResponseParams

instance IsMTRTestClusterClusterTestComplexNullableOptionalResponseParams (Id MTRTestClusterClusterTestComplexNullableOptionalResponseParams) where
  toMTRTestClusterClusterTestComplexNullableOptionalResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestComplexNullableOptionalResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestEmitTestEventRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestEmitTestEventRequestParams@.
data MTRTestClusterClusterTestEmitTestEventRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestEmitTestEventRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestEmitTestEventRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestEmitTestEventRequestParams a where
  toMTRTestClusterClusterTestEmitTestEventRequestParams :: a -> Id MTRTestClusterClusterTestEmitTestEventRequestParams

instance IsMTRTestClusterClusterTestEmitTestEventRequestParams (Id MTRTestClusterClusterTestEmitTestEventRequestParams) where
  toMTRTestClusterClusterTestEmitTestEventRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestEmitTestEventRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestEmitTestEventResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterTestEmitTestEventResponseParams@.
data MTRTestClusterClusterTestEmitTestEventResponseParams

instance IsObjCObject (Id MTRTestClusterClusterTestEmitTestEventResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestEmitTestEventResponseParams"

class IsNSObject a => IsMTRTestClusterClusterTestEmitTestEventResponseParams a where
  toMTRTestClusterClusterTestEmitTestEventResponseParams :: a -> Id MTRTestClusterClusterTestEmitTestEventResponseParams

instance IsMTRTestClusterClusterTestEmitTestEventResponseParams (Id MTRTestClusterClusterTestEmitTestEventResponseParams) where
  toMTRTestClusterClusterTestEmitTestEventResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestEmitTestEventResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams@.
data MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams a where
  toMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams :: a -> Id MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams

instance IsMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams (Id MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams) where
  toMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams@.
data MTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams

instance IsObjCObject (Id MTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams"

class IsNSObject a => IsMTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams a where
  toMTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams :: a -> Id MTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams

instance IsMTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams (Id MTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams) where
  toMTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestEmitTestFabricScopedEventResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestEnumsRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestEnumsRequestParams@.
data MTRTestClusterClusterTestEnumsRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestEnumsRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestEnumsRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestEnumsRequestParams a where
  toMTRTestClusterClusterTestEnumsRequestParams :: a -> Id MTRTestClusterClusterTestEnumsRequestParams

instance IsMTRTestClusterClusterTestEnumsRequestParams (Id MTRTestClusterClusterTestEnumsRequestParams) where
  toMTRTestClusterClusterTestEnumsRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestEnumsRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestEnumsResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterTestEnumsResponseParams@.
data MTRTestClusterClusterTestEnumsResponseParams

instance IsObjCObject (Id MTRTestClusterClusterTestEnumsResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestEnumsResponseParams"

class IsNSObject a => IsMTRTestClusterClusterTestEnumsResponseParams a where
  toMTRTestClusterClusterTestEnumsResponseParams :: a -> Id MTRTestClusterClusterTestEnumsResponseParams

instance IsMTRTestClusterClusterTestEnumsResponseParams (Id MTRTestClusterClusterTestEnumsResponseParams) where
  toMTRTestClusterClusterTestEnumsResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestEnumsResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestEventEvent ----------

-- | Phantom type for @MTRTestClusterClusterTestEventEvent@.
data MTRTestClusterClusterTestEventEvent

instance IsObjCObject (Id MTRTestClusterClusterTestEventEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestEventEvent"

class IsNSObject a => IsMTRTestClusterClusterTestEventEvent a where
  toMTRTestClusterClusterTestEventEvent :: a -> Id MTRTestClusterClusterTestEventEvent

instance IsMTRTestClusterClusterTestEventEvent (Id MTRTestClusterClusterTestEventEvent) where
  toMTRTestClusterClusterTestEventEvent = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestEventEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestFabricScoped ----------

-- | Phantom type for @MTRTestClusterClusterTestFabricScoped@.
data MTRTestClusterClusterTestFabricScoped

instance IsObjCObject (Id MTRTestClusterClusterTestFabricScoped) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestFabricScoped"

class IsNSObject a => IsMTRTestClusterClusterTestFabricScoped a where
  toMTRTestClusterClusterTestFabricScoped :: a -> Id MTRTestClusterClusterTestFabricScoped

instance IsMTRTestClusterClusterTestFabricScoped (Id MTRTestClusterClusterTestFabricScoped) where
  toMTRTestClusterClusterTestFabricScoped = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestFabricScoped) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestFabricScopedEventEvent ----------

-- | Phantom type for @MTRTestClusterClusterTestFabricScopedEventEvent@.
data MTRTestClusterClusterTestFabricScopedEventEvent

instance IsObjCObject (Id MTRTestClusterClusterTestFabricScopedEventEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestFabricScopedEventEvent"

class IsNSObject a => IsMTRTestClusterClusterTestFabricScopedEventEvent a where
  toMTRTestClusterClusterTestFabricScopedEventEvent :: a -> Id MTRTestClusterClusterTestFabricScopedEventEvent

instance IsMTRTestClusterClusterTestFabricScopedEventEvent (Id MTRTestClusterClusterTestFabricScopedEventEvent) where
  toMTRTestClusterClusterTestFabricScopedEventEvent = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestFabricScopedEventEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestListInt8UArgumentRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestListInt8UArgumentRequestParams@.
data MTRTestClusterClusterTestListInt8UArgumentRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestListInt8UArgumentRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestListInt8UArgumentRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestListInt8UArgumentRequestParams a where
  toMTRTestClusterClusterTestListInt8UArgumentRequestParams :: a -> Id MTRTestClusterClusterTestListInt8UArgumentRequestParams

instance IsMTRTestClusterClusterTestListInt8UArgumentRequestParams (Id MTRTestClusterClusterTestListInt8UArgumentRequestParams) where
  toMTRTestClusterClusterTestListInt8UArgumentRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestListInt8UArgumentRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestListInt8UReverseRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestListInt8UReverseRequestParams@.
data MTRTestClusterClusterTestListInt8UReverseRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestListInt8UReverseRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestListInt8UReverseRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestListInt8UReverseRequestParams a where
  toMTRTestClusterClusterTestListInt8UReverseRequestParams :: a -> Id MTRTestClusterClusterTestListInt8UReverseRequestParams

instance IsMTRTestClusterClusterTestListInt8UReverseRequestParams (Id MTRTestClusterClusterTestListInt8UReverseRequestParams) where
  toMTRTestClusterClusterTestListInt8UReverseRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestListInt8UReverseRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestListInt8UReverseResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterTestListInt8UReverseResponseParams@.
data MTRTestClusterClusterTestListInt8UReverseResponseParams

instance IsObjCObject (Id MTRTestClusterClusterTestListInt8UReverseResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestListInt8UReverseResponseParams"

class IsNSObject a => IsMTRTestClusterClusterTestListInt8UReverseResponseParams a where
  toMTRTestClusterClusterTestListInt8UReverseResponseParams :: a -> Id MTRTestClusterClusterTestListInt8UReverseResponseParams

instance IsMTRTestClusterClusterTestListInt8UReverseResponseParams (Id MTRTestClusterClusterTestListInt8UReverseResponseParams) where
  toMTRTestClusterClusterTestListInt8UReverseResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestListInt8UReverseResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestListNestedStructListArgumentRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestListNestedStructListArgumentRequestParams@.
data MTRTestClusterClusterTestListNestedStructListArgumentRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestListNestedStructListArgumentRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestListNestedStructListArgumentRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestListNestedStructListArgumentRequestParams a where
  toMTRTestClusterClusterTestListNestedStructListArgumentRequestParams :: a -> Id MTRTestClusterClusterTestListNestedStructListArgumentRequestParams

instance IsMTRTestClusterClusterTestListNestedStructListArgumentRequestParams (Id MTRTestClusterClusterTestListNestedStructListArgumentRequestParams) where
  toMTRTestClusterClusterTestListNestedStructListArgumentRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestListNestedStructListArgumentRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestListStructArgumentRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestListStructArgumentRequestParams@.
data MTRTestClusterClusterTestListStructArgumentRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestListStructArgumentRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestListStructArgumentRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestListStructArgumentRequestParams a where
  toMTRTestClusterClusterTestListStructArgumentRequestParams :: a -> Id MTRTestClusterClusterTestListStructArgumentRequestParams

instance IsMTRTestClusterClusterTestListStructArgumentRequestParams (Id MTRTestClusterClusterTestListStructArgumentRequestParams) where
  toMTRTestClusterClusterTestListStructArgumentRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestListStructArgumentRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestListStructOctet ----------

-- | Phantom type for @MTRTestClusterClusterTestListStructOctet@.
data MTRTestClusterClusterTestListStructOctet

instance IsObjCObject (Id MTRTestClusterClusterTestListStructOctet) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestListStructOctet"

class IsNSObject a => IsMTRTestClusterClusterTestListStructOctet a where
  toMTRTestClusterClusterTestListStructOctet :: a -> Id MTRTestClusterClusterTestListStructOctet

instance IsMTRTestClusterClusterTestListStructOctet (Id MTRTestClusterClusterTestListStructOctet) where
  toMTRTestClusterClusterTestListStructOctet = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestListStructOctet) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestNestedStructArgumentRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestNestedStructArgumentRequestParams@.
data MTRTestClusterClusterTestNestedStructArgumentRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestNestedStructArgumentRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestNestedStructArgumentRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestNestedStructArgumentRequestParams a where
  toMTRTestClusterClusterTestNestedStructArgumentRequestParams :: a -> Id MTRTestClusterClusterTestNestedStructArgumentRequestParams

instance IsMTRTestClusterClusterTestNestedStructArgumentRequestParams (Id MTRTestClusterClusterTestNestedStructArgumentRequestParams) where
  toMTRTestClusterClusterTestNestedStructArgumentRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestNestedStructArgumentRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestNestedStructListArgumentRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestNestedStructListArgumentRequestParams@.
data MTRTestClusterClusterTestNestedStructListArgumentRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestNestedStructListArgumentRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestNestedStructListArgumentRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestNestedStructListArgumentRequestParams a where
  toMTRTestClusterClusterTestNestedStructListArgumentRequestParams :: a -> Id MTRTestClusterClusterTestNestedStructListArgumentRequestParams

instance IsMTRTestClusterClusterTestNestedStructListArgumentRequestParams (Id MTRTestClusterClusterTestNestedStructListArgumentRequestParams) where
  toMTRTestClusterClusterTestNestedStructListArgumentRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestNestedStructListArgumentRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestNotHandledParams ----------

-- | Phantom type for @MTRTestClusterClusterTestNotHandledParams@.
data MTRTestClusterClusterTestNotHandledParams

instance IsObjCObject (Id MTRTestClusterClusterTestNotHandledParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestNotHandledParams"

class IsNSObject a => IsMTRTestClusterClusterTestNotHandledParams a where
  toMTRTestClusterClusterTestNotHandledParams :: a -> Id MTRTestClusterClusterTestNotHandledParams

instance IsMTRTestClusterClusterTestNotHandledParams (Id MTRTestClusterClusterTestNotHandledParams) where
  toMTRTestClusterClusterTestNotHandledParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestNotHandledParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestNullableOptionalRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestNullableOptionalRequestParams@.
data MTRTestClusterClusterTestNullableOptionalRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestNullableOptionalRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestNullableOptionalRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestNullableOptionalRequestParams a where
  toMTRTestClusterClusterTestNullableOptionalRequestParams :: a -> Id MTRTestClusterClusterTestNullableOptionalRequestParams

instance IsMTRTestClusterClusterTestNullableOptionalRequestParams (Id MTRTestClusterClusterTestNullableOptionalRequestParams) where
  toMTRTestClusterClusterTestNullableOptionalRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestNullableOptionalRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestNullableOptionalResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterTestNullableOptionalResponseParams@.
data MTRTestClusterClusterTestNullableOptionalResponseParams

instance IsObjCObject (Id MTRTestClusterClusterTestNullableOptionalResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestNullableOptionalResponseParams"

class IsNSObject a => IsMTRTestClusterClusterTestNullableOptionalResponseParams a where
  toMTRTestClusterClusterTestNullableOptionalResponseParams :: a -> Id MTRTestClusterClusterTestNullableOptionalResponseParams

instance IsMTRTestClusterClusterTestNullableOptionalResponseParams (Id MTRTestClusterClusterTestNullableOptionalResponseParams) where
  toMTRTestClusterClusterTestNullableOptionalResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestNullableOptionalResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestParams@.
data MTRTestClusterClusterTestParams

instance IsObjCObject (Id MTRTestClusterClusterTestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestParams"

class IsNSObject a => IsMTRTestClusterClusterTestParams a where
  toMTRTestClusterClusterTestParams :: a -> Id MTRTestClusterClusterTestParams

instance IsMTRTestClusterClusterTestParams (Id MTRTestClusterClusterTestParams) where
  toMTRTestClusterClusterTestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestSimpleArgumentRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestSimpleArgumentRequestParams@.
data MTRTestClusterClusterTestSimpleArgumentRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestSimpleArgumentRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestSimpleArgumentRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestSimpleArgumentRequestParams a where
  toMTRTestClusterClusterTestSimpleArgumentRequestParams :: a -> Id MTRTestClusterClusterTestSimpleArgumentRequestParams

instance IsMTRTestClusterClusterTestSimpleArgumentRequestParams (Id MTRTestClusterClusterTestSimpleArgumentRequestParams) where
  toMTRTestClusterClusterTestSimpleArgumentRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestSimpleArgumentRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestSimpleArgumentResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterTestSimpleArgumentResponseParams@.
data MTRTestClusterClusterTestSimpleArgumentResponseParams

instance IsObjCObject (Id MTRTestClusterClusterTestSimpleArgumentResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestSimpleArgumentResponseParams"

class IsNSObject a => IsMTRTestClusterClusterTestSimpleArgumentResponseParams a where
  toMTRTestClusterClusterTestSimpleArgumentResponseParams :: a -> Id MTRTestClusterClusterTestSimpleArgumentResponseParams

instance IsMTRTestClusterClusterTestSimpleArgumentResponseParams (Id MTRTestClusterClusterTestSimpleArgumentResponseParams) where
  toMTRTestClusterClusterTestSimpleArgumentResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestSimpleArgumentResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams@.
data MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams a where
  toMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams :: a -> Id MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams

instance IsMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams (Id MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams) where
  toMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestSpecificParams ----------

-- | Phantom type for @MTRTestClusterClusterTestSpecificParams@.
data MTRTestClusterClusterTestSpecificParams

instance IsObjCObject (Id MTRTestClusterClusterTestSpecificParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestSpecificParams"

class IsNSObject a => IsMTRTestClusterClusterTestSpecificParams a where
  toMTRTestClusterClusterTestSpecificParams :: a -> Id MTRTestClusterClusterTestSpecificParams

instance IsMTRTestClusterClusterTestSpecificParams (Id MTRTestClusterClusterTestSpecificParams) where
  toMTRTestClusterClusterTestSpecificParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestSpecificParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestSpecificResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterTestSpecificResponseParams@.
data MTRTestClusterClusterTestSpecificResponseParams

instance IsObjCObject (Id MTRTestClusterClusterTestSpecificResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestSpecificResponseParams"

class IsNSObject a => IsMTRTestClusterClusterTestSpecificResponseParams a where
  toMTRTestClusterClusterTestSpecificResponseParams :: a -> Id MTRTestClusterClusterTestSpecificResponseParams

instance IsMTRTestClusterClusterTestSpecificResponseParams (Id MTRTestClusterClusterTestSpecificResponseParams) where
  toMTRTestClusterClusterTestSpecificResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestSpecificResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestStructArgumentRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestStructArgumentRequestParams@.
data MTRTestClusterClusterTestStructArgumentRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestStructArgumentRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestStructArgumentRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestStructArgumentRequestParams a where
  toMTRTestClusterClusterTestStructArgumentRequestParams :: a -> Id MTRTestClusterClusterTestStructArgumentRequestParams

instance IsMTRTestClusterClusterTestStructArgumentRequestParams (Id MTRTestClusterClusterTestStructArgumentRequestParams) where
  toMTRTestClusterClusterTestStructArgumentRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestStructArgumentRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestStructArrayArgumentRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTestStructArrayArgumentRequestParams@.
data MTRTestClusterClusterTestStructArrayArgumentRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTestStructArrayArgumentRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestStructArrayArgumentRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTestStructArrayArgumentRequestParams a where
  toMTRTestClusterClusterTestStructArrayArgumentRequestParams :: a -> Id MTRTestClusterClusterTestStructArrayArgumentRequestParams

instance IsMTRTestClusterClusterTestStructArrayArgumentRequestParams (Id MTRTestClusterClusterTestStructArrayArgumentRequestParams) where
  toMTRTestClusterClusterTestStructArrayArgumentRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestStructArrayArgumentRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestStructArrayArgumentResponseParams ----------

-- | Phantom type for @MTRTestClusterClusterTestStructArrayArgumentResponseParams@.
data MTRTestClusterClusterTestStructArrayArgumentResponseParams

instance IsObjCObject (Id MTRTestClusterClusterTestStructArrayArgumentResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestStructArrayArgumentResponseParams"

class IsNSObject a => IsMTRTestClusterClusterTestStructArrayArgumentResponseParams a where
  toMTRTestClusterClusterTestStructArrayArgumentResponseParams :: a -> Id MTRTestClusterClusterTestStructArrayArgumentResponseParams

instance IsMTRTestClusterClusterTestStructArrayArgumentResponseParams (Id MTRTestClusterClusterTestStructArrayArgumentResponseParams) where
  toMTRTestClusterClusterTestStructArrayArgumentResponseParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestStructArrayArgumentResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTestUnknownCommandParams ----------

-- | Phantom type for @MTRTestClusterClusterTestUnknownCommandParams@.
data MTRTestClusterClusterTestUnknownCommandParams

instance IsObjCObject (Id MTRTestClusterClusterTestUnknownCommandParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTestUnknownCommandParams"

class IsNSObject a => IsMTRTestClusterClusterTestUnknownCommandParams a where
  toMTRTestClusterClusterTestUnknownCommandParams :: a -> Id MTRTestClusterClusterTestUnknownCommandParams

instance IsMTRTestClusterClusterTestUnknownCommandParams (Id MTRTestClusterClusterTestUnknownCommandParams) where
  toMTRTestClusterClusterTestUnknownCommandParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTestUnknownCommandParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTestClusterClusterTimedInvokeRequestParams ----------

-- | Phantom type for @MTRTestClusterClusterTimedInvokeRequestParams@.
data MTRTestClusterClusterTimedInvokeRequestParams

instance IsObjCObject (Id MTRTestClusterClusterTimedInvokeRequestParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTestClusterClusterTimedInvokeRequestParams"

class IsNSObject a => IsMTRTestClusterClusterTimedInvokeRequestParams a where
  toMTRTestClusterClusterTimedInvokeRequestParams :: a -> Id MTRTestClusterClusterTimedInvokeRequestParams

instance IsMTRTestClusterClusterTimedInvokeRequestParams (Id MTRTestClusterClusterTimedInvokeRequestParams) where
  toMTRTestClusterClusterTimedInvokeRequestParams = unsafeCastId

instance IsNSObject (Id MTRTestClusterClusterTimedInvokeRequestParams) where
  toNSObject = unsafeCastId

-- ---------- MTRThermostatClusterClearWeeklyScheduleParams ----------

-- | Phantom type for @MTRThermostatClusterClearWeeklyScheduleParams@.
data MTRThermostatClusterClearWeeklyScheduleParams

instance IsObjCObject (Id MTRThermostatClusterClearWeeklyScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThermostatClusterClearWeeklyScheduleParams"

class IsNSObject a => IsMTRThermostatClusterClearWeeklyScheduleParams a where
  toMTRThermostatClusterClearWeeklyScheduleParams :: a -> Id MTRThermostatClusterClearWeeklyScheduleParams

instance IsMTRThermostatClusterClearWeeklyScheduleParams (Id MTRThermostatClusterClearWeeklyScheduleParams) where
  toMTRThermostatClusterClearWeeklyScheduleParams = unsafeCastId

instance IsNSObject (Id MTRThermostatClusterClearWeeklyScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRThermostatClusterGetWeeklyScheduleParams ----------

-- | Phantom type for @MTRThermostatClusterGetWeeklyScheduleParams@.
data MTRThermostatClusterGetWeeklyScheduleParams

instance IsObjCObject (Id MTRThermostatClusterGetWeeklyScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThermostatClusterGetWeeklyScheduleParams"

class IsNSObject a => IsMTRThermostatClusterGetWeeklyScheduleParams a where
  toMTRThermostatClusterGetWeeklyScheduleParams :: a -> Id MTRThermostatClusterGetWeeklyScheduleParams

instance IsMTRThermostatClusterGetWeeklyScheduleParams (Id MTRThermostatClusterGetWeeklyScheduleParams) where
  toMTRThermostatClusterGetWeeklyScheduleParams = unsafeCastId

instance IsNSObject (Id MTRThermostatClusterGetWeeklyScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRThermostatClusterGetWeeklyScheduleResponseParams ----------

-- | Phantom type for @MTRThermostatClusterGetWeeklyScheduleResponseParams@.
data MTRThermostatClusterGetWeeklyScheduleResponseParams

instance IsObjCObject (Id MTRThermostatClusterGetWeeklyScheduleResponseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThermostatClusterGetWeeklyScheduleResponseParams"

class IsNSObject a => IsMTRThermostatClusterGetWeeklyScheduleResponseParams a where
  toMTRThermostatClusterGetWeeklyScheduleResponseParams :: a -> Id MTRThermostatClusterGetWeeklyScheduleResponseParams

instance IsMTRThermostatClusterGetWeeklyScheduleResponseParams (Id MTRThermostatClusterGetWeeklyScheduleResponseParams) where
  toMTRThermostatClusterGetWeeklyScheduleResponseParams = unsafeCastId

instance IsNSObject (Id MTRThermostatClusterGetWeeklyScheduleResponseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRThermostatClusterSetWeeklyScheduleParams ----------

-- | Phantom type for @MTRThermostatClusterSetWeeklyScheduleParams@.
data MTRThermostatClusterSetWeeklyScheduleParams

instance IsObjCObject (Id MTRThermostatClusterSetWeeklyScheduleParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThermostatClusterSetWeeklyScheduleParams"

class IsNSObject a => IsMTRThermostatClusterSetWeeklyScheduleParams a where
  toMTRThermostatClusterSetWeeklyScheduleParams :: a -> Id MTRThermostatClusterSetWeeklyScheduleParams

instance IsMTRThermostatClusterSetWeeklyScheduleParams (Id MTRThermostatClusterSetWeeklyScheduleParams) where
  toMTRThermostatClusterSetWeeklyScheduleParams = unsafeCastId

instance IsNSObject (Id MTRThermostatClusterSetWeeklyScheduleParams) where
  toNSObject = unsafeCastId

-- ---------- MTRThermostatClusterSetpointRaiseLowerParams ----------

-- | Phantom type for @MTRThermostatClusterSetpointRaiseLowerParams@.
data MTRThermostatClusterSetpointRaiseLowerParams

instance IsObjCObject (Id MTRThermostatClusterSetpointRaiseLowerParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThermostatClusterSetpointRaiseLowerParams"

class IsNSObject a => IsMTRThermostatClusterSetpointRaiseLowerParams a where
  toMTRThermostatClusterSetpointRaiseLowerParams :: a -> Id MTRThermostatClusterSetpointRaiseLowerParams

instance IsMTRThermostatClusterSetpointRaiseLowerParams (Id MTRThermostatClusterSetpointRaiseLowerParams) where
  toMTRThermostatClusterSetpointRaiseLowerParams = unsafeCastId

instance IsNSObject (Id MTRThermostatClusterSetpointRaiseLowerParams) where
  toNSObject = unsafeCastId

-- ---------- MTRThermostatClusterThermostatScheduleTransition ----------

-- | Phantom type for @MTRThermostatClusterThermostatScheduleTransition@.
data MTRThermostatClusterThermostatScheduleTransition

instance IsObjCObject (Id MTRThermostatClusterThermostatScheduleTransition) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThermostatClusterThermostatScheduleTransition"

class IsNSObject a => IsMTRThermostatClusterThermostatScheduleTransition a where
  toMTRThermostatClusterThermostatScheduleTransition :: a -> Id MTRThermostatClusterThermostatScheduleTransition

instance IsMTRThermostatClusterThermostatScheduleTransition (Id MTRThermostatClusterThermostatScheduleTransition) where
  toMTRThermostatClusterThermostatScheduleTransition = unsafeCastId

instance IsNSObject (Id MTRThermostatClusterThermostatScheduleTransition) where
  toNSObject = unsafeCastId

-- ---------- MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent ----------

-- | Phantom type for @MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent@.
data MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent

instance IsObjCObject (Id MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent"

class IsNSObject a => IsMTRThreadNetworkDiagnosticsClusterConnectionStatusEvent a where
  toMTRThreadNetworkDiagnosticsClusterConnectionStatusEvent :: a -> Id MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent

instance IsMTRThreadNetworkDiagnosticsClusterConnectionStatusEvent (Id MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent) where
  toMTRThreadNetworkDiagnosticsClusterConnectionStatusEvent = unsafeCastId

instance IsNSObject (Id MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRThreadNetworkDiagnosticsClusterNeighborTable ----------

-- | Phantom type for @MTRThreadNetworkDiagnosticsClusterNeighborTable@.
data MTRThreadNetworkDiagnosticsClusterNeighborTable

instance IsObjCObject (Id MTRThreadNetworkDiagnosticsClusterNeighborTable) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThreadNetworkDiagnosticsClusterNeighborTable"

class IsNSObject a => IsMTRThreadNetworkDiagnosticsClusterNeighborTable a where
  toMTRThreadNetworkDiagnosticsClusterNeighborTable :: a -> Id MTRThreadNetworkDiagnosticsClusterNeighborTable

instance IsMTRThreadNetworkDiagnosticsClusterNeighborTable (Id MTRThreadNetworkDiagnosticsClusterNeighborTable) where
  toMTRThreadNetworkDiagnosticsClusterNeighborTable = unsafeCastId

instance IsNSObject (Id MTRThreadNetworkDiagnosticsClusterNeighborTable) where
  toNSObject = unsafeCastId

-- ---------- MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent ----------

-- | Phantom type for @MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent@.
data MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent

instance IsObjCObject (Id MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent"

class IsNSObject a => IsMTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent a where
  toMTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent :: a -> Id MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent

instance IsMTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent (Id MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent) where
  toMTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent = unsafeCastId

instance IsNSObject (Id MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents ----------

-- | Phantom type for @MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents@.
data MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents

instance IsObjCObject (Id MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents"

class IsNSObject a => IsMTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents a where
  toMTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents :: a -> Id MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents

instance IsMTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents (Id MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents) where
  toMTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents = unsafeCastId

instance IsNSObject (Id MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents) where
  toNSObject = unsafeCastId

-- ---------- MTRThreadNetworkDiagnosticsClusterResetCountsParams ----------

-- | Phantom type for @MTRThreadNetworkDiagnosticsClusterResetCountsParams@.
data MTRThreadNetworkDiagnosticsClusterResetCountsParams

instance IsObjCObject (Id MTRThreadNetworkDiagnosticsClusterResetCountsParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThreadNetworkDiagnosticsClusterResetCountsParams"

class IsNSObject a => IsMTRThreadNetworkDiagnosticsClusterResetCountsParams a where
  toMTRThreadNetworkDiagnosticsClusterResetCountsParams :: a -> Id MTRThreadNetworkDiagnosticsClusterResetCountsParams

instance IsMTRThreadNetworkDiagnosticsClusterResetCountsParams (Id MTRThreadNetworkDiagnosticsClusterResetCountsParams) where
  toMTRThreadNetworkDiagnosticsClusterResetCountsParams = unsafeCastId

instance IsNSObject (Id MTRThreadNetworkDiagnosticsClusterResetCountsParams) where
  toNSObject = unsafeCastId

-- ---------- MTRThreadNetworkDiagnosticsClusterRouteTable ----------

-- | Phantom type for @MTRThreadNetworkDiagnosticsClusterRouteTable@.
data MTRThreadNetworkDiagnosticsClusterRouteTable

instance IsObjCObject (Id MTRThreadNetworkDiagnosticsClusterRouteTable) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThreadNetworkDiagnosticsClusterRouteTable"

class IsNSObject a => IsMTRThreadNetworkDiagnosticsClusterRouteTable a where
  toMTRThreadNetworkDiagnosticsClusterRouteTable :: a -> Id MTRThreadNetworkDiagnosticsClusterRouteTable

instance IsMTRThreadNetworkDiagnosticsClusterRouteTable (Id MTRThreadNetworkDiagnosticsClusterRouteTable) where
  toMTRThreadNetworkDiagnosticsClusterRouteTable = unsafeCastId

instance IsNSObject (Id MTRThreadNetworkDiagnosticsClusterRouteTable) where
  toNSObject = unsafeCastId

-- ---------- MTRThreadNetworkDiagnosticsClusterSecurityPolicy ----------

-- | Phantom type for @MTRThreadNetworkDiagnosticsClusterSecurityPolicy@.
data MTRThreadNetworkDiagnosticsClusterSecurityPolicy

instance IsObjCObject (Id MTRThreadNetworkDiagnosticsClusterSecurityPolicy) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThreadNetworkDiagnosticsClusterSecurityPolicy"

class IsNSObject a => IsMTRThreadNetworkDiagnosticsClusterSecurityPolicy a where
  toMTRThreadNetworkDiagnosticsClusterSecurityPolicy :: a -> Id MTRThreadNetworkDiagnosticsClusterSecurityPolicy

instance IsMTRThreadNetworkDiagnosticsClusterSecurityPolicy (Id MTRThreadNetworkDiagnosticsClusterSecurityPolicy) where
  toMTRThreadNetworkDiagnosticsClusterSecurityPolicy = unsafeCastId

instance IsNSObject (Id MTRThreadNetworkDiagnosticsClusterSecurityPolicy) where
  toNSObject = unsafeCastId

-- ---------- MTRThreadOperationalDataset ----------

-- | Phantom type for @MTRThreadOperationalDataset@.
data MTRThreadOperationalDataset

instance IsObjCObject (Id MTRThreadOperationalDataset) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRThreadOperationalDataset"

class IsNSObject a => IsMTRThreadOperationalDataset a where
  toMTRThreadOperationalDataset :: a -> Id MTRThreadOperationalDataset

instance IsMTRThreadOperationalDataset (Id MTRThreadOperationalDataset) where
  toMTRThreadOperationalDataset = unsafeCastId

instance IsNSObject (Id MTRThreadOperationalDataset) where
  toNSObject = unsafeCastId

-- ---------- MTRTimeSynchronizationClusterDstOffsetType ----------

-- | Phantom type for @MTRTimeSynchronizationClusterDstOffsetType@.
data MTRTimeSynchronizationClusterDstOffsetType

instance IsObjCObject (Id MTRTimeSynchronizationClusterDstOffsetType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTimeSynchronizationClusterDstOffsetType"

class IsNSObject a => IsMTRTimeSynchronizationClusterDstOffsetType a where
  toMTRTimeSynchronizationClusterDstOffsetType :: a -> Id MTRTimeSynchronizationClusterDstOffsetType

instance IsMTRTimeSynchronizationClusterDstOffsetType (Id MTRTimeSynchronizationClusterDstOffsetType) where
  toMTRTimeSynchronizationClusterDstOffsetType = unsafeCastId

instance IsNSObject (Id MTRTimeSynchronizationClusterDstOffsetType) where
  toNSObject = unsafeCastId

-- ---------- MTRTimeSynchronizationClusterSetUtcTimeParams ----------

-- | Phantom type for @MTRTimeSynchronizationClusterSetUtcTimeParams@.
data MTRTimeSynchronizationClusterSetUtcTimeParams

instance IsObjCObject (Id MTRTimeSynchronizationClusterSetUtcTimeParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTimeSynchronizationClusterSetUtcTimeParams"

class IsNSObject a => IsMTRTimeSynchronizationClusterSetUtcTimeParams a where
  toMTRTimeSynchronizationClusterSetUtcTimeParams :: a -> Id MTRTimeSynchronizationClusterSetUtcTimeParams

instance IsMTRTimeSynchronizationClusterSetUtcTimeParams (Id MTRTimeSynchronizationClusterSetUtcTimeParams) where
  toMTRTimeSynchronizationClusterSetUtcTimeParams = unsafeCastId

instance IsNSObject (Id MTRTimeSynchronizationClusterSetUtcTimeParams) where
  toNSObject = unsafeCastId

-- ---------- MTRTimeSynchronizationClusterTimeZoneType ----------

-- | Phantom type for @MTRTimeSynchronizationClusterTimeZoneType@.
data MTRTimeSynchronizationClusterTimeZoneType

instance IsObjCObject (Id MTRTimeSynchronizationClusterTimeZoneType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRTimeSynchronizationClusterTimeZoneType"

class IsNSObject a => IsMTRTimeSynchronizationClusterTimeZoneType a where
  toMTRTimeSynchronizationClusterTimeZoneType :: a -> Id MTRTimeSynchronizationClusterTimeZoneType

instance IsMTRTimeSynchronizationClusterTimeZoneType (Id MTRTimeSynchronizationClusterTimeZoneType) where
  toMTRTimeSynchronizationClusterTimeZoneType = unsafeCastId

instance IsNSObject (Id MTRTimeSynchronizationClusterTimeZoneType) where
  toNSObject = unsafeCastId

-- ---------- MTRUserLabelClusterLabelStruct ----------

-- | Phantom type for @MTRUserLabelClusterLabelStruct@.
data MTRUserLabelClusterLabelStruct

instance IsObjCObject (Id MTRUserLabelClusterLabelStruct) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRUserLabelClusterLabelStruct"

class IsNSObject a => IsMTRUserLabelClusterLabelStruct a where
  toMTRUserLabelClusterLabelStruct :: a -> Id MTRUserLabelClusterLabelStruct

instance IsMTRUserLabelClusterLabelStruct (Id MTRUserLabelClusterLabelStruct) where
  toMTRUserLabelClusterLabelStruct = unsafeCastId

instance IsNSObject (Id MTRUserLabelClusterLabelStruct) where
  toNSObject = unsafeCastId

-- ---------- MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent ----------

-- | Phantom type for @MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent@.
data MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent

instance IsObjCObject (Id MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent"

class IsNSObject a => IsMTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent a where
  toMTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent :: a -> Id MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent

instance IsMTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent (Id MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent) where
  toMTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent = unsafeCastId

instance IsNSObject (Id MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent ----------

-- | Phantom type for @MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent@.
data MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent

instance IsObjCObject (Id MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent"

class IsNSObject a => IsMTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent a where
  toMTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent :: a -> Id MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent

instance IsMTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent (Id MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent) where
  toMTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent = unsafeCastId

instance IsNSObject (Id MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent ----------

-- | Phantom type for @MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent@.
data MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent

instance IsObjCObject (Id MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent"

class IsNSObject a => IsMTRWiFiNetworkDiagnosticsClusterDisconnectionEvent a where
  toMTRWiFiNetworkDiagnosticsClusterDisconnectionEvent :: a -> Id MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent

instance IsMTRWiFiNetworkDiagnosticsClusterDisconnectionEvent (Id MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent) where
  toMTRWiFiNetworkDiagnosticsClusterDisconnectionEvent = unsafeCastId

instance IsNSObject (Id MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent) where
  toNSObject = unsafeCastId

-- ---------- MTRWiFiNetworkDiagnosticsClusterResetCountsParams ----------

-- | Phantom type for @MTRWiFiNetworkDiagnosticsClusterResetCountsParams@.
data MTRWiFiNetworkDiagnosticsClusterResetCountsParams

instance IsObjCObject (Id MTRWiFiNetworkDiagnosticsClusterResetCountsParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWiFiNetworkDiagnosticsClusterResetCountsParams"

class IsNSObject a => IsMTRWiFiNetworkDiagnosticsClusterResetCountsParams a where
  toMTRWiFiNetworkDiagnosticsClusterResetCountsParams :: a -> Id MTRWiFiNetworkDiagnosticsClusterResetCountsParams

instance IsMTRWiFiNetworkDiagnosticsClusterResetCountsParams (Id MTRWiFiNetworkDiagnosticsClusterResetCountsParams) where
  toMTRWiFiNetworkDiagnosticsClusterResetCountsParams = unsafeCastId

instance IsNSObject (Id MTRWiFiNetworkDiagnosticsClusterResetCountsParams) where
  toNSObject = unsafeCastId

-- ---------- MTRWindowCoveringClusterDownOrCloseParams ----------

-- | Phantom type for @MTRWindowCoveringClusterDownOrCloseParams@.
data MTRWindowCoveringClusterDownOrCloseParams

instance IsObjCObject (Id MTRWindowCoveringClusterDownOrCloseParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWindowCoveringClusterDownOrCloseParams"

class IsNSObject a => IsMTRWindowCoveringClusterDownOrCloseParams a where
  toMTRWindowCoveringClusterDownOrCloseParams :: a -> Id MTRWindowCoveringClusterDownOrCloseParams

instance IsMTRWindowCoveringClusterDownOrCloseParams (Id MTRWindowCoveringClusterDownOrCloseParams) where
  toMTRWindowCoveringClusterDownOrCloseParams = unsafeCastId

instance IsNSObject (Id MTRWindowCoveringClusterDownOrCloseParams) where
  toNSObject = unsafeCastId

-- ---------- MTRWindowCoveringClusterGoToLiftPercentageParams ----------

-- | Phantom type for @MTRWindowCoveringClusterGoToLiftPercentageParams@.
data MTRWindowCoveringClusterGoToLiftPercentageParams

instance IsObjCObject (Id MTRWindowCoveringClusterGoToLiftPercentageParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWindowCoveringClusterGoToLiftPercentageParams"

class IsNSObject a => IsMTRWindowCoveringClusterGoToLiftPercentageParams a where
  toMTRWindowCoveringClusterGoToLiftPercentageParams :: a -> Id MTRWindowCoveringClusterGoToLiftPercentageParams

instance IsMTRWindowCoveringClusterGoToLiftPercentageParams (Id MTRWindowCoveringClusterGoToLiftPercentageParams) where
  toMTRWindowCoveringClusterGoToLiftPercentageParams = unsafeCastId

instance IsNSObject (Id MTRWindowCoveringClusterGoToLiftPercentageParams) where
  toNSObject = unsafeCastId

-- ---------- MTRWindowCoveringClusterGoToLiftValueParams ----------

-- | Phantom type for @MTRWindowCoveringClusterGoToLiftValueParams@.
data MTRWindowCoveringClusterGoToLiftValueParams

instance IsObjCObject (Id MTRWindowCoveringClusterGoToLiftValueParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWindowCoveringClusterGoToLiftValueParams"

class IsNSObject a => IsMTRWindowCoveringClusterGoToLiftValueParams a where
  toMTRWindowCoveringClusterGoToLiftValueParams :: a -> Id MTRWindowCoveringClusterGoToLiftValueParams

instance IsMTRWindowCoveringClusterGoToLiftValueParams (Id MTRWindowCoveringClusterGoToLiftValueParams) where
  toMTRWindowCoveringClusterGoToLiftValueParams = unsafeCastId

instance IsNSObject (Id MTRWindowCoveringClusterGoToLiftValueParams) where
  toNSObject = unsafeCastId

-- ---------- MTRWindowCoveringClusterGoToTiltPercentageParams ----------

-- | Phantom type for @MTRWindowCoveringClusterGoToTiltPercentageParams@.
data MTRWindowCoveringClusterGoToTiltPercentageParams

instance IsObjCObject (Id MTRWindowCoveringClusterGoToTiltPercentageParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWindowCoveringClusterGoToTiltPercentageParams"

class IsNSObject a => IsMTRWindowCoveringClusterGoToTiltPercentageParams a where
  toMTRWindowCoveringClusterGoToTiltPercentageParams :: a -> Id MTRWindowCoveringClusterGoToTiltPercentageParams

instance IsMTRWindowCoveringClusterGoToTiltPercentageParams (Id MTRWindowCoveringClusterGoToTiltPercentageParams) where
  toMTRWindowCoveringClusterGoToTiltPercentageParams = unsafeCastId

instance IsNSObject (Id MTRWindowCoveringClusterGoToTiltPercentageParams) where
  toNSObject = unsafeCastId

-- ---------- MTRWindowCoveringClusterGoToTiltValueParams ----------

-- | Phantom type for @MTRWindowCoveringClusterGoToTiltValueParams@.
data MTRWindowCoveringClusterGoToTiltValueParams

instance IsObjCObject (Id MTRWindowCoveringClusterGoToTiltValueParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWindowCoveringClusterGoToTiltValueParams"

class IsNSObject a => IsMTRWindowCoveringClusterGoToTiltValueParams a where
  toMTRWindowCoveringClusterGoToTiltValueParams :: a -> Id MTRWindowCoveringClusterGoToTiltValueParams

instance IsMTRWindowCoveringClusterGoToTiltValueParams (Id MTRWindowCoveringClusterGoToTiltValueParams) where
  toMTRWindowCoveringClusterGoToTiltValueParams = unsafeCastId

instance IsNSObject (Id MTRWindowCoveringClusterGoToTiltValueParams) where
  toNSObject = unsafeCastId

-- ---------- MTRWindowCoveringClusterStopMotionParams ----------

-- | Phantom type for @MTRWindowCoveringClusterStopMotionParams@.
data MTRWindowCoveringClusterStopMotionParams

instance IsObjCObject (Id MTRWindowCoveringClusterStopMotionParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWindowCoveringClusterStopMotionParams"

class IsNSObject a => IsMTRWindowCoveringClusterStopMotionParams a where
  toMTRWindowCoveringClusterStopMotionParams :: a -> Id MTRWindowCoveringClusterStopMotionParams

instance IsMTRWindowCoveringClusterStopMotionParams (Id MTRWindowCoveringClusterStopMotionParams) where
  toMTRWindowCoveringClusterStopMotionParams = unsafeCastId

instance IsNSObject (Id MTRWindowCoveringClusterStopMotionParams) where
  toNSObject = unsafeCastId

-- ---------- MTRWindowCoveringClusterUpOrOpenParams ----------

-- | Phantom type for @MTRWindowCoveringClusterUpOrOpenParams@.
data MTRWindowCoveringClusterUpOrOpenParams

instance IsObjCObject (Id MTRWindowCoveringClusterUpOrOpenParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWindowCoveringClusterUpOrOpenParams"

class IsNSObject a => IsMTRWindowCoveringClusterUpOrOpenParams a where
  toMTRWindowCoveringClusterUpOrOpenParams :: a -> Id MTRWindowCoveringClusterUpOrOpenParams

instance IsMTRWindowCoveringClusterUpOrOpenParams (Id MTRWindowCoveringClusterUpOrOpenParams) where
  toMTRWindowCoveringClusterUpOrOpenParams = unsafeCastId

instance IsNSObject (Id MTRWindowCoveringClusterUpOrOpenParams) where
  toNSObject = unsafeCastId

-- ---------- MTRWriteParams ----------

-- | MTRWriteParams    This is used to control the behavior of cluster writes.    If not provided (i.e. nil passed for the CHIPWriteParams argument), will be    treated as if a default-initialized object was passed in.
-- 
-- Phantom type for @MTRWriteParams@.
data MTRWriteParams

instance IsObjCObject (Id MTRWriteParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRWriteParams"

class IsNSObject a => IsMTRWriteParams a where
  toMTRWriteParams :: a -> Id MTRWriteParams

instance IsMTRWriteParams (Id MTRWriteParams) where
  toMTRWriteParams = unsafeCastId

instance IsNSObject (Id MTRWriteParams) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterAccessControl ----------

-- | Cluster Access Control    The Access Control Cluster exposes a data model view of a      Node's Access Control List (ACL), which codifies the rules used to manage      and enforce Access Control for the Node's endpoints and their associated      cluster instances.
-- 
-- Phantom type for @MTRBaseClusterAccessControl@.
data MTRBaseClusterAccessControl

instance IsObjCObject (Id MTRBaseClusterAccessControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterAccessControl"

class IsMTRCluster a => IsMTRBaseClusterAccessControl a where
  toMTRBaseClusterAccessControl :: a -> Id MTRBaseClusterAccessControl

instance IsMTRBaseClusterAccessControl (Id MTRBaseClusterAccessControl) where
  toMTRBaseClusterAccessControl = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterAccessControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterAccessControl) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterAccountLogin ----------

-- | Cluster Account Login    This cluster provides commands that facilitate user account login on a Content App or a node. For example, a Content App running on a Video Player device, which is represented as an endpoint (see [TV Architecture]), can use this cluster to help make the user account on the Content App match the user account on the Client.
-- 
-- Phantom type for @MTRBaseClusterAccountLogin@.
data MTRBaseClusterAccountLogin

instance IsObjCObject (Id MTRBaseClusterAccountLogin) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterAccountLogin"

class IsMTRCluster a => IsMTRBaseClusterAccountLogin a where
  toMTRBaseClusterAccountLogin :: a -> Id MTRBaseClusterAccountLogin

instance IsMTRBaseClusterAccountLogin (Id MTRBaseClusterAccountLogin) where
  toMTRBaseClusterAccountLogin = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterAccountLogin) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterAccountLogin) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterActions ----------

-- | Cluster Actions    This cluster provides a standardized way for a Node (typically a Bridge, but could be any Node) to expose action information.
-- 
-- Phantom type for @MTRBaseClusterActions@.
data MTRBaseClusterActions

instance IsObjCObject (Id MTRBaseClusterActions) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterActions"

class IsMTRCluster a => IsMTRBaseClusterActions a where
  toMTRBaseClusterActions :: a -> Id MTRBaseClusterActions

instance IsMTRBaseClusterActions (Id MTRBaseClusterActions) where
  toMTRBaseClusterActions = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterActions) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterActions) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterAdministratorCommissioning ----------

-- | Cluster AdministratorCommissioning    Commands to trigger a Node to allow a new Administrator to commission it.
-- 
-- Phantom type for @MTRBaseClusterAdministratorCommissioning@.
data MTRBaseClusterAdministratorCommissioning

instance IsObjCObject (Id MTRBaseClusterAdministratorCommissioning) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterAdministratorCommissioning"

class IsMTRCluster a => IsMTRBaseClusterAdministratorCommissioning a where
  toMTRBaseClusterAdministratorCommissioning :: a -> Id MTRBaseClusterAdministratorCommissioning

instance IsMTRBaseClusterAdministratorCommissioning (Id MTRBaseClusterAdministratorCommissioning) where
  toMTRBaseClusterAdministratorCommissioning = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterAdministratorCommissioning) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterAdministratorCommissioning) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterApplicationBasic ----------

-- | Cluster Application Basic    This cluster provides information about an application running on a TV or media player device which is represented as an endpoint.
-- 
-- Phantom type for @MTRBaseClusterApplicationBasic@.
data MTRBaseClusterApplicationBasic

instance IsObjCObject (Id MTRBaseClusterApplicationBasic) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterApplicationBasic"

class IsMTRCluster a => IsMTRBaseClusterApplicationBasic a where
  toMTRBaseClusterApplicationBasic :: a -> Id MTRBaseClusterApplicationBasic

instance IsMTRBaseClusterApplicationBasic (Id MTRBaseClusterApplicationBasic) where
  toMTRBaseClusterApplicationBasic = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterApplicationBasic) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterApplicationBasic) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterApplicationLauncher ----------

-- | Cluster Application Launcher    This cluster provides an interface for launching content on a media player device such as a TV or Speaker.
-- 
-- Phantom type for @MTRBaseClusterApplicationLauncher@.
data MTRBaseClusterApplicationLauncher

instance IsObjCObject (Id MTRBaseClusterApplicationLauncher) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterApplicationLauncher"

class IsMTRCluster a => IsMTRBaseClusterApplicationLauncher a where
  toMTRBaseClusterApplicationLauncher :: a -> Id MTRBaseClusterApplicationLauncher

instance IsMTRBaseClusterApplicationLauncher (Id MTRBaseClusterApplicationLauncher) where
  toMTRBaseClusterApplicationLauncher = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterApplicationLauncher) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterApplicationLauncher) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterAudioOutput ----------

-- | Cluster Audio Output    This cluster provides an interface for controlling the Output on a media device such as a TV.
-- 
-- Phantom type for @MTRBaseClusterAudioOutput@.
data MTRBaseClusterAudioOutput

instance IsObjCObject (Id MTRBaseClusterAudioOutput) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterAudioOutput"

class IsMTRCluster a => IsMTRBaseClusterAudioOutput a where
  toMTRBaseClusterAudioOutput :: a -> Id MTRBaseClusterAudioOutput

instance IsMTRBaseClusterAudioOutput (Id MTRBaseClusterAudioOutput) where
  toMTRBaseClusterAudioOutput = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterAudioOutput) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterAudioOutput) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterBallastConfiguration ----------

-- | Cluster Ballast Configuration    Attributes and commands for configuring a lighting ballast.
-- 
-- Phantom type for @MTRBaseClusterBallastConfiguration@.
data MTRBaseClusterBallastConfiguration

instance IsObjCObject (Id MTRBaseClusterBallastConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterBallastConfiguration"

class IsMTRCluster a => IsMTRBaseClusterBallastConfiguration a where
  toMTRBaseClusterBallastConfiguration :: a -> Id MTRBaseClusterBallastConfiguration

instance IsMTRBaseClusterBallastConfiguration (Id MTRBaseClusterBallastConfiguration) where
  toMTRBaseClusterBallastConfiguration = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterBallastConfiguration) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterBallastConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterBarrierControl ----------

-- | Cluster Barrier Control    This cluster provides control of a barrier (garage door).
-- 
-- Phantom type for @MTRBaseClusterBarrierControl@.
data MTRBaseClusterBarrierControl

instance IsObjCObject (Id MTRBaseClusterBarrierControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterBarrierControl"

class IsMTRCluster a => IsMTRBaseClusterBarrierControl a where
  toMTRBaseClusterBarrierControl :: a -> Id MTRBaseClusterBarrierControl

instance IsMTRBaseClusterBarrierControl (Id MTRBaseClusterBarrierControl) where
  toMTRBaseClusterBarrierControl = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterBarrierControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterBarrierControl) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterBasic ----------

-- | Cluster Basic    This cluster provides attributes and events for determining basic information about Nodes, which supports both      Commissioning and operational determination of Node characteristics, such as Vendor ID, Product ID and serial number,      which apply to the whole Node. Also allows setting user device information such as location.
-- 
-- Phantom type for @MTRBaseClusterBasic@.
data MTRBaseClusterBasic

instance IsObjCObject (Id MTRBaseClusterBasic) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterBasic"

class IsMTRCluster a => IsMTRBaseClusterBasic a where
  toMTRBaseClusterBasic :: a -> Id MTRBaseClusterBasic

instance IsMTRBaseClusterBasic (Id MTRBaseClusterBasic) where
  toMTRBaseClusterBasic = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterBasic) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterBasic) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterBinaryInputBasic ----------

-- | Cluster Binary Input (Basic)    An interface for reading the value of a binary measurement and accessing various characteristics of that measurement.
-- 
-- Phantom type for @MTRBaseClusterBinaryInputBasic@.
data MTRBaseClusterBinaryInputBasic

instance IsObjCObject (Id MTRBaseClusterBinaryInputBasic) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterBinaryInputBasic"

class IsMTRCluster a => IsMTRBaseClusterBinaryInputBasic a where
  toMTRBaseClusterBinaryInputBasic :: a -> Id MTRBaseClusterBinaryInputBasic

instance IsMTRBaseClusterBinaryInputBasic (Id MTRBaseClusterBinaryInputBasic) where
  toMTRBaseClusterBinaryInputBasic = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterBinaryInputBasic) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterBinaryInputBasic) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterBinding ----------

-- | Cluster Binding    The Binding Cluster is meant to replace the support from the Zigbee Device Object (ZDO) for supporting the binding table.
-- 
-- Phantom type for @MTRBaseClusterBinding@.
data MTRBaseClusterBinding

instance IsObjCObject (Id MTRBaseClusterBinding) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterBinding"

class IsMTRCluster a => IsMTRBaseClusterBinding a where
  toMTRBaseClusterBinding :: a -> Id MTRBaseClusterBinding

instance IsMTRBaseClusterBinding (Id MTRBaseClusterBinding) where
  toMTRBaseClusterBinding = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterBinding) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterBinding) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterBooleanState ----------

-- | Cluster Boolean State    This cluster provides an interface to a boolean state called StateValue.
-- 
-- Phantom type for @MTRBaseClusterBooleanState@.
data MTRBaseClusterBooleanState

instance IsObjCObject (Id MTRBaseClusterBooleanState) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterBooleanState"

class IsMTRCluster a => IsMTRBaseClusterBooleanState a where
  toMTRBaseClusterBooleanState :: a -> Id MTRBaseClusterBooleanState

instance IsMTRBaseClusterBooleanState (Id MTRBaseClusterBooleanState) where
  toMTRBaseClusterBooleanState = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterBooleanState) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterBooleanState) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterBridgedDeviceBasic ----------

-- | Cluster Bridged Device Basic    This Cluster serves two purposes towards a Node communicating with a Bridge: indicate that the functionality on          the Endpoint where it is placed (and its Parts) is bridged from a non-CHIP technology; and provide a centralized          collection of attributes that the Node MAY collect to aid in conveying information regarding the Bridged Device to a user,          such as the vendor name, the model name, or user-assigned name.
-- 
-- Phantom type for @MTRBaseClusterBridgedDeviceBasic@.
data MTRBaseClusterBridgedDeviceBasic

instance IsObjCObject (Id MTRBaseClusterBridgedDeviceBasic) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterBridgedDeviceBasic"

class IsMTRCluster a => IsMTRBaseClusterBridgedDeviceBasic a where
  toMTRBaseClusterBridgedDeviceBasic :: a -> Id MTRBaseClusterBridgedDeviceBasic

instance IsMTRBaseClusterBridgedDeviceBasic (Id MTRBaseClusterBridgedDeviceBasic) where
  toMTRBaseClusterBridgedDeviceBasic = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterBridgedDeviceBasic) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterBridgedDeviceBasic) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterChannel ----------

-- | Cluster Channel    This cluster provides an interface for controlling the current Channel on a device.
-- 
-- Phantom type for @MTRBaseClusterChannel@.
data MTRBaseClusterChannel

instance IsObjCObject (Id MTRBaseClusterChannel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterChannel"

class IsMTRCluster a => IsMTRBaseClusterChannel a where
  toMTRBaseClusterChannel :: a -> Id MTRBaseClusterChannel

instance IsMTRBaseClusterChannel (Id MTRBaseClusterChannel) where
  toMTRBaseClusterChannel = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterChannel) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterChannel) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterColorControl ----------

-- | Cluster Color Control    Attributes and commands for controlling the color properties of a color-capable light.
-- 
-- Phantom type for @MTRBaseClusterColorControl@.
data MTRBaseClusterColorControl

instance IsObjCObject (Id MTRBaseClusterColorControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterColorControl"

class IsMTRCluster a => IsMTRBaseClusterColorControl a where
  toMTRBaseClusterColorControl :: a -> Id MTRBaseClusterColorControl

instance IsMTRBaseClusterColorControl (Id MTRBaseClusterColorControl) where
  toMTRBaseClusterColorControl = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterColorControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterColorControl) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterContentLauncher ----------

-- | Cluster Content Launcher    This cluster provides an interface for launching content on a media player device such as a TV or Speaker.
-- 
-- Phantom type for @MTRBaseClusterContentLauncher@.
data MTRBaseClusterContentLauncher

instance IsObjCObject (Id MTRBaseClusterContentLauncher) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterContentLauncher"

class IsMTRCluster a => IsMTRBaseClusterContentLauncher a where
  toMTRBaseClusterContentLauncher :: a -> Id MTRBaseClusterContentLauncher

instance IsMTRBaseClusterContentLauncher (Id MTRBaseClusterContentLauncher) where
  toMTRBaseClusterContentLauncher = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterContentLauncher) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterContentLauncher) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterDescriptor ----------

-- | Cluster Descriptor    The Descriptor Cluster is meant to replace the support from the Zigbee Device Object (ZDO) for describing a node, its endpoints and clusters.
-- 
-- Phantom type for @MTRBaseClusterDescriptor@.
data MTRBaseClusterDescriptor

instance IsObjCObject (Id MTRBaseClusterDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterDescriptor"

class IsMTRCluster a => IsMTRBaseClusterDescriptor a where
  toMTRBaseClusterDescriptor :: a -> Id MTRBaseClusterDescriptor

instance IsMTRBaseClusterDescriptor (Id MTRBaseClusterDescriptor) where
  toMTRBaseClusterDescriptor = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterDescriptor) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterDiagnosticLogs ----------

-- | Cluster Diagnostic Logs    The cluster provides commands for retrieving unstructured diagnostic logs from a Node that may be used to aid in diagnostics.
-- 
-- Phantom type for @MTRBaseClusterDiagnosticLogs@.
data MTRBaseClusterDiagnosticLogs

instance IsObjCObject (Id MTRBaseClusterDiagnosticLogs) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterDiagnosticLogs"

class IsMTRCluster a => IsMTRBaseClusterDiagnosticLogs a where
  toMTRBaseClusterDiagnosticLogs :: a -> Id MTRBaseClusterDiagnosticLogs

instance IsMTRBaseClusterDiagnosticLogs (Id MTRBaseClusterDiagnosticLogs) where
  toMTRBaseClusterDiagnosticLogs = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterDiagnosticLogs) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterDiagnosticLogs) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterDoorLock ----------

-- | Cluster Door Lock    An interface to a generic way to secure a door
-- 
-- Phantom type for @MTRBaseClusterDoorLock@.
data MTRBaseClusterDoorLock

instance IsObjCObject (Id MTRBaseClusterDoorLock) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterDoorLock"

class IsMTRCluster a => IsMTRBaseClusterDoorLock a where
  toMTRBaseClusterDoorLock :: a -> Id MTRBaseClusterDoorLock

instance IsMTRBaseClusterDoorLock (Id MTRBaseClusterDoorLock) where
  toMTRBaseClusterDoorLock = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterDoorLock) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterDoorLock) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterElectricalMeasurement ----------

-- | Cluster Electrical Measurement    Attributes related to the electrical properties of a device. This cluster is used by power outlets and other devices that need to provide instantaneous data as opposed to metrology data which should be retrieved from the metering cluster..
-- 
-- Phantom type for @MTRBaseClusterElectricalMeasurement@.
data MTRBaseClusterElectricalMeasurement

instance IsObjCObject (Id MTRBaseClusterElectricalMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterElectricalMeasurement"

class IsMTRCluster a => IsMTRBaseClusterElectricalMeasurement a where
  toMTRBaseClusterElectricalMeasurement :: a -> Id MTRBaseClusterElectricalMeasurement

instance IsMTRBaseClusterElectricalMeasurement (Id MTRBaseClusterElectricalMeasurement) where
  toMTRBaseClusterElectricalMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterElectricalMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterElectricalMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterEthernetNetworkDiagnostics ----------

-- | Cluster Ethernet Network Diagnostics    The Ethernet Network Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
-- 
-- Phantom type for @MTRBaseClusterEthernetNetworkDiagnostics@.
data MTRBaseClusterEthernetNetworkDiagnostics

instance IsObjCObject (Id MTRBaseClusterEthernetNetworkDiagnostics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"

class IsMTRCluster a => IsMTRBaseClusterEthernetNetworkDiagnostics a where
  toMTRBaseClusterEthernetNetworkDiagnostics :: a -> Id MTRBaseClusterEthernetNetworkDiagnostics

instance IsMTRBaseClusterEthernetNetworkDiagnostics (Id MTRBaseClusterEthernetNetworkDiagnostics) where
  toMTRBaseClusterEthernetNetworkDiagnostics = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterEthernetNetworkDiagnostics) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterEthernetNetworkDiagnostics) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterFanControl ----------

-- | Cluster Fan Control    An interface for controlling a fan in a heating/cooling system.
-- 
-- Phantom type for @MTRBaseClusterFanControl@.
data MTRBaseClusterFanControl

instance IsObjCObject (Id MTRBaseClusterFanControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterFanControl"

class IsMTRCluster a => IsMTRBaseClusterFanControl a where
  toMTRBaseClusterFanControl :: a -> Id MTRBaseClusterFanControl

instance IsMTRBaseClusterFanControl (Id MTRBaseClusterFanControl) where
  toMTRBaseClusterFanControl = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterFanControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterFanControl) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterFixedLabel ----------

-- | Cluster Fixed Label    The Fixed Label Cluster provides a feature for the device to tag an endpoint with zero or more read onlylabels.
-- 
-- Phantom type for @MTRBaseClusterFixedLabel@.
data MTRBaseClusterFixedLabel

instance IsObjCObject (Id MTRBaseClusterFixedLabel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterFixedLabel"

class IsMTRCluster a => IsMTRBaseClusterFixedLabel a where
  toMTRBaseClusterFixedLabel :: a -> Id MTRBaseClusterFixedLabel

instance IsMTRBaseClusterFixedLabel (Id MTRBaseClusterFixedLabel) where
  toMTRBaseClusterFixedLabel = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterFixedLabel) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterFixedLabel) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterFlowMeasurement ----------

-- | Cluster Flow Measurement    Attributes and commands for configuring the measurement of flow, and reporting flow measurements.
-- 
-- Phantom type for @MTRBaseClusterFlowMeasurement@.
data MTRBaseClusterFlowMeasurement

instance IsObjCObject (Id MTRBaseClusterFlowMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterFlowMeasurement"

class IsMTRCluster a => IsMTRBaseClusterFlowMeasurement a where
  toMTRBaseClusterFlowMeasurement :: a -> Id MTRBaseClusterFlowMeasurement

instance IsMTRBaseClusterFlowMeasurement (Id MTRBaseClusterFlowMeasurement) where
  toMTRBaseClusterFlowMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterFlowMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterFlowMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterGeneralCommissioning ----------

-- | Cluster General Commissioning    This cluster is used to manage global aspects of the Commissioning flow.
-- 
-- Phantom type for @MTRBaseClusterGeneralCommissioning@.
data MTRBaseClusterGeneralCommissioning

instance IsObjCObject (Id MTRBaseClusterGeneralCommissioning) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterGeneralCommissioning"

class IsMTRCluster a => IsMTRBaseClusterGeneralCommissioning a where
  toMTRBaseClusterGeneralCommissioning :: a -> Id MTRBaseClusterGeneralCommissioning

instance IsMTRBaseClusterGeneralCommissioning (Id MTRBaseClusterGeneralCommissioning) where
  toMTRBaseClusterGeneralCommissioning = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterGeneralCommissioning) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterGeneralCommissioning) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterGeneralDiagnostics ----------

-- | Cluster General Diagnostics    The General Diagnostics Cluster, along with other diagnostics clusters, provide a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
-- 
-- Phantom type for @MTRBaseClusterGeneralDiagnostics@.
data MTRBaseClusterGeneralDiagnostics

instance IsObjCObject (Id MTRBaseClusterGeneralDiagnostics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterGeneralDiagnostics"

class IsMTRCluster a => IsMTRBaseClusterGeneralDiagnostics a where
  toMTRBaseClusterGeneralDiagnostics :: a -> Id MTRBaseClusterGeneralDiagnostics

instance IsMTRBaseClusterGeneralDiagnostics (Id MTRBaseClusterGeneralDiagnostics) where
  toMTRBaseClusterGeneralDiagnostics = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterGeneralDiagnostics) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterGeneralDiagnostics) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterGroupKeyManagement ----------

-- | Cluster Group Key Management    The Group Key Management Cluster is the mechanism by which group keys are managed.
-- 
-- Phantom type for @MTRBaseClusterGroupKeyManagement@.
data MTRBaseClusterGroupKeyManagement

instance IsObjCObject (Id MTRBaseClusterGroupKeyManagement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterGroupKeyManagement"

class IsMTRCluster a => IsMTRBaseClusterGroupKeyManagement a where
  toMTRBaseClusterGroupKeyManagement :: a -> Id MTRBaseClusterGroupKeyManagement

instance IsMTRBaseClusterGroupKeyManagement (Id MTRBaseClusterGroupKeyManagement) where
  toMTRBaseClusterGroupKeyManagement = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterGroupKeyManagement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterGroupKeyManagement) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterGroups ----------

-- | Cluster Groups    Attributes and commands for group configuration and manipulation.
-- 
-- Phantom type for @MTRBaseClusterGroups@.
data MTRBaseClusterGroups

instance IsObjCObject (Id MTRBaseClusterGroups) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterGroups"

class IsMTRCluster a => IsMTRBaseClusterGroups a where
  toMTRBaseClusterGroups :: a -> Id MTRBaseClusterGroups

instance IsMTRBaseClusterGroups (Id MTRBaseClusterGroups) where
  toMTRBaseClusterGroups = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterGroups) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterGroups) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterIdentify ----------

-- | Cluster Identify    Attributes and commands for putting a device into Identification mode (e.g. flashing a light).
-- 
-- Phantom type for @MTRBaseClusterIdentify@.
data MTRBaseClusterIdentify

instance IsObjCObject (Id MTRBaseClusterIdentify) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterIdentify"

class IsMTRCluster a => IsMTRBaseClusterIdentify a where
  toMTRBaseClusterIdentify :: a -> Id MTRBaseClusterIdentify

instance IsMTRBaseClusterIdentify (Id MTRBaseClusterIdentify) where
  toMTRBaseClusterIdentify = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterIdentify) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterIdentify) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterIlluminanceMeasurement ----------

-- | Cluster Illuminance Measurement    Attributes and commands for configuring the measurement of illuminance, and reporting illuminance measurements.
-- 
-- Phantom type for @MTRBaseClusterIlluminanceMeasurement@.
data MTRBaseClusterIlluminanceMeasurement

instance IsObjCObject (Id MTRBaseClusterIlluminanceMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterIlluminanceMeasurement"

class IsMTRCluster a => IsMTRBaseClusterIlluminanceMeasurement a where
  toMTRBaseClusterIlluminanceMeasurement :: a -> Id MTRBaseClusterIlluminanceMeasurement

instance IsMTRBaseClusterIlluminanceMeasurement (Id MTRBaseClusterIlluminanceMeasurement) where
  toMTRBaseClusterIlluminanceMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterIlluminanceMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterIlluminanceMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterKeypadInput ----------

-- | Cluster Keypad Input    This cluster provides an interface for controlling a device like a TV using action commands such as UP, DOWN, and SELECT.
-- 
-- Phantom type for @MTRBaseClusterKeypadInput@.
data MTRBaseClusterKeypadInput

instance IsObjCObject (Id MTRBaseClusterKeypadInput) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterKeypadInput"

class IsMTRCluster a => IsMTRBaseClusterKeypadInput a where
  toMTRBaseClusterKeypadInput :: a -> Id MTRBaseClusterKeypadInput

instance IsMTRBaseClusterKeypadInput (Id MTRBaseClusterKeypadInput) where
  toMTRBaseClusterKeypadInput = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterKeypadInput) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterKeypadInput) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterLevelControl ----------

-- | Cluster Level Control    Attributes and commands for controlling devices that can be set to a level between fully 'On' and fully 'Off.'
-- 
-- Phantom type for @MTRBaseClusterLevelControl@.
data MTRBaseClusterLevelControl

instance IsObjCObject (Id MTRBaseClusterLevelControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterLevelControl"

class IsMTRCluster a => IsMTRBaseClusterLevelControl a where
  toMTRBaseClusterLevelControl :: a -> Id MTRBaseClusterLevelControl

instance IsMTRBaseClusterLevelControl (Id MTRBaseClusterLevelControl) where
  toMTRBaseClusterLevelControl = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterLevelControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterLevelControl) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterLocalizationConfiguration ----------

-- | Cluster Localization Configuration    Nodes should be expected to be deployed to any and all regions of the world. These global regions      may have differing common languages, units of measurements, and numerical formatting      standards. As such, Nodes that visually or audibly convey information need a mechanism by which      they can be configured to use a user’s preferred language, units, etc
-- 
-- Phantom type for @MTRBaseClusterLocalizationConfiguration@.
data MTRBaseClusterLocalizationConfiguration

instance IsObjCObject (Id MTRBaseClusterLocalizationConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterLocalizationConfiguration"

class IsMTRCluster a => IsMTRBaseClusterLocalizationConfiguration a where
  toMTRBaseClusterLocalizationConfiguration :: a -> Id MTRBaseClusterLocalizationConfiguration

instance IsMTRBaseClusterLocalizationConfiguration (Id MTRBaseClusterLocalizationConfiguration) where
  toMTRBaseClusterLocalizationConfiguration = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterLocalizationConfiguration) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterLocalizationConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterLowPower ----------

-- | Cluster Low Power    This cluster provides an interface for managing low power mode on a device.
-- 
-- Phantom type for @MTRBaseClusterLowPower@.
data MTRBaseClusterLowPower

instance IsObjCObject (Id MTRBaseClusterLowPower) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterLowPower"

class IsMTRCluster a => IsMTRBaseClusterLowPower a where
  toMTRBaseClusterLowPower :: a -> Id MTRBaseClusterLowPower

instance IsMTRBaseClusterLowPower (Id MTRBaseClusterLowPower) where
  toMTRBaseClusterLowPower = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterLowPower) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterLowPower) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterMediaInput ----------

-- | Cluster Media Input    This cluster provides an interface for controlling the Input Selector on a media device such as a TV.
-- 
-- Phantom type for @MTRBaseClusterMediaInput@.
data MTRBaseClusterMediaInput

instance IsObjCObject (Id MTRBaseClusterMediaInput) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterMediaInput"

class IsMTRCluster a => IsMTRBaseClusterMediaInput a where
  toMTRBaseClusterMediaInput :: a -> Id MTRBaseClusterMediaInput

instance IsMTRBaseClusterMediaInput (Id MTRBaseClusterMediaInput) where
  toMTRBaseClusterMediaInput = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterMediaInput) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterMediaInput) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterMediaPlayback ----------

-- | Cluster Media Playback    This cluster provides an interface for controlling Media Playback (PLAY, PAUSE, etc) on a media device such as a TV or Speaker.
-- 
-- Phantom type for @MTRBaseClusterMediaPlayback@.
data MTRBaseClusterMediaPlayback

instance IsObjCObject (Id MTRBaseClusterMediaPlayback) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterMediaPlayback"

class IsMTRCluster a => IsMTRBaseClusterMediaPlayback a where
  toMTRBaseClusterMediaPlayback :: a -> Id MTRBaseClusterMediaPlayback

instance IsMTRBaseClusterMediaPlayback (Id MTRBaseClusterMediaPlayback) where
  toMTRBaseClusterMediaPlayback = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterMediaPlayback) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterMediaPlayback) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterModeSelect ----------

-- | Cluster Mode Select    Attributes and commands for selecting a mode from a list of supported options.
-- 
-- Phantom type for @MTRBaseClusterModeSelect@.
data MTRBaseClusterModeSelect

instance IsObjCObject (Id MTRBaseClusterModeSelect) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterModeSelect"

class IsMTRCluster a => IsMTRBaseClusterModeSelect a where
  toMTRBaseClusterModeSelect :: a -> Id MTRBaseClusterModeSelect

instance IsMTRBaseClusterModeSelect (Id MTRBaseClusterModeSelect) where
  toMTRBaseClusterModeSelect = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterModeSelect) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterModeSelect) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterNetworkCommissioning ----------

-- | Cluster Network Commissioning    Functionality to configure, enable, disable network credentials and access on a Matter device.
-- 
-- Phantom type for @MTRBaseClusterNetworkCommissioning@.
data MTRBaseClusterNetworkCommissioning

instance IsObjCObject (Id MTRBaseClusterNetworkCommissioning) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterNetworkCommissioning"

class IsMTRCluster a => IsMTRBaseClusterNetworkCommissioning a where
  toMTRBaseClusterNetworkCommissioning :: a -> Id MTRBaseClusterNetworkCommissioning

instance IsMTRBaseClusterNetworkCommissioning (Id MTRBaseClusterNetworkCommissioning) where
  toMTRBaseClusterNetworkCommissioning = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterNetworkCommissioning) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterNetworkCommissioning) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterOccupancySensing ----------

-- | Cluster Occupancy Sensing    Attributes and commands for configuring occupancy sensing, and reporting occupancy status.
-- 
-- Phantom type for @MTRBaseClusterOccupancySensing@.
data MTRBaseClusterOccupancySensing

instance IsObjCObject (Id MTRBaseClusterOccupancySensing) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterOccupancySensing"

class IsMTRCluster a => IsMTRBaseClusterOccupancySensing a where
  toMTRBaseClusterOccupancySensing :: a -> Id MTRBaseClusterOccupancySensing

instance IsMTRBaseClusterOccupancySensing (Id MTRBaseClusterOccupancySensing) where
  toMTRBaseClusterOccupancySensing = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterOccupancySensing) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterOccupancySensing) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterOnOff ----------

-- | Cluster On/Off    Attributes and commands for switching devices between 'On' and 'Off' states.
-- 
-- Phantom type for @MTRBaseClusterOnOff@.
data MTRBaseClusterOnOff

instance IsObjCObject (Id MTRBaseClusterOnOff) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterOnOff"

class IsMTRCluster a => IsMTRBaseClusterOnOff a where
  toMTRBaseClusterOnOff :: a -> Id MTRBaseClusterOnOff

instance IsMTRBaseClusterOnOff (Id MTRBaseClusterOnOff) where
  toMTRBaseClusterOnOff = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterOnOff) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterOnOff) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterOnOffSwitchConfiguration ----------

-- | Cluster On/off Switch Configuration    Attributes and commands for configuring On/Off switching devices.
-- 
-- Phantom type for @MTRBaseClusterOnOffSwitchConfiguration@.
data MTRBaseClusterOnOffSwitchConfiguration

instance IsObjCObject (Id MTRBaseClusterOnOffSwitchConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterOnOffSwitchConfiguration"

class IsMTRCluster a => IsMTRBaseClusterOnOffSwitchConfiguration a where
  toMTRBaseClusterOnOffSwitchConfiguration :: a -> Id MTRBaseClusterOnOffSwitchConfiguration

instance IsMTRBaseClusterOnOffSwitchConfiguration (Id MTRBaseClusterOnOffSwitchConfiguration) where
  toMTRBaseClusterOnOffSwitchConfiguration = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterOnOffSwitchConfiguration) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterOnOffSwitchConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterOperationalCredentials ----------

-- | Cluster Operational Credentials    This cluster is used to add or remove Operational Credentials on a Commissionee or Node, as well as manage the associated Fabrics.
-- 
-- Phantom type for @MTRBaseClusterOperationalCredentials@.
data MTRBaseClusterOperationalCredentials

instance IsObjCObject (Id MTRBaseClusterOperationalCredentials) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterOperationalCredentials"

class IsMTRCluster a => IsMTRBaseClusterOperationalCredentials a where
  toMTRBaseClusterOperationalCredentials :: a -> Id MTRBaseClusterOperationalCredentials

instance IsMTRBaseClusterOperationalCredentials (Id MTRBaseClusterOperationalCredentials) where
  toMTRBaseClusterOperationalCredentials = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterOperationalCredentials) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterOperationalCredentials) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterOtaSoftwareUpdateProvider ----------

-- | Cluster OTA Software Update Provider    Provides an interface for providing OTA software updates
-- 
-- Phantom type for @MTRBaseClusterOtaSoftwareUpdateProvider@.
data MTRBaseClusterOtaSoftwareUpdateProvider

instance IsObjCObject (Id MTRBaseClusterOtaSoftwareUpdateProvider) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterOtaSoftwareUpdateProvider"

class IsMTRCluster a => IsMTRBaseClusterOtaSoftwareUpdateProvider a where
  toMTRBaseClusterOtaSoftwareUpdateProvider :: a -> Id MTRBaseClusterOtaSoftwareUpdateProvider

instance IsMTRBaseClusterOtaSoftwareUpdateProvider (Id MTRBaseClusterOtaSoftwareUpdateProvider) where
  toMTRBaseClusterOtaSoftwareUpdateProvider = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterOtaSoftwareUpdateProvider) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterOtaSoftwareUpdateProvider) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterOtaSoftwareUpdateRequestor ----------

-- | Cluster OTA Software Update Requestor    Provides an interface for downloading and applying OTA software updates
-- 
-- Phantom type for @MTRBaseClusterOtaSoftwareUpdateRequestor@.
data MTRBaseClusterOtaSoftwareUpdateRequestor

instance IsObjCObject (Id MTRBaseClusterOtaSoftwareUpdateRequestor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterOtaSoftwareUpdateRequestor"

class IsMTRCluster a => IsMTRBaseClusterOtaSoftwareUpdateRequestor a where
  toMTRBaseClusterOtaSoftwareUpdateRequestor :: a -> Id MTRBaseClusterOtaSoftwareUpdateRequestor

instance IsMTRBaseClusterOtaSoftwareUpdateRequestor (Id MTRBaseClusterOtaSoftwareUpdateRequestor) where
  toMTRBaseClusterOtaSoftwareUpdateRequestor = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterOtaSoftwareUpdateRequestor) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterOtaSoftwareUpdateRequestor) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterPowerSource ----------

-- | Cluster Power Source    This cluster is used to describe the configuration and capabilities of a physical power source that provides power to the Node.
-- 
-- Phantom type for @MTRBaseClusterPowerSource@.
data MTRBaseClusterPowerSource

instance IsObjCObject (Id MTRBaseClusterPowerSource) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterPowerSource"

class IsMTRCluster a => IsMTRBaseClusterPowerSource a where
  toMTRBaseClusterPowerSource :: a -> Id MTRBaseClusterPowerSource

instance IsMTRBaseClusterPowerSource (Id MTRBaseClusterPowerSource) where
  toMTRBaseClusterPowerSource = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterPowerSource) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterPowerSource) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterPowerSourceConfiguration ----------

-- | Cluster Power Source Configuration    This cluster is used to describe the configuration and capabilities of a Device's power system.
-- 
-- Phantom type for @MTRBaseClusterPowerSourceConfiguration@.
data MTRBaseClusterPowerSourceConfiguration

instance IsObjCObject (Id MTRBaseClusterPowerSourceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterPowerSourceConfiguration"

class IsMTRCluster a => IsMTRBaseClusterPowerSourceConfiguration a where
  toMTRBaseClusterPowerSourceConfiguration :: a -> Id MTRBaseClusterPowerSourceConfiguration

instance IsMTRBaseClusterPowerSourceConfiguration (Id MTRBaseClusterPowerSourceConfiguration) where
  toMTRBaseClusterPowerSourceConfiguration = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterPowerSourceConfiguration) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterPowerSourceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterPressureMeasurement ----------

-- | Cluster Pressure Measurement    Attributes and commands for configuring the measurement of pressure, and reporting pressure measurements.
-- 
-- Phantom type for @MTRBaseClusterPressureMeasurement@.
data MTRBaseClusterPressureMeasurement

instance IsObjCObject (Id MTRBaseClusterPressureMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterPressureMeasurement"

class IsMTRCluster a => IsMTRBaseClusterPressureMeasurement a where
  toMTRBaseClusterPressureMeasurement :: a -> Id MTRBaseClusterPressureMeasurement

instance IsMTRBaseClusterPressureMeasurement (Id MTRBaseClusterPressureMeasurement) where
  toMTRBaseClusterPressureMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterPressureMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterPressureMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterPumpConfigurationAndControl ----------

-- | Cluster Pump Configuration and Control    An interface for configuring and controlling pumps.
-- 
-- Phantom type for @MTRBaseClusterPumpConfigurationAndControl@.
data MTRBaseClusterPumpConfigurationAndControl

instance IsObjCObject (Id MTRBaseClusterPumpConfigurationAndControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterPumpConfigurationAndControl"

class IsMTRCluster a => IsMTRBaseClusterPumpConfigurationAndControl a where
  toMTRBaseClusterPumpConfigurationAndControl :: a -> Id MTRBaseClusterPumpConfigurationAndControl

instance IsMTRBaseClusterPumpConfigurationAndControl (Id MTRBaseClusterPumpConfigurationAndControl) where
  toMTRBaseClusterPumpConfigurationAndControl = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterPumpConfigurationAndControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterPumpConfigurationAndControl) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterRelativeHumidityMeasurement ----------

-- | Cluster Relative Humidity Measurement    Attributes and commands for configuring the measurement of relative humidity, and reporting relative humidity measurements.
-- 
-- Phantom type for @MTRBaseClusterRelativeHumidityMeasurement@.
data MTRBaseClusterRelativeHumidityMeasurement

instance IsObjCObject (Id MTRBaseClusterRelativeHumidityMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterRelativeHumidityMeasurement"

class IsMTRCluster a => IsMTRBaseClusterRelativeHumidityMeasurement a where
  toMTRBaseClusterRelativeHumidityMeasurement :: a -> Id MTRBaseClusterRelativeHumidityMeasurement

instance IsMTRBaseClusterRelativeHumidityMeasurement (Id MTRBaseClusterRelativeHumidityMeasurement) where
  toMTRBaseClusterRelativeHumidityMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterRelativeHumidityMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterRelativeHumidityMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterScenes ----------

-- | Cluster Scenes    Attributes and commands for scene configuration and manipulation.
-- 
-- Phantom type for @MTRBaseClusterScenes@.
data MTRBaseClusterScenes

instance IsObjCObject (Id MTRBaseClusterScenes) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterScenes"

class IsMTRCluster a => IsMTRBaseClusterScenes a where
  toMTRBaseClusterScenes :: a -> Id MTRBaseClusterScenes

instance IsMTRBaseClusterScenes (Id MTRBaseClusterScenes) where
  toMTRBaseClusterScenes = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterScenes) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterScenes) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterSoftwareDiagnostics ----------

-- | Cluster Software Diagnostics    The Software Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
-- 
-- Phantom type for @MTRBaseClusterSoftwareDiagnostics@.
data MTRBaseClusterSoftwareDiagnostics

instance IsObjCObject (Id MTRBaseClusterSoftwareDiagnostics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterSoftwareDiagnostics"

class IsMTRCluster a => IsMTRBaseClusterSoftwareDiagnostics a where
  toMTRBaseClusterSoftwareDiagnostics :: a -> Id MTRBaseClusterSoftwareDiagnostics

instance IsMTRBaseClusterSoftwareDiagnostics (Id MTRBaseClusterSoftwareDiagnostics) where
  toMTRBaseClusterSoftwareDiagnostics = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterSoftwareDiagnostics) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterSoftwareDiagnostics) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterSwitch ----------

-- | Cluster Switch    This cluster exposes interactions with a switch device, for the purpose of using those interactions by other devices.Two types of switch devices are supported: latching switch (e.g. rocker switch) and momentary switch (e.g. push button),distinguished with their feature flags. Interactions with the switch device are exposed as attributes (for the latching switch) andas events (for both types of switches). An interested party MAY subscribe to these attributes/events and thus be informed of theinteractions, and can perform actions based on this, for example by sending commands to perform an action such as controlling alight or a window shade.
-- 
-- Phantom type for @MTRBaseClusterSwitch@.
data MTRBaseClusterSwitch

instance IsObjCObject (Id MTRBaseClusterSwitch) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterSwitch"

class IsMTRCluster a => IsMTRBaseClusterSwitch a where
  toMTRBaseClusterSwitch :: a -> Id MTRBaseClusterSwitch

instance IsMTRBaseClusterSwitch (Id MTRBaseClusterSwitch) where
  toMTRBaseClusterSwitch = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterSwitch) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterSwitch) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterTargetNavigator ----------

-- | Cluster Target Navigator    This cluster provides an interface for UX navigation within a set of targets on a device or endpoint.
-- 
-- Phantom type for @MTRBaseClusterTargetNavigator@.
data MTRBaseClusterTargetNavigator

instance IsObjCObject (Id MTRBaseClusterTargetNavigator) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterTargetNavigator"

class IsMTRCluster a => IsMTRBaseClusterTargetNavigator a where
  toMTRBaseClusterTargetNavigator :: a -> Id MTRBaseClusterTargetNavigator

instance IsMTRBaseClusterTargetNavigator (Id MTRBaseClusterTargetNavigator) where
  toMTRBaseClusterTargetNavigator = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterTargetNavigator) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterTargetNavigator) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterTemperatureMeasurement ----------

-- | Cluster Temperature Measurement    Attributes and commands for configuring the measurement of temperature, and reporting temperature measurements.
-- 
-- Phantom type for @MTRBaseClusterTemperatureMeasurement@.
data MTRBaseClusterTemperatureMeasurement

instance IsObjCObject (Id MTRBaseClusterTemperatureMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterTemperatureMeasurement"

class IsMTRCluster a => IsMTRBaseClusterTemperatureMeasurement a where
  toMTRBaseClusterTemperatureMeasurement :: a -> Id MTRBaseClusterTemperatureMeasurement

instance IsMTRBaseClusterTemperatureMeasurement (Id MTRBaseClusterTemperatureMeasurement) where
  toMTRBaseClusterTemperatureMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterTemperatureMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterTemperatureMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterTestCluster ----------

-- | Cluster Test Cluster    The Test Cluster is meant to validate the generated code
-- 
-- Phantom type for @MTRBaseClusterTestCluster@.
data MTRBaseClusterTestCluster

instance IsObjCObject (Id MTRBaseClusterTestCluster) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterTestCluster"

class IsMTRCluster a => IsMTRBaseClusterTestCluster a where
  toMTRBaseClusterTestCluster :: a -> Id MTRBaseClusterTestCluster

instance IsMTRBaseClusterTestCluster (Id MTRBaseClusterTestCluster) where
  toMTRBaseClusterTestCluster = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterTestCluster) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterTestCluster) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterThermostat ----------

-- | Cluster Thermostat    An interface for configuring and controlling the functionality of a thermostat.
-- 
-- Phantom type for @MTRBaseClusterThermostat@.
data MTRBaseClusterThermostat

instance IsObjCObject (Id MTRBaseClusterThermostat) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterThermostat"

class IsMTRCluster a => IsMTRBaseClusterThermostat a where
  toMTRBaseClusterThermostat :: a -> Id MTRBaseClusterThermostat

instance IsMTRBaseClusterThermostat (Id MTRBaseClusterThermostat) where
  toMTRBaseClusterThermostat = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterThermostat) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterThermostat) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterThermostatUserInterfaceConfiguration ----------

-- | Cluster Thermostat User Interface Configuration    An interface for configuring the user interface of a thermostat (which may be remote from the thermostat).
-- 
-- Phantom type for @MTRBaseClusterThermostatUserInterfaceConfiguration@.
data MTRBaseClusterThermostatUserInterfaceConfiguration

instance IsObjCObject (Id MTRBaseClusterThermostatUserInterfaceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterThermostatUserInterfaceConfiguration"

class IsMTRCluster a => IsMTRBaseClusterThermostatUserInterfaceConfiguration a where
  toMTRBaseClusterThermostatUserInterfaceConfiguration :: a -> Id MTRBaseClusterThermostatUserInterfaceConfiguration

instance IsMTRBaseClusterThermostatUserInterfaceConfiguration (Id MTRBaseClusterThermostatUserInterfaceConfiguration) where
  toMTRBaseClusterThermostatUserInterfaceConfiguration = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterThermostatUserInterfaceConfiguration) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterThermostatUserInterfaceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterThreadNetworkDiagnostics ----------

-- | Cluster Thread Network Diagnostics    The Thread Network Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems
-- 
-- Phantom type for @MTRBaseClusterThreadNetworkDiagnostics@.
data MTRBaseClusterThreadNetworkDiagnostics

instance IsObjCObject (Id MTRBaseClusterThreadNetworkDiagnostics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterThreadNetworkDiagnostics"

class IsMTRCluster a => IsMTRBaseClusterThreadNetworkDiagnostics a where
  toMTRBaseClusterThreadNetworkDiagnostics :: a -> Id MTRBaseClusterThreadNetworkDiagnostics

instance IsMTRBaseClusterThreadNetworkDiagnostics (Id MTRBaseClusterThreadNetworkDiagnostics) where
  toMTRBaseClusterThreadNetworkDiagnostics = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterThreadNetworkDiagnostics) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterThreadNetworkDiagnostics) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterTimeFormatLocalization ----------

-- | Cluster Time Format Localization    Nodes should be expected to be deployed to any and all regions of the world. These global regions      may have differing preferences for how dates and times are conveyed. As such, Nodes that visually      or audibly convey time information need a mechanism by which they can be configured to use a      user’s preferred format.
-- 
-- Phantom type for @MTRBaseClusterTimeFormatLocalization@.
data MTRBaseClusterTimeFormatLocalization

instance IsObjCObject (Id MTRBaseClusterTimeFormatLocalization) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterTimeFormatLocalization"

class IsMTRCluster a => IsMTRBaseClusterTimeFormatLocalization a where
  toMTRBaseClusterTimeFormatLocalization :: a -> Id MTRBaseClusterTimeFormatLocalization

instance IsMTRBaseClusterTimeFormatLocalization (Id MTRBaseClusterTimeFormatLocalization) where
  toMTRBaseClusterTimeFormatLocalization = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterTimeFormatLocalization) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterTimeFormatLocalization) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterUnitLocalization ----------

-- | Cluster Unit Localization    Nodes should be expected to be deployed to any and all regions of the world. These global regions      may have differing preferences for the units in which values are conveyed in communication to a      user. As such, Nodes that visually or audibly convey measurable values to the user need a      mechanism by which they can be configured to use a user’s preferred unit.
-- 
-- Phantom type for @MTRBaseClusterUnitLocalization@.
data MTRBaseClusterUnitLocalization

instance IsObjCObject (Id MTRBaseClusterUnitLocalization) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterUnitLocalization"

class IsMTRCluster a => IsMTRBaseClusterUnitLocalization a where
  toMTRBaseClusterUnitLocalization :: a -> Id MTRBaseClusterUnitLocalization

instance IsMTRBaseClusterUnitLocalization (Id MTRBaseClusterUnitLocalization) where
  toMTRBaseClusterUnitLocalization = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterUnitLocalization) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterUnitLocalization) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterUserLabel ----------

-- | Cluster User Label    The User Label Cluster provides a feature to tag an endpoint with zero or more labels.
-- 
-- Phantom type for @MTRBaseClusterUserLabel@.
data MTRBaseClusterUserLabel

instance IsObjCObject (Id MTRBaseClusterUserLabel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterUserLabel"

class IsMTRCluster a => IsMTRBaseClusterUserLabel a where
  toMTRBaseClusterUserLabel :: a -> Id MTRBaseClusterUserLabel

instance IsMTRBaseClusterUserLabel (Id MTRBaseClusterUserLabel) where
  toMTRBaseClusterUserLabel = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterUserLabel) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterUserLabel) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterWakeOnLan ----------

-- | Cluster Wake on LAN    This cluster provides an interface for managing low power mode on a device that supports the Wake On LAN protocol.
-- 
-- Phantom type for @MTRBaseClusterWakeOnLan@.
data MTRBaseClusterWakeOnLan

instance IsObjCObject (Id MTRBaseClusterWakeOnLan) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterWakeOnLan"

class IsMTRCluster a => IsMTRBaseClusterWakeOnLan a where
  toMTRBaseClusterWakeOnLan :: a -> Id MTRBaseClusterWakeOnLan

instance IsMTRBaseClusterWakeOnLan (Id MTRBaseClusterWakeOnLan) where
  toMTRBaseClusterWakeOnLan = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterWakeOnLan) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterWakeOnLan) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterWiFiNetworkDiagnostics ----------

-- | Cluster WiFi Network Diagnostics    The Wi-Fi Network Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
-- 
-- Phantom type for @MTRBaseClusterWiFiNetworkDiagnostics@.
data MTRBaseClusterWiFiNetworkDiagnostics

instance IsObjCObject (Id MTRBaseClusterWiFiNetworkDiagnostics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"

class IsMTRCluster a => IsMTRBaseClusterWiFiNetworkDiagnostics a where
  toMTRBaseClusterWiFiNetworkDiagnostics :: a -> Id MTRBaseClusterWiFiNetworkDiagnostics

instance IsMTRBaseClusterWiFiNetworkDiagnostics (Id MTRBaseClusterWiFiNetworkDiagnostics) where
  toMTRBaseClusterWiFiNetworkDiagnostics = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterWiFiNetworkDiagnostics) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterWiFiNetworkDiagnostics) where
  toNSObject = unsafeCastId

-- ---------- MTRBaseClusterWindowCovering ----------

-- | Cluster Window Covering    Provides an interface for controlling and adjusting automatic window coverings.
-- 
-- Phantom type for @MTRBaseClusterWindowCovering@.
data MTRBaseClusterWindowCovering

instance IsObjCObject (Id MTRBaseClusterWindowCovering) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRBaseClusterWindowCovering"

class IsMTRCluster a => IsMTRBaseClusterWindowCovering a where
  toMTRBaseClusterWindowCovering :: a -> Id MTRBaseClusterWindowCovering

instance IsMTRBaseClusterWindowCovering (Id MTRBaseClusterWindowCovering) where
  toMTRBaseClusterWindowCovering = unsafeCastId

instance IsMTRCluster (Id MTRBaseClusterWindowCovering) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRBaseClusterWindowCovering) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterAccessControl ----------

-- | Cluster Access Control    The Access Control Cluster exposes a data model view of a      Node's Access Control List (ACL), which codifies the rules used to manage      and enforce Access Control for the Node's endpoints and their associated      cluster instances.
-- 
-- Phantom type for @MTRClusterAccessControl@.
data MTRClusterAccessControl

instance IsObjCObject (Id MTRClusterAccessControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterAccessControl"

class IsMTRCluster a => IsMTRClusterAccessControl a where
  toMTRClusterAccessControl :: a -> Id MTRClusterAccessControl

instance IsMTRClusterAccessControl (Id MTRClusterAccessControl) where
  toMTRClusterAccessControl = unsafeCastId

instance IsMTRCluster (Id MTRClusterAccessControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterAccessControl) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterAccountLogin ----------

-- | Cluster Account Login    This cluster provides commands that facilitate user account login on a Content App or a node. For example, a Content App running on a Video Player device, which is represented as an endpoint (see [TV Architecture]), can use this cluster to help make the user account on the Content App match the user account on the Client.
-- 
-- Phantom type for @MTRClusterAccountLogin@.
data MTRClusterAccountLogin

instance IsObjCObject (Id MTRClusterAccountLogin) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterAccountLogin"

class IsMTRCluster a => IsMTRClusterAccountLogin a where
  toMTRClusterAccountLogin :: a -> Id MTRClusterAccountLogin

instance IsMTRClusterAccountLogin (Id MTRClusterAccountLogin) where
  toMTRClusterAccountLogin = unsafeCastId

instance IsMTRCluster (Id MTRClusterAccountLogin) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterAccountLogin) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterActions ----------

-- | Cluster Actions    This cluster provides a standardized way for a Node (typically a Bridge, but could be any Node) to expose action information.
-- 
-- Phantom type for @MTRClusterActions@.
data MTRClusterActions

instance IsObjCObject (Id MTRClusterActions) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterActions"

class IsMTRCluster a => IsMTRClusterActions a where
  toMTRClusterActions :: a -> Id MTRClusterActions

instance IsMTRClusterActions (Id MTRClusterActions) where
  toMTRClusterActions = unsafeCastId

instance IsMTRCluster (Id MTRClusterActions) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterActions) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterAdministratorCommissioning ----------

-- | Cluster AdministratorCommissioning    Commands to trigger a Node to allow a new Administrator to commission it.
-- 
-- Phantom type for @MTRClusterAdministratorCommissioning@.
data MTRClusterAdministratorCommissioning

instance IsObjCObject (Id MTRClusterAdministratorCommissioning) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterAdministratorCommissioning"

class IsMTRCluster a => IsMTRClusterAdministratorCommissioning a where
  toMTRClusterAdministratorCommissioning :: a -> Id MTRClusterAdministratorCommissioning

instance IsMTRClusterAdministratorCommissioning (Id MTRClusterAdministratorCommissioning) where
  toMTRClusterAdministratorCommissioning = unsafeCastId

instance IsMTRCluster (Id MTRClusterAdministratorCommissioning) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterAdministratorCommissioning) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterApplicationBasic ----------

-- | Cluster Application Basic    This cluster provides information about an application running on a TV or media player device which is represented as an endpoint.
-- 
-- Phantom type for @MTRClusterApplicationBasic@.
data MTRClusterApplicationBasic

instance IsObjCObject (Id MTRClusterApplicationBasic) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterApplicationBasic"

class IsMTRCluster a => IsMTRClusterApplicationBasic a where
  toMTRClusterApplicationBasic :: a -> Id MTRClusterApplicationBasic

instance IsMTRClusterApplicationBasic (Id MTRClusterApplicationBasic) where
  toMTRClusterApplicationBasic = unsafeCastId

instance IsMTRCluster (Id MTRClusterApplicationBasic) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterApplicationBasic) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterApplicationLauncher ----------

-- | Cluster Application Launcher    This cluster provides an interface for launching content on a media player device such as a TV or Speaker.
-- 
-- Phantom type for @MTRClusterApplicationLauncher@.
data MTRClusterApplicationLauncher

instance IsObjCObject (Id MTRClusterApplicationLauncher) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterApplicationLauncher"

class IsMTRCluster a => IsMTRClusterApplicationLauncher a where
  toMTRClusterApplicationLauncher :: a -> Id MTRClusterApplicationLauncher

instance IsMTRClusterApplicationLauncher (Id MTRClusterApplicationLauncher) where
  toMTRClusterApplicationLauncher = unsafeCastId

instance IsMTRCluster (Id MTRClusterApplicationLauncher) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterApplicationLauncher) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterAudioOutput ----------

-- | Cluster Audio Output    This cluster provides an interface for controlling the Output on a media device such as a TV.
-- 
-- Phantom type for @MTRClusterAudioOutput@.
data MTRClusterAudioOutput

instance IsObjCObject (Id MTRClusterAudioOutput) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterAudioOutput"

class IsMTRCluster a => IsMTRClusterAudioOutput a where
  toMTRClusterAudioOutput :: a -> Id MTRClusterAudioOutput

instance IsMTRClusterAudioOutput (Id MTRClusterAudioOutput) where
  toMTRClusterAudioOutput = unsafeCastId

instance IsMTRCluster (Id MTRClusterAudioOutput) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterAudioOutput) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterBallastConfiguration ----------

-- | Cluster Ballast Configuration    Attributes and commands for configuring a lighting ballast.
-- 
-- Phantom type for @MTRClusterBallastConfiguration@.
data MTRClusterBallastConfiguration

instance IsObjCObject (Id MTRClusterBallastConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterBallastConfiguration"

class IsMTRCluster a => IsMTRClusterBallastConfiguration a where
  toMTRClusterBallastConfiguration :: a -> Id MTRClusterBallastConfiguration

instance IsMTRClusterBallastConfiguration (Id MTRClusterBallastConfiguration) where
  toMTRClusterBallastConfiguration = unsafeCastId

instance IsMTRCluster (Id MTRClusterBallastConfiguration) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterBallastConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterBarrierControl ----------

-- | Cluster Barrier Control    This cluster provides control of a barrier (garage door).
-- 
-- Phantom type for @MTRClusterBarrierControl@.
data MTRClusterBarrierControl

instance IsObjCObject (Id MTRClusterBarrierControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterBarrierControl"

class IsMTRCluster a => IsMTRClusterBarrierControl a where
  toMTRClusterBarrierControl :: a -> Id MTRClusterBarrierControl

instance IsMTRClusterBarrierControl (Id MTRClusterBarrierControl) where
  toMTRClusterBarrierControl = unsafeCastId

instance IsMTRCluster (Id MTRClusterBarrierControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterBarrierControl) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterBasic ----------

-- | Cluster Basic    This cluster provides attributes and events for determining basic information about Nodes, which supports both      Commissioning and operational determination of Node characteristics, such as Vendor ID, Product ID and serial number,      which apply to the whole Node. Also allows setting user device information such as location.
-- 
-- Phantom type for @MTRClusterBasic@.
data MTRClusterBasic

instance IsObjCObject (Id MTRClusterBasic) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterBasic"

class IsMTRCluster a => IsMTRClusterBasic a where
  toMTRClusterBasic :: a -> Id MTRClusterBasic

instance IsMTRClusterBasic (Id MTRClusterBasic) where
  toMTRClusterBasic = unsafeCastId

instance IsMTRCluster (Id MTRClusterBasic) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterBasic) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterBinaryInputBasic ----------

-- | Cluster Binary Input (Basic)    An interface for reading the value of a binary measurement and accessing various characteristics of that measurement.
-- 
-- Phantom type for @MTRClusterBinaryInputBasic@.
data MTRClusterBinaryInputBasic

instance IsObjCObject (Id MTRClusterBinaryInputBasic) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterBinaryInputBasic"

class IsMTRCluster a => IsMTRClusterBinaryInputBasic a where
  toMTRClusterBinaryInputBasic :: a -> Id MTRClusterBinaryInputBasic

instance IsMTRClusterBinaryInputBasic (Id MTRClusterBinaryInputBasic) where
  toMTRClusterBinaryInputBasic = unsafeCastId

instance IsMTRCluster (Id MTRClusterBinaryInputBasic) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterBinaryInputBasic) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterBinding ----------

-- | Cluster Binding    The Binding Cluster is meant to replace the support from the Zigbee Device Object (ZDO) for supporting the binding table.
-- 
-- Phantom type for @MTRClusterBinding@.
data MTRClusterBinding

instance IsObjCObject (Id MTRClusterBinding) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterBinding"

class IsMTRCluster a => IsMTRClusterBinding a where
  toMTRClusterBinding :: a -> Id MTRClusterBinding

instance IsMTRClusterBinding (Id MTRClusterBinding) where
  toMTRClusterBinding = unsafeCastId

instance IsMTRCluster (Id MTRClusterBinding) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterBinding) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterBooleanState ----------

-- | Cluster Boolean State    This cluster provides an interface to a boolean state called StateValue.
-- 
-- Phantom type for @MTRClusterBooleanState@.
data MTRClusterBooleanState

instance IsObjCObject (Id MTRClusterBooleanState) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterBooleanState"

class IsMTRCluster a => IsMTRClusterBooleanState a where
  toMTRClusterBooleanState :: a -> Id MTRClusterBooleanState

instance IsMTRClusterBooleanState (Id MTRClusterBooleanState) where
  toMTRClusterBooleanState = unsafeCastId

instance IsMTRCluster (Id MTRClusterBooleanState) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterBooleanState) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterBridgedDeviceBasic ----------

-- | Cluster Bridged Device Basic    This Cluster serves two purposes towards a Node communicating with a Bridge: indicate that the functionality on          the Endpoint where it is placed (and its Parts) is bridged from a non-CHIP technology; and provide a centralized          collection of attributes that the Node MAY collect to aid in conveying information regarding the Bridged Device to a user,          such as the vendor name, the model name, or user-assigned name.
-- 
-- Phantom type for @MTRClusterBridgedDeviceBasic@.
data MTRClusterBridgedDeviceBasic

instance IsObjCObject (Id MTRClusterBridgedDeviceBasic) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterBridgedDeviceBasic"

class IsMTRCluster a => IsMTRClusterBridgedDeviceBasic a where
  toMTRClusterBridgedDeviceBasic :: a -> Id MTRClusterBridgedDeviceBasic

instance IsMTRClusterBridgedDeviceBasic (Id MTRClusterBridgedDeviceBasic) where
  toMTRClusterBridgedDeviceBasic = unsafeCastId

instance IsMTRCluster (Id MTRClusterBridgedDeviceBasic) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterBridgedDeviceBasic) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterChannel ----------

-- | Cluster Channel    This cluster provides an interface for controlling the current Channel on a device.
-- 
-- Phantom type for @MTRClusterChannel@.
data MTRClusterChannel

instance IsObjCObject (Id MTRClusterChannel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterChannel"

class IsMTRCluster a => IsMTRClusterChannel a where
  toMTRClusterChannel :: a -> Id MTRClusterChannel

instance IsMTRClusterChannel (Id MTRClusterChannel) where
  toMTRClusterChannel = unsafeCastId

instance IsMTRCluster (Id MTRClusterChannel) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterChannel) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterColorControl ----------

-- | Cluster Color Control    Attributes and commands for controlling the color properties of a color-capable light.
-- 
-- Phantom type for @MTRClusterColorControl@.
data MTRClusterColorControl

instance IsObjCObject (Id MTRClusterColorControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterColorControl"

class IsMTRCluster a => IsMTRClusterColorControl a where
  toMTRClusterColorControl :: a -> Id MTRClusterColorControl

instance IsMTRClusterColorControl (Id MTRClusterColorControl) where
  toMTRClusterColorControl = unsafeCastId

instance IsMTRCluster (Id MTRClusterColorControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterColorControl) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterContentLauncher ----------

-- | Cluster Content Launcher    This cluster provides an interface for launching content on a media player device such as a TV or Speaker.
-- 
-- Phantom type for @MTRClusterContentLauncher@.
data MTRClusterContentLauncher

instance IsObjCObject (Id MTRClusterContentLauncher) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterContentLauncher"

class IsMTRCluster a => IsMTRClusterContentLauncher a where
  toMTRClusterContentLauncher :: a -> Id MTRClusterContentLauncher

instance IsMTRClusterContentLauncher (Id MTRClusterContentLauncher) where
  toMTRClusterContentLauncher = unsafeCastId

instance IsMTRCluster (Id MTRClusterContentLauncher) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterContentLauncher) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterDescriptor ----------

-- | Cluster Descriptor    The Descriptor Cluster is meant to replace the support from the Zigbee Device Object (ZDO) for describing a node, its endpoints and clusters.
-- 
-- Phantom type for @MTRClusterDescriptor@.
data MTRClusterDescriptor

instance IsObjCObject (Id MTRClusterDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterDescriptor"

class IsMTRCluster a => IsMTRClusterDescriptor a where
  toMTRClusterDescriptor :: a -> Id MTRClusterDescriptor

instance IsMTRClusterDescriptor (Id MTRClusterDescriptor) where
  toMTRClusterDescriptor = unsafeCastId

instance IsMTRCluster (Id MTRClusterDescriptor) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterDiagnosticLogs ----------

-- | Cluster Diagnostic Logs    The cluster provides commands for retrieving unstructured diagnostic logs from a Node that may be used to aid in diagnostics.
-- 
-- Phantom type for @MTRClusterDiagnosticLogs@.
data MTRClusterDiagnosticLogs

instance IsObjCObject (Id MTRClusterDiagnosticLogs) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterDiagnosticLogs"

class IsMTRCluster a => IsMTRClusterDiagnosticLogs a where
  toMTRClusterDiagnosticLogs :: a -> Id MTRClusterDiagnosticLogs

instance IsMTRClusterDiagnosticLogs (Id MTRClusterDiagnosticLogs) where
  toMTRClusterDiagnosticLogs = unsafeCastId

instance IsMTRCluster (Id MTRClusterDiagnosticLogs) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterDiagnosticLogs) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterDoorLock ----------

-- | Cluster Door Lock    An interface to a generic way to secure a door
-- 
-- Phantom type for @MTRClusterDoorLock@.
data MTRClusterDoorLock

instance IsObjCObject (Id MTRClusterDoorLock) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterDoorLock"

class IsMTRCluster a => IsMTRClusterDoorLock a where
  toMTRClusterDoorLock :: a -> Id MTRClusterDoorLock

instance IsMTRClusterDoorLock (Id MTRClusterDoorLock) where
  toMTRClusterDoorLock = unsafeCastId

instance IsMTRCluster (Id MTRClusterDoorLock) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterDoorLock) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterElectricalMeasurement ----------

-- | Cluster Electrical Measurement    Attributes related to the electrical properties of a device. This cluster is used by power outlets and other devices that need to provide instantaneous data as opposed to metrology data which should be retrieved from the metering cluster..
-- 
-- Phantom type for @MTRClusterElectricalMeasurement@.
data MTRClusterElectricalMeasurement

instance IsObjCObject (Id MTRClusterElectricalMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterElectricalMeasurement"

class IsMTRCluster a => IsMTRClusterElectricalMeasurement a where
  toMTRClusterElectricalMeasurement :: a -> Id MTRClusterElectricalMeasurement

instance IsMTRClusterElectricalMeasurement (Id MTRClusterElectricalMeasurement) where
  toMTRClusterElectricalMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRClusterElectricalMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterElectricalMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterEthernetNetworkDiagnostics ----------

-- | Cluster Ethernet Network Diagnostics    The Ethernet Network Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
-- 
-- Phantom type for @MTRClusterEthernetNetworkDiagnostics@.
data MTRClusterEthernetNetworkDiagnostics

instance IsObjCObject (Id MTRClusterEthernetNetworkDiagnostics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterEthernetNetworkDiagnostics"

class IsMTRCluster a => IsMTRClusterEthernetNetworkDiagnostics a where
  toMTRClusterEthernetNetworkDiagnostics :: a -> Id MTRClusterEthernetNetworkDiagnostics

instance IsMTRClusterEthernetNetworkDiagnostics (Id MTRClusterEthernetNetworkDiagnostics) where
  toMTRClusterEthernetNetworkDiagnostics = unsafeCastId

instance IsMTRCluster (Id MTRClusterEthernetNetworkDiagnostics) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterEthernetNetworkDiagnostics) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterFanControl ----------

-- | Cluster Fan Control    An interface for controlling a fan in a heating/cooling system.
-- 
-- Phantom type for @MTRClusterFanControl@.
data MTRClusterFanControl

instance IsObjCObject (Id MTRClusterFanControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterFanControl"

class IsMTRCluster a => IsMTRClusterFanControl a where
  toMTRClusterFanControl :: a -> Id MTRClusterFanControl

instance IsMTRClusterFanControl (Id MTRClusterFanControl) where
  toMTRClusterFanControl = unsafeCastId

instance IsMTRCluster (Id MTRClusterFanControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterFanControl) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterFixedLabel ----------

-- | Cluster Fixed Label    The Fixed Label Cluster provides a feature for the device to tag an endpoint with zero or more read onlylabels.
-- 
-- Phantom type for @MTRClusterFixedLabel@.
data MTRClusterFixedLabel

instance IsObjCObject (Id MTRClusterFixedLabel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterFixedLabel"

class IsMTRCluster a => IsMTRClusterFixedLabel a where
  toMTRClusterFixedLabel :: a -> Id MTRClusterFixedLabel

instance IsMTRClusterFixedLabel (Id MTRClusterFixedLabel) where
  toMTRClusterFixedLabel = unsafeCastId

instance IsMTRCluster (Id MTRClusterFixedLabel) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterFixedLabel) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterFlowMeasurement ----------

-- | Cluster Flow Measurement    Attributes and commands for configuring the measurement of flow, and reporting flow measurements.
-- 
-- Phantom type for @MTRClusterFlowMeasurement@.
data MTRClusterFlowMeasurement

instance IsObjCObject (Id MTRClusterFlowMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterFlowMeasurement"

class IsMTRCluster a => IsMTRClusterFlowMeasurement a where
  toMTRClusterFlowMeasurement :: a -> Id MTRClusterFlowMeasurement

instance IsMTRClusterFlowMeasurement (Id MTRClusterFlowMeasurement) where
  toMTRClusterFlowMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRClusterFlowMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterFlowMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterGeneralCommissioning ----------

-- | Cluster General Commissioning    This cluster is used to manage global aspects of the Commissioning flow.
-- 
-- Phantom type for @MTRClusterGeneralCommissioning@.
data MTRClusterGeneralCommissioning

instance IsObjCObject (Id MTRClusterGeneralCommissioning) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterGeneralCommissioning"

class IsMTRCluster a => IsMTRClusterGeneralCommissioning a where
  toMTRClusterGeneralCommissioning :: a -> Id MTRClusterGeneralCommissioning

instance IsMTRClusterGeneralCommissioning (Id MTRClusterGeneralCommissioning) where
  toMTRClusterGeneralCommissioning = unsafeCastId

instance IsMTRCluster (Id MTRClusterGeneralCommissioning) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterGeneralCommissioning) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterGeneralDiagnostics ----------

-- | Cluster General Diagnostics    The General Diagnostics Cluster, along with other diagnostics clusters, provide a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
-- 
-- Phantom type for @MTRClusterGeneralDiagnostics@.
data MTRClusterGeneralDiagnostics

instance IsObjCObject (Id MTRClusterGeneralDiagnostics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterGeneralDiagnostics"

class IsMTRCluster a => IsMTRClusterGeneralDiagnostics a where
  toMTRClusterGeneralDiagnostics :: a -> Id MTRClusterGeneralDiagnostics

instance IsMTRClusterGeneralDiagnostics (Id MTRClusterGeneralDiagnostics) where
  toMTRClusterGeneralDiagnostics = unsafeCastId

instance IsMTRCluster (Id MTRClusterGeneralDiagnostics) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterGeneralDiagnostics) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterGroupKeyManagement ----------

-- | Cluster Group Key Management    The Group Key Management Cluster is the mechanism by which group keys are managed.
-- 
-- Phantom type for @MTRClusterGroupKeyManagement@.
data MTRClusterGroupKeyManagement

instance IsObjCObject (Id MTRClusterGroupKeyManagement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterGroupKeyManagement"

class IsMTRCluster a => IsMTRClusterGroupKeyManagement a where
  toMTRClusterGroupKeyManagement :: a -> Id MTRClusterGroupKeyManagement

instance IsMTRClusterGroupKeyManagement (Id MTRClusterGroupKeyManagement) where
  toMTRClusterGroupKeyManagement = unsafeCastId

instance IsMTRCluster (Id MTRClusterGroupKeyManagement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterGroupKeyManagement) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterGroups ----------

-- | Cluster Groups    Attributes and commands for group configuration and manipulation.
-- 
-- Phantom type for @MTRClusterGroups@.
data MTRClusterGroups

instance IsObjCObject (Id MTRClusterGroups) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterGroups"

class IsMTRCluster a => IsMTRClusterGroups a where
  toMTRClusterGroups :: a -> Id MTRClusterGroups

instance IsMTRClusterGroups (Id MTRClusterGroups) where
  toMTRClusterGroups = unsafeCastId

instance IsMTRCluster (Id MTRClusterGroups) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterGroups) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterIdentify ----------

-- | Cluster Identify    Attributes and commands for putting a device into Identification mode (e.g. flashing a light).
-- 
-- Phantom type for @MTRClusterIdentify@.
data MTRClusterIdentify

instance IsObjCObject (Id MTRClusterIdentify) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterIdentify"

class IsMTRCluster a => IsMTRClusterIdentify a where
  toMTRClusterIdentify :: a -> Id MTRClusterIdentify

instance IsMTRClusterIdentify (Id MTRClusterIdentify) where
  toMTRClusterIdentify = unsafeCastId

instance IsMTRCluster (Id MTRClusterIdentify) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterIdentify) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterIlluminanceMeasurement ----------

-- | Cluster Illuminance Measurement    Attributes and commands for configuring the measurement of illuminance, and reporting illuminance measurements.
-- 
-- Phantom type for @MTRClusterIlluminanceMeasurement@.
data MTRClusterIlluminanceMeasurement

instance IsObjCObject (Id MTRClusterIlluminanceMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterIlluminanceMeasurement"

class IsMTRCluster a => IsMTRClusterIlluminanceMeasurement a where
  toMTRClusterIlluminanceMeasurement :: a -> Id MTRClusterIlluminanceMeasurement

instance IsMTRClusterIlluminanceMeasurement (Id MTRClusterIlluminanceMeasurement) where
  toMTRClusterIlluminanceMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRClusterIlluminanceMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterIlluminanceMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterKeypadInput ----------

-- | Cluster Keypad Input    This cluster provides an interface for controlling a device like a TV using action commands such as UP, DOWN, and SELECT.
-- 
-- Phantom type for @MTRClusterKeypadInput@.
data MTRClusterKeypadInput

instance IsObjCObject (Id MTRClusterKeypadInput) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterKeypadInput"

class IsMTRCluster a => IsMTRClusterKeypadInput a where
  toMTRClusterKeypadInput :: a -> Id MTRClusterKeypadInput

instance IsMTRClusterKeypadInput (Id MTRClusterKeypadInput) where
  toMTRClusterKeypadInput = unsafeCastId

instance IsMTRCluster (Id MTRClusterKeypadInput) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterKeypadInput) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterLevelControl ----------

-- | Cluster Level Control    Attributes and commands for controlling devices that can be set to a level between fully 'On' and fully 'Off.'
-- 
-- Phantom type for @MTRClusterLevelControl@.
data MTRClusterLevelControl

instance IsObjCObject (Id MTRClusterLevelControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterLevelControl"

class IsMTRCluster a => IsMTRClusterLevelControl a where
  toMTRClusterLevelControl :: a -> Id MTRClusterLevelControl

instance IsMTRClusterLevelControl (Id MTRClusterLevelControl) where
  toMTRClusterLevelControl = unsafeCastId

instance IsMTRCluster (Id MTRClusterLevelControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterLevelControl) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterLocalizationConfiguration ----------

-- | Cluster Localization Configuration    Nodes should be expected to be deployed to any and all regions of the world. These global regions      may have differing common languages, units of measurements, and numerical formatting      standards. As such, Nodes that visually or audibly convey information need a mechanism by which      they can be configured to use a user’s preferred language, units, etc
-- 
-- Phantom type for @MTRClusterLocalizationConfiguration@.
data MTRClusterLocalizationConfiguration

instance IsObjCObject (Id MTRClusterLocalizationConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterLocalizationConfiguration"

class IsMTRCluster a => IsMTRClusterLocalizationConfiguration a where
  toMTRClusterLocalizationConfiguration :: a -> Id MTRClusterLocalizationConfiguration

instance IsMTRClusterLocalizationConfiguration (Id MTRClusterLocalizationConfiguration) where
  toMTRClusterLocalizationConfiguration = unsafeCastId

instance IsMTRCluster (Id MTRClusterLocalizationConfiguration) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterLocalizationConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterLowPower ----------

-- | Cluster Low Power    This cluster provides an interface for managing low power mode on a device.
-- 
-- Phantom type for @MTRClusterLowPower@.
data MTRClusterLowPower

instance IsObjCObject (Id MTRClusterLowPower) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterLowPower"

class IsMTRCluster a => IsMTRClusterLowPower a where
  toMTRClusterLowPower :: a -> Id MTRClusterLowPower

instance IsMTRClusterLowPower (Id MTRClusterLowPower) where
  toMTRClusterLowPower = unsafeCastId

instance IsMTRCluster (Id MTRClusterLowPower) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterLowPower) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterMediaInput ----------

-- | Cluster Media Input    This cluster provides an interface for controlling the Input Selector on a media device such as a TV.
-- 
-- Phantom type for @MTRClusterMediaInput@.
data MTRClusterMediaInput

instance IsObjCObject (Id MTRClusterMediaInput) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterMediaInput"

class IsMTRCluster a => IsMTRClusterMediaInput a where
  toMTRClusterMediaInput :: a -> Id MTRClusterMediaInput

instance IsMTRClusterMediaInput (Id MTRClusterMediaInput) where
  toMTRClusterMediaInput = unsafeCastId

instance IsMTRCluster (Id MTRClusterMediaInput) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterMediaInput) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterMediaPlayback ----------

-- | Cluster Media Playback    This cluster provides an interface for controlling Media Playback (PLAY, PAUSE, etc) on a media device such as a TV or Speaker.
-- 
-- Phantom type for @MTRClusterMediaPlayback@.
data MTRClusterMediaPlayback

instance IsObjCObject (Id MTRClusterMediaPlayback) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterMediaPlayback"

class IsMTRCluster a => IsMTRClusterMediaPlayback a where
  toMTRClusterMediaPlayback :: a -> Id MTRClusterMediaPlayback

instance IsMTRClusterMediaPlayback (Id MTRClusterMediaPlayback) where
  toMTRClusterMediaPlayback = unsafeCastId

instance IsMTRCluster (Id MTRClusterMediaPlayback) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterMediaPlayback) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterModeSelect ----------

-- | Cluster Mode Select    Attributes and commands for selecting a mode from a list of supported options.
-- 
-- Phantom type for @MTRClusterModeSelect@.
data MTRClusterModeSelect

instance IsObjCObject (Id MTRClusterModeSelect) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterModeSelect"

class IsMTRCluster a => IsMTRClusterModeSelect a where
  toMTRClusterModeSelect :: a -> Id MTRClusterModeSelect

instance IsMTRClusterModeSelect (Id MTRClusterModeSelect) where
  toMTRClusterModeSelect = unsafeCastId

instance IsMTRCluster (Id MTRClusterModeSelect) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterModeSelect) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterNetworkCommissioning ----------

-- | Cluster Network Commissioning    Functionality to configure, enable, disable network credentials and access on a Matter device.
-- 
-- Phantom type for @MTRClusterNetworkCommissioning@.
data MTRClusterNetworkCommissioning

instance IsObjCObject (Id MTRClusterNetworkCommissioning) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterNetworkCommissioning"

class IsMTRCluster a => IsMTRClusterNetworkCommissioning a where
  toMTRClusterNetworkCommissioning :: a -> Id MTRClusterNetworkCommissioning

instance IsMTRClusterNetworkCommissioning (Id MTRClusterNetworkCommissioning) where
  toMTRClusterNetworkCommissioning = unsafeCastId

instance IsMTRCluster (Id MTRClusterNetworkCommissioning) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterNetworkCommissioning) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterOccupancySensing ----------

-- | Cluster Occupancy Sensing    Attributes and commands for configuring occupancy sensing, and reporting occupancy status.
-- 
-- Phantom type for @MTRClusterOccupancySensing@.
data MTRClusterOccupancySensing

instance IsObjCObject (Id MTRClusterOccupancySensing) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterOccupancySensing"

class IsMTRCluster a => IsMTRClusterOccupancySensing a where
  toMTRClusterOccupancySensing :: a -> Id MTRClusterOccupancySensing

instance IsMTRClusterOccupancySensing (Id MTRClusterOccupancySensing) where
  toMTRClusterOccupancySensing = unsafeCastId

instance IsMTRCluster (Id MTRClusterOccupancySensing) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterOccupancySensing) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterOnOff ----------

-- | Cluster On/Off    Attributes and commands for switching devices between 'On' and 'Off' states.
-- 
-- Phantom type for @MTRClusterOnOff@.
data MTRClusterOnOff

instance IsObjCObject (Id MTRClusterOnOff) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterOnOff"

class IsMTRCluster a => IsMTRClusterOnOff a where
  toMTRClusterOnOff :: a -> Id MTRClusterOnOff

instance IsMTRClusterOnOff (Id MTRClusterOnOff) where
  toMTRClusterOnOff = unsafeCastId

instance IsMTRCluster (Id MTRClusterOnOff) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterOnOff) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterOnOffSwitchConfiguration ----------

-- | Cluster On/off Switch Configuration    Attributes and commands for configuring On/Off switching devices.
-- 
-- Phantom type for @MTRClusterOnOffSwitchConfiguration@.
data MTRClusterOnOffSwitchConfiguration

instance IsObjCObject (Id MTRClusterOnOffSwitchConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterOnOffSwitchConfiguration"

class IsMTRCluster a => IsMTRClusterOnOffSwitchConfiguration a where
  toMTRClusterOnOffSwitchConfiguration :: a -> Id MTRClusterOnOffSwitchConfiguration

instance IsMTRClusterOnOffSwitchConfiguration (Id MTRClusterOnOffSwitchConfiguration) where
  toMTRClusterOnOffSwitchConfiguration = unsafeCastId

instance IsMTRCluster (Id MTRClusterOnOffSwitchConfiguration) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterOnOffSwitchConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterOperationalCredentials ----------

-- | Cluster Operational Credentials    This cluster is used to add or remove Operational Credentials on a Commissionee or Node, as well as manage the associated Fabrics.
-- 
-- Phantom type for @MTRClusterOperationalCredentials@.
data MTRClusterOperationalCredentials

instance IsObjCObject (Id MTRClusterOperationalCredentials) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterOperationalCredentials"

class IsMTRCluster a => IsMTRClusterOperationalCredentials a where
  toMTRClusterOperationalCredentials :: a -> Id MTRClusterOperationalCredentials

instance IsMTRClusterOperationalCredentials (Id MTRClusterOperationalCredentials) where
  toMTRClusterOperationalCredentials = unsafeCastId

instance IsMTRCluster (Id MTRClusterOperationalCredentials) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterOperationalCredentials) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterOtaSoftwareUpdateProvider ----------

-- | Cluster OTA Software Update Provider    Provides an interface for providing OTA software updates
-- 
-- Phantom type for @MTRClusterOtaSoftwareUpdateProvider@.
data MTRClusterOtaSoftwareUpdateProvider

instance IsObjCObject (Id MTRClusterOtaSoftwareUpdateProvider) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterOtaSoftwareUpdateProvider"

class IsMTRCluster a => IsMTRClusterOtaSoftwareUpdateProvider a where
  toMTRClusterOtaSoftwareUpdateProvider :: a -> Id MTRClusterOtaSoftwareUpdateProvider

instance IsMTRClusterOtaSoftwareUpdateProvider (Id MTRClusterOtaSoftwareUpdateProvider) where
  toMTRClusterOtaSoftwareUpdateProvider = unsafeCastId

instance IsMTRCluster (Id MTRClusterOtaSoftwareUpdateProvider) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterOtaSoftwareUpdateProvider) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterOtaSoftwareUpdateRequestor ----------

-- | Cluster OTA Software Update Requestor    Provides an interface for downloading and applying OTA software updates
-- 
-- Phantom type for @MTRClusterOtaSoftwareUpdateRequestor@.
data MTRClusterOtaSoftwareUpdateRequestor

instance IsObjCObject (Id MTRClusterOtaSoftwareUpdateRequestor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterOtaSoftwareUpdateRequestor"

class IsMTRCluster a => IsMTRClusterOtaSoftwareUpdateRequestor a where
  toMTRClusterOtaSoftwareUpdateRequestor :: a -> Id MTRClusterOtaSoftwareUpdateRequestor

instance IsMTRClusterOtaSoftwareUpdateRequestor (Id MTRClusterOtaSoftwareUpdateRequestor) where
  toMTRClusterOtaSoftwareUpdateRequestor = unsafeCastId

instance IsMTRCluster (Id MTRClusterOtaSoftwareUpdateRequestor) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterOtaSoftwareUpdateRequestor) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterPowerSource ----------

-- | Cluster Power Source    This cluster is used to describe the configuration and capabilities of a physical power source that provides power to the Node.
-- 
-- Phantom type for @MTRClusterPowerSource@.
data MTRClusterPowerSource

instance IsObjCObject (Id MTRClusterPowerSource) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterPowerSource"

class IsMTRCluster a => IsMTRClusterPowerSource a where
  toMTRClusterPowerSource :: a -> Id MTRClusterPowerSource

instance IsMTRClusterPowerSource (Id MTRClusterPowerSource) where
  toMTRClusterPowerSource = unsafeCastId

instance IsMTRCluster (Id MTRClusterPowerSource) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterPowerSource) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterPowerSourceConfiguration ----------

-- | Cluster Power Source Configuration    This cluster is used to describe the configuration and capabilities of a Device's power system.
-- 
-- Phantom type for @MTRClusterPowerSourceConfiguration@.
data MTRClusterPowerSourceConfiguration

instance IsObjCObject (Id MTRClusterPowerSourceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterPowerSourceConfiguration"

class IsMTRCluster a => IsMTRClusterPowerSourceConfiguration a where
  toMTRClusterPowerSourceConfiguration :: a -> Id MTRClusterPowerSourceConfiguration

instance IsMTRClusterPowerSourceConfiguration (Id MTRClusterPowerSourceConfiguration) where
  toMTRClusterPowerSourceConfiguration = unsafeCastId

instance IsMTRCluster (Id MTRClusterPowerSourceConfiguration) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterPowerSourceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterPressureMeasurement ----------

-- | Cluster Pressure Measurement    Attributes and commands for configuring the measurement of pressure, and reporting pressure measurements.
-- 
-- Phantom type for @MTRClusterPressureMeasurement@.
data MTRClusterPressureMeasurement

instance IsObjCObject (Id MTRClusterPressureMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterPressureMeasurement"

class IsMTRCluster a => IsMTRClusterPressureMeasurement a where
  toMTRClusterPressureMeasurement :: a -> Id MTRClusterPressureMeasurement

instance IsMTRClusterPressureMeasurement (Id MTRClusterPressureMeasurement) where
  toMTRClusterPressureMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRClusterPressureMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterPressureMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterPumpConfigurationAndControl ----------

-- | Cluster Pump Configuration and Control    An interface for configuring and controlling pumps.
-- 
-- Phantom type for @MTRClusterPumpConfigurationAndControl@.
data MTRClusterPumpConfigurationAndControl

instance IsObjCObject (Id MTRClusterPumpConfigurationAndControl) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterPumpConfigurationAndControl"

class IsMTRCluster a => IsMTRClusterPumpConfigurationAndControl a where
  toMTRClusterPumpConfigurationAndControl :: a -> Id MTRClusterPumpConfigurationAndControl

instance IsMTRClusterPumpConfigurationAndControl (Id MTRClusterPumpConfigurationAndControl) where
  toMTRClusterPumpConfigurationAndControl = unsafeCastId

instance IsMTRCluster (Id MTRClusterPumpConfigurationAndControl) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterPumpConfigurationAndControl) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterRelativeHumidityMeasurement ----------

-- | Cluster Relative Humidity Measurement    Attributes and commands for configuring the measurement of relative humidity, and reporting relative humidity measurements.
-- 
-- Phantom type for @MTRClusterRelativeHumidityMeasurement@.
data MTRClusterRelativeHumidityMeasurement

instance IsObjCObject (Id MTRClusterRelativeHumidityMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterRelativeHumidityMeasurement"

class IsMTRCluster a => IsMTRClusterRelativeHumidityMeasurement a where
  toMTRClusterRelativeHumidityMeasurement :: a -> Id MTRClusterRelativeHumidityMeasurement

instance IsMTRClusterRelativeHumidityMeasurement (Id MTRClusterRelativeHumidityMeasurement) where
  toMTRClusterRelativeHumidityMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRClusterRelativeHumidityMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterRelativeHumidityMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterScenes ----------

-- | Cluster Scenes    Attributes and commands for scene configuration and manipulation.
-- 
-- Phantom type for @MTRClusterScenes@.
data MTRClusterScenes

instance IsObjCObject (Id MTRClusterScenes) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterScenes"

class IsMTRCluster a => IsMTRClusterScenes a where
  toMTRClusterScenes :: a -> Id MTRClusterScenes

instance IsMTRClusterScenes (Id MTRClusterScenes) where
  toMTRClusterScenes = unsafeCastId

instance IsMTRCluster (Id MTRClusterScenes) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterScenes) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterSoftwareDiagnostics ----------

-- | Cluster Software Diagnostics    The Software Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
-- 
-- Phantom type for @MTRClusterSoftwareDiagnostics@.
data MTRClusterSoftwareDiagnostics

instance IsObjCObject (Id MTRClusterSoftwareDiagnostics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterSoftwareDiagnostics"

class IsMTRCluster a => IsMTRClusterSoftwareDiagnostics a where
  toMTRClusterSoftwareDiagnostics :: a -> Id MTRClusterSoftwareDiagnostics

instance IsMTRClusterSoftwareDiagnostics (Id MTRClusterSoftwareDiagnostics) where
  toMTRClusterSoftwareDiagnostics = unsafeCastId

instance IsMTRCluster (Id MTRClusterSoftwareDiagnostics) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterSoftwareDiagnostics) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterSwitch ----------

-- | Cluster Switch    This cluster exposes interactions with a switch device, for the purpose of using those interactions by other devices.Two types of switch devices are supported: latching switch (e.g. rocker switch) and momentary switch (e.g. push button),distinguished with their feature flags. Interactions with the switch device are exposed as attributes (for the latching switch) andas events (for both types of switches). An interested party MAY subscribe to these attributes/events and thus be informed of theinteractions, and can perform actions based on this, for example by sending commands to perform an action such as controlling alight or a window shade.
-- 
-- Phantom type for @MTRClusterSwitch@.
data MTRClusterSwitch

instance IsObjCObject (Id MTRClusterSwitch) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterSwitch"

class IsMTRCluster a => IsMTRClusterSwitch a where
  toMTRClusterSwitch :: a -> Id MTRClusterSwitch

instance IsMTRClusterSwitch (Id MTRClusterSwitch) where
  toMTRClusterSwitch = unsafeCastId

instance IsMTRCluster (Id MTRClusterSwitch) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterSwitch) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterTargetNavigator ----------

-- | Cluster Target Navigator    This cluster provides an interface for UX navigation within a set of targets on a device or endpoint.
-- 
-- Phantom type for @MTRClusterTargetNavigator@.
data MTRClusterTargetNavigator

instance IsObjCObject (Id MTRClusterTargetNavigator) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterTargetNavigator"

class IsMTRCluster a => IsMTRClusterTargetNavigator a where
  toMTRClusterTargetNavigator :: a -> Id MTRClusterTargetNavigator

instance IsMTRClusterTargetNavigator (Id MTRClusterTargetNavigator) where
  toMTRClusterTargetNavigator = unsafeCastId

instance IsMTRCluster (Id MTRClusterTargetNavigator) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterTargetNavigator) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterTemperatureMeasurement ----------

-- | Cluster Temperature Measurement    Attributes and commands for configuring the measurement of temperature, and reporting temperature measurements.
-- 
-- Phantom type for @MTRClusterTemperatureMeasurement@.
data MTRClusterTemperatureMeasurement

instance IsObjCObject (Id MTRClusterTemperatureMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterTemperatureMeasurement"

class IsMTRCluster a => IsMTRClusterTemperatureMeasurement a where
  toMTRClusterTemperatureMeasurement :: a -> Id MTRClusterTemperatureMeasurement

instance IsMTRClusterTemperatureMeasurement (Id MTRClusterTemperatureMeasurement) where
  toMTRClusterTemperatureMeasurement = unsafeCastId

instance IsMTRCluster (Id MTRClusterTemperatureMeasurement) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterTemperatureMeasurement) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterTestCluster ----------

-- | Cluster Test Cluster    The Test Cluster is meant to validate the generated code
-- 
-- Phantom type for @MTRClusterTestCluster@.
data MTRClusterTestCluster

instance IsObjCObject (Id MTRClusterTestCluster) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterTestCluster"

class IsMTRCluster a => IsMTRClusterTestCluster a where
  toMTRClusterTestCluster :: a -> Id MTRClusterTestCluster

instance IsMTRClusterTestCluster (Id MTRClusterTestCluster) where
  toMTRClusterTestCluster = unsafeCastId

instance IsMTRCluster (Id MTRClusterTestCluster) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterTestCluster) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterThermostat ----------

-- | Cluster Thermostat    An interface for configuring and controlling the functionality of a thermostat.
-- 
-- Phantom type for @MTRClusterThermostat@.
data MTRClusterThermostat

instance IsObjCObject (Id MTRClusterThermostat) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterThermostat"

class IsMTRCluster a => IsMTRClusterThermostat a where
  toMTRClusterThermostat :: a -> Id MTRClusterThermostat

instance IsMTRClusterThermostat (Id MTRClusterThermostat) where
  toMTRClusterThermostat = unsafeCastId

instance IsMTRCluster (Id MTRClusterThermostat) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterThermostat) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterThermostatUserInterfaceConfiguration ----------

-- | Cluster Thermostat User Interface Configuration    An interface for configuring the user interface of a thermostat (which may be remote from the thermostat).
-- 
-- Phantom type for @MTRClusterThermostatUserInterfaceConfiguration@.
data MTRClusterThermostatUserInterfaceConfiguration

instance IsObjCObject (Id MTRClusterThermostatUserInterfaceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterThermostatUserInterfaceConfiguration"

class IsMTRCluster a => IsMTRClusterThermostatUserInterfaceConfiguration a where
  toMTRClusterThermostatUserInterfaceConfiguration :: a -> Id MTRClusterThermostatUserInterfaceConfiguration

instance IsMTRClusterThermostatUserInterfaceConfiguration (Id MTRClusterThermostatUserInterfaceConfiguration) where
  toMTRClusterThermostatUserInterfaceConfiguration = unsafeCastId

instance IsMTRCluster (Id MTRClusterThermostatUserInterfaceConfiguration) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterThermostatUserInterfaceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterThreadNetworkDiagnostics ----------

-- | Cluster Thread Network Diagnostics    The Thread Network Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems
-- 
-- Phantom type for @MTRClusterThreadNetworkDiagnostics@.
data MTRClusterThreadNetworkDiagnostics

instance IsObjCObject (Id MTRClusterThreadNetworkDiagnostics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterThreadNetworkDiagnostics"

class IsMTRCluster a => IsMTRClusterThreadNetworkDiagnostics a where
  toMTRClusterThreadNetworkDiagnostics :: a -> Id MTRClusterThreadNetworkDiagnostics

instance IsMTRClusterThreadNetworkDiagnostics (Id MTRClusterThreadNetworkDiagnostics) where
  toMTRClusterThreadNetworkDiagnostics = unsafeCastId

instance IsMTRCluster (Id MTRClusterThreadNetworkDiagnostics) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterThreadNetworkDiagnostics) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterTimeFormatLocalization ----------

-- | Cluster Time Format Localization    Nodes should be expected to be deployed to any and all regions of the world. These global regions      may have differing preferences for how dates and times are conveyed. As such, Nodes that visually      or audibly convey time information need a mechanism by which they can be configured to use a      user’s preferred format.
-- 
-- Phantom type for @MTRClusterTimeFormatLocalization@.
data MTRClusterTimeFormatLocalization

instance IsObjCObject (Id MTRClusterTimeFormatLocalization) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterTimeFormatLocalization"

class IsMTRCluster a => IsMTRClusterTimeFormatLocalization a where
  toMTRClusterTimeFormatLocalization :: a -> Id MTRClusterTimeFormatLocalization

instance IsMTRClusterTimeFormatLocalization (Id MTRClusterTimeFormatLocalization) where
  toMTRClusterTimeFormatLocalization = unsafeCastId

instance IsMTRCluster (Id MTRClusterTimeFormatLocalization) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterTimeFormatLocalization) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterUnitLocalization ----------

-- | Cluster Unit Localization    Nodes should be expected to be deployed to any and all regions of the world. These global regions      may have differing preferences for the units in which values are conveyed in communication to a      user. As such, Nodes that visually or audibly convey measurable values to the user need a      mechanism by which they can be configured to use a user’s preferred unit.
-- 
-- Phantom type for @MTRClusterUnitLocalization@.
data MTRClusterUnitLocalization

instance IsObjCObject (Id MTRClusterUnitLocalization) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterUnitLocalization"

class IsMTRCluster a => IsMTRClusterUnitLocalization a where
  toMTRClusterUnitLocalization :: a -> Id MTRClusterUnitLocalization

instance IsMTRClusterUnitLocalization (Id MTRClusterUnitLocalization) where
  toMTRClusterUnitLocalization = unsafeCastId

instance IsMTRCluster (Id MTRClusterUnitLocalization) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterUnitLocalization) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterUserLabel ----------

-- | Cluster User Label    The User Label Cluster provides a feature to tag an endpoint with zero or more labels.
-- 
-- Phantom type for @MTRClusterUserLabel@.
data MTRClusterUserLabel

instance IsObjCObject (Id MTRClusterUserLabel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterUserLabel"

class IsMTRCluster a => IsMTRClusterUserLabel a where
  toMTRClusterUserLabel :: a -> Id MTRClusterUserLabel

instance IsMTRClusterUserLabel (Id MTRClusterUserLabel) where
  toMTRClusterUserLabel = unsafeCastId

instance IsMTRCluster (Id MTRClusterUserLabel) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterUserLabel) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterWakeOnLan ----------

-- | Cluster Wake on LAN    This cluster provides an interface for managing low power mode on a device that supports the Wake On LAN protocol.
-- 
-- Phantom type for @MTRClusterWakeOnLan@.
data MTRClusterWakeOnLan

instance IsObjCObject (Id MTRClusterWakeOnLan) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterWakeOnLan"

class IsMTRCluster a => IsMTRClusterWakeOnLan a where
  toMTRClusterWakeOnLan :: a -> Id MTRClusterWakeOnLan

instance IsMTRClusterWakeOnLan (Id MTRClusterWakeOnLan) where
  toMTRClusterWakeOnLan = unsafeCastId

instance IsMTRCluster (Id MTRClusterWakeOnLan) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterWakeOnLan) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterWiFiNetworkDiagnostics ----------

-- | Cluster WiFi Network Diagnostics    The Wi-Fi Network Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
-- 
-- Phantom type for @MTRClusterWiFiNetworkDiagnostics@.
data MTRClusterWiFiNetworkDiagnostics

instance IsObjCObject (Id MTRClusterWiFiNetworkDiagnostics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterWiFiNetworkDiagnostics"

class IsMTRCluster a => IsMTRClusterWiFiNetworkDiagnostics a where
  toMTRClusterWiFiNetworkDiagnostics :: a -> Id MTRClusterWiFiNetworkDiagnostics

instance IsMTRClusterWiFiNetworkDiagnostics (Id MTRClusterWiFiNetworkDiagnostics) where
  toMTRClusterWiFiNetworkDiagnostics = unsafeCastId

instance IsMTRCluster (Id MTRClusterWiFiNetworkDiagnostics) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterWiFiNetworkDiagnostics) where
  toNSObject = unsafeCastId

-- ---------- MTRClusterWindowCovering ----------

-- | Cluster Window Covering    Provides an interface for controlling and adjusting automatic window coverings.
-- 
-- Phantom type for @MTRClusterWindowCovering@.
data MTRClusterWindowCovering

instance IsObjCObject (Id MTRClusterWindowCovering) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRClusterWindowCovering"

class IsMTRCluster a => IsMTRClusterWindowCovering a where
  toMTRClusterWindowCovering :: a -> Id MTRClusterWindowCovering

instance IsMTRClusterWindowCovering (Id MTRClusterWindowCovering) where
  toMTRClusterWindowCovering = unsafeCastId

instance IsMTRCluster (Id MTRClusterWindowCovering) where
  toMTRCluster = unsafeCastId

instance IsNSObject (Id MTRClusterWindowCovering) where
  toNSObject = unsafeCastId

-- ---------- MTRSubscribeParams ----------

-- | MTRSubscribeParams    This is used to control the behavior of attribute subscribes.  If not    provided (i.e. nil passed for the MTRSubscribeParams argument), will be    treated as if a default-initialized object was passed in.
-- 
-- Phantom type for @MTRSubscribeParams@.
data MTRSubscribeParams

instance IsObjCObject (Id MTRSubscribeParams) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTRSubscribeParams"

class IsMTRReadParams a => IsMTRSubscribeParams a where
  toMTRSubscribeParams :: a -> Id MTRSubscribeParams

instance IsMTRSubscribeParams (Id MTRSubscribeParams) where
  toMTRSubscribeParams = unsafeCastId

instance IsMTRReadParams (Id MTRSubscribeParams) where
  toMTRReadParams = unsafeCastId

instance IsNSObject (Id MTRSubscribeParams) where
  toNSObject = unsafeCastId
