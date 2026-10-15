{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.AutomaticAssessmentConfiguration.Internal.Classes (
    module ObjC.AutomaticAssessmentConfiguration.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- AEAssessmentApplication ----------

-- | Phantom type for @AEAssessmentApplication@.
data AEAssessmentApplication

instance IsObjCObject (Id AEAssessmentApplication) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AEAssessmentApplication"

class IsNSObject a => IsAEAssessmentApplication a where
  toAEAssessmentApplication :: a -> Id AEAssessmentApplication

instance IsAEAssessmentApplication (Id AEAssessmentApplication) where
  toAEAssessmentApplication = unsafeCastId

instance IsNSObject (Id AEAssessmentApplication) where
  toNSObject = unsafeCastId

-- ---------- AEAssessmentConfiguration ----------

-- | Phantom type for @AEAssessmentConfiguration@.
data AEAssessmentConfiguration

instance IsObjCObject (Id AEAssessmentConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AEAssessmentConfiguration"

class IsNSObject a => IsAEAssessmentConfiguration a where
  toAEAssessmentConfiguration :: a -> Id AEAssessmentConfiguration

instance IsAEAssessmentConfiguration (Id AEAssessmentConfiguration) where
  toAEAssessmentConfiguration = unsafeCastId

instance IsNSObject (Id AEAssessmentConfiguration) where
  toNSObject = unsafeCastId

-- ---------- AEAssessmentParticipantConfiguration ----------

-- | Phantom type for @AEAssessmentParticipantConfiguration@.
data AEAssessmentParticipantConfiguration

instance IsObjCObject (Id AEAssessmentParticipantConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AEAssessmentParticipantConfiguration"

class IsNSObject a => IsAEAssessmentParticipantConfiguration a where
  toAEAssessmentParticipantConfiguration :: a -> Id AEAssessmentParticipantConfiguration

instance IsAEAssessmentParticipantConfiguration (Id AEAssessmentParticipantConfiguration) where
  toAEAssessmentParticipantConfiguration = unsafeCastId

instance IsNSObject (Id AEAssessmentParticipantConfiguration) where
  toNSObject = unsafeCastId

-- ---------- AEAssessmentSession ----------

-- | Phantom type for @AEAssessmentSession@.
data AEAssessmentSession

instance IsObjCObject (Id AEAssessmentSession) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AEAssessmentSession"

class IsNSObject a => IsAEAssessmentSession a where
  toAEAssessmentSession :: a -> Id AEAssessmentSession

instance IsAEAssessmentSession (Id AEAssessmentSession) where
  toAEAssessmentSession = unsafeCastId

instance IsNSObject (Id AEAssessmentSession) where
  toNSObject = unsafeCastId
