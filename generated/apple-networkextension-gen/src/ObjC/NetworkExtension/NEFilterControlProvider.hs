{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | NEFilterControlProvider
--
-- The NEFilterControlProvider class declares the programmatic interface for an object that is responsible for installing filtering rules on the device.
--
-- Generated bindings for @NEFilterControlProvider@.
module ObjC.NetworkExtension.NEFilterControlProvider
  ( NEFilterControlProvider
  , IsNEFilterControlProvider(..)
  , handleRemediationForFlow_completionHandler
  , handleNewFlow_completionHandler
  , notifyRulesChanged
  , handleNewFlow_completionHandlerSelector
  , handleRemediationForFlow_completionHandlerSelector
  , notifyRulesChangedSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.NetworkExtension.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | handleRemediationForFlow:completionHandler:
--
-- This function is called by the framework when the NEFilterDataProvider indicates that the filtering verdict for the given flow is NEFilterRemediateVerdictNeedRules. Subclass implementations must override this method and implement whatever steps are necessary to remediate the given flow.
--
-- @flow@ — An NEFilterFlow object containing details about the flow that requires remediation.
--
-- @completionHandler@ — A block that must be called when the NEFilterControlProvider is ready for the NEFilterDataProvider to re-process the new flow. NEFilterControlVerdict stores the verdict through which the control provider determines if a flow needs to be dropped or allowed. The verdict also indicates if the control plugin wants the data plugin to update its rules and handle the verdict.
--
-- ObjC selector: @- handleRemediationForFlow:completionHandler:@
handleRemediationForFlow_completionHandler :: (IsNEFilterControlProvider neFilterControlProvider, IsNEFilterFlow flow) => neFilterControlProvider -> flow -> Ptr () -> IO ()
handleRemediationForFlow_completionHandler neFilterControlProvider flow completionHandler =
  sendMessage neFilterControlProvider handleRemediationForFlow_completionHandlerSelector (toNEFilterFlow flow) completionHandler

-- | handleNewFlow:completionHandler:
--
-- This function is called by the framework when the NEFilterDataProvider indicates that the filtering verdict for the given flow is NEFilterNewFlowVerdictNeedRules. Subclass implementations must override this method and implement whatever steps are necessary to fetch new rules pertaining to the given flow and place them on disk in a location accessible by the NEFilterDataProvider.
--
-- @flow@ — An NEFilterFlow object containing details about the flow that requires a rules update.
--
-- @completionHandler@ — A block that must be called when the NEFilterControlProvider is ready for the NEFilterDataProvider to re-process the new flow. NEFilterControlVerdict stores the verdict through which the control provider determines if a flow needs to be dropped or allowed. The verdict also indicates if the control plugin wants the data plugin to update its rules and handle the verdict.
--
-- ObjC selector: @- handleNewFlow:completionHandler:@
handleNewFlow_completionHandler :: (IsNEFilterControlProvider neFilterControlProvider, IsNEFilterFlow flow) => neFilterControlProvider -> flow -> Ptr () -> IO ()
handleNewFlow_completionHandler neFilterControlProvider flow completionHandler =
  sendMessage neFilterControlProvider handleNewFlow_completionHandlerSelector (toNEFilterFlow flow) completionHandler

-- | notifyRulesChanged
--
-- This function is called by filter control implementations to notify the data provider "out of band" that the rules changed.
--
-- ObjC selector: @- notifyRulesChanged@
notifyRulesChanged :: IsNEFilterControlProvider neFilterControlProvider => neFilterControlProvider -> IO ()
notifyRulesChanged neFilterControlProvider =
  sendMessage neFilterControlProvider notifyRulesChangedSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @handleRemediationForFlow:completionHandler:@
handleRemediationForFlow_completionHandlerSelector :: Selector '[Id NEFilterFlow, Ptr ()] ()
handleRemediationForFlow_completionHandlerSelector = mkSelector "handleRemediationForFlow:completionHandler:"

-- | @Selector@ for @handleNewFlow:completionHandler:@
handleNewFlow_completionHandlerSelector :: Selector '[Id NEFilterFlow, Ptr ()] ()
handleNewFlow_completionHandlerSelector = mkSelector "handleNewFlow:completionHandler:"

-- | @Selector@ for @notifyRulesChanged@
notifyRulesChangedSelector :: Selector '[] ()
notifyRulesChangedSelector = mkSelector "notifyRulesChanged"

