{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @JRSSecurity@.
module ObjC.JavaRuntimeSupport.JRSSecurity
  ( JRSSecurity
  , IsJRSSecurity(..)
  , executionPolicyForExecutableCodeSignatureEvaluation
  , executionPolicyForExecutableCodeSignatureEvaluationSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.JavaRuntimeSupport.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ executionPolicyForExecutableCodeSignatureEvaluation:@
executionPolicyForExecutableCodeSignatureEvaluation :: CUInt -> IO CUInt
executionPolicyForExecutableCodeSignatureEvaluation evaluation =
  do
    cls' <- getRequiredClass "JRSSecurity"
    sendClassMessage cls' executionPolicyForExecutableCodeSignatureEvaluationSelector evaluation

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @executionPolicyForExecutableCodeSignatureEvaluation:@
executionPolicyForExecutableCodeSignatureEvaluationSelector :: Selector '[CUInt] CUInt
executionPolicyForExecutableCodeSignatureEvaluationSelector = mkSelector "executionPolicyForExecutableCodeSignatureEvaluation:"

