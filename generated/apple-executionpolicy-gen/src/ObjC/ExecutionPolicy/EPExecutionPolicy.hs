{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @EPExecutionPolicy@.
module ObjC.ExecutionPolicy.EPExecutionPolicy
  ( EPExecutionPolicy
  , IsEPExecutionPolicy(..)
  , init_
  , addPolicyExceptionForURL_error
  , addPolicyExceptionForURL_errorSelector
  , initSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ExecutionPolicy.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | init
--
-- Initialization sets up the IPC resources required, allowing the caller to manage the initialization overhead.
--
-- ObjC selector: @- init@
init_ :: IsEPExecutionPolicy epExecutionPolicy => epExecutionPolicy -> IO (Id EPExecutionPolicy)
init_ epExecutionPolicy =
  sendOwnedMessage epExecutionPolicy initSelector

-- | addPolicyExceptionForURL
--
-- Creates a system-wide exception to bypass execution policy for the bundle or executable at the given location.
--
-- @url@ — Location of the bundle or executable that requires an exception
--
-- @error@ — Upon failure, will contain an autoreleasing NSError indicating additional failure information
--
-- Returns: A BOOL indicating the policy exception was created successfully, with any failures reported in the error output.
--
-- ObjC selector: @- addPolicyExceptionForURL:error:@
addPolicyExceptionForURL_error :: (IsEPExecutionPolicy epExecutionPolicy, IsNSURL url, IsNSError error_) => epExecutionPolicy -> url -> error_ -> IO Bool
addPolicyExceptionForURL_error epExecutionPolicy url error_ =
  sendMessage epExecutionPolicy addPolicyExceptionForURL_errorSelector (toNSURL url) (toNSError error_)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id EPExecutionPolicy)
initSelector = mkSelector "init"

-- | @Selector@ for @addPolicyExceptionForURL:error:@
addPolicyExceptionForURL_errorSelector :: Selector '[Id NSURL, Id NSError] Bool
addPolicyExceptionForURL_errorSelector = mkSelector "addPolicyExceptionForURL:error:"

