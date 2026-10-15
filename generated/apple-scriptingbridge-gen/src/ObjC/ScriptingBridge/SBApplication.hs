{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SBApplication@.
module ObjC.ScriptingBridge.SBApplication
  ( SBApplication
  , IsSBApplication(..)
  , initWithBundleIdentifier
  , initWithURL
  , initWithProcessIdentifier
  , applicationWithBundleIdentifier
  , applicationWithURL
  , applicationWithProcessIdentifier
  , classForScriptingClass
  , activate
  , running
  , delegate
  , setDelegate
  , launchFlags
  , setLaunchFlags
  , sendMode
  , setSendMode
  , timeout
  , setTimeout
  , activateSelector
  , applicationWithBundleIdentifierSelector
  , applicationWithProcessIdentifierSelector
  , applicationWithURLSelector
  , classForScriptingClassSelector
  , delegateSelector
  , initWithBundleIdentifierSelector
  , initWithProcessIdentifierSelector
  , initWithURLSelector
  , launchFlagsSelector
  , runningSelector
  , sendModeSelector
  , setDelegateSelector
  , setLaunchFlagsSelector
  , setSendModeSelector
  , setTimeoutSelector
  , timeoutSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ScriptingBridge.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithBundleIdentifier:@
initWithBundleIdentifier :: (IsSBApplication sbApplication, IsNSString ident) => sbApplication -> ident -> IO (Id SBApplication)
initWithBundleIdentifier sbApplication ident =
  sendOwnedMessage sbApplication initWithBundleIdentifierSelector (toNSString ident)

-- | @- initWithURL:@
initWithURL :: (IsSBApplication sbApplication, IsNSURL url) => sbApplication -> url -> IO (Id SBApplication)
initWithURL sbApplication url =
  sendOwnedMessage sbApplication initWithURLSelector (toNSURL url)

-- | @- initWithProcessIdentifier:@
initWithProcessIdentifier :: IsSBApplication sbApplication => sbApplication -> CInt -> IO (Id SBApplication)
initWithProcessIdentifier sbApplication pid =
  sendOwnedMessage sbApplication initWithProcessIdentifierSelector pid

-- | @+ applicationWithBundleIdentifier:@
applicationWithBundleIdentifier :: IsNSString ident => ident -> IO (Id SBApplication)
applicationWithBundleIdentifier ident =
  do
    cls' <- getRequiredClass "SBApplication"
    sendClassMessage cls' applicationWithBundleIdentifierSelector (toNSString ident)

-- | @+ applicationWithURL:@
applicationWithURL :: IsNSURL url => url -> IO (Id SBApplication)
applicationWithURL url =
  do
    cls' <- getRequiredClass "SBApplication"
    sendClassMessage cls' applicationWithURLSelector (toNSURL url)

-- | @+ applicationWithProcessIdentifier:@
applicationWithProcessIdentifier :: CInt -> IO (Id SBApplication)
applicationWithProcessIdentifier pid =
  do
    cls' <- getRequiredClass "SBApplication"
    sendClassMessage cls' applicationWithProcessIdentifierSelector pid

-- | @- classForScriptingClass:@
classForScriptingClass :: (IsSBApplication sbApplication, IsNSString className) => sbApplication -> className -> IO Class
classForScriptingClass sbApplication className =
  sendMessage sbApplication classForScriptingClassSelector (toNSString className)

-- | @- activate@
activate :: IsSBApplication sbApplication => sbApplication -> IO ()
activate sbApplication =
  sendMessage sbApplication activateSelector

-- | @- running@
running :: IsSBApplication sbApplication => sbApplication -> IO Bool
running sbApplication =
  sendMessage sbApplication runningSelector

-- | @- delegate@
delegate :: IsSBApplication sbApplication => sbApplication -> IO RawId
delegate sbApplication =
  sendMessage sbApplication delegateSelector

-- | @- setDelegate:@
setDelegate :: IsSBApplication sbApplication => sbApplication -> RawId -> IO ()
setDelegate sbApplication value =
  sendMessage sbApplication setDelegateSelector value

-- | @- launchFlags@
launchFlags :: IsSBApplication sbApplication => sbApplication -> IO CInt
launchFlags sbApplication =
  sendMessage sbApplication launchFlagsSelector

-- | @- setLaunchFlags:@
setLaunchFlags :: IsSBApplication sbApplication => sbApplication -> CInt -> IO ()
setLaunchFlags sbApplication value =
  sendMessage sbApplication setLaunchFlagsSelector value

-- | @- sendMode@
sendMode :: IsSBApplication sbApplication => sbApplication -> IO CInt
sendMode sbApplication =
  sendMessage sbApplication sendModeSelector

-- | @- setSendMode:@
setSendMode :: IsSBApplication sbApplication => sbApplication -> CInt -> IO ()
setSendMode sbApplication value =
  sendMessage sbApplication setSendModeSelector value

-- | @- timeout@
timeout :: IsSBApplication sbApplication => sbApplication -> IO CLong
timeout sbApplication =
  sendMessage sbApplication timeoutSelector

-- | @- setTimeout:@
setTimeout :: IsSBApplication sbApplication => sbApplication -> CLong -> IO ()
setTimeout sbApplication value =
  sendMessage sbApplication setTimeoutSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithBundleIdentifier:@
initWithBundleIdentifierSelector :: Selector '[Id NSString] (Id SBApplication)
initWithBundleIdentifierSelector = mkSelector "initWithBundleIdentifier:"

-- | @Selector@ for @initWithURL:@
initWithURLSelector :: Selector '[Id NSURL] (Id SBApplication)
initWithURLSelector = mkSelector "initWithURL:"

-- | @Selector@ for @initWithProcessIdentifier:@
initWithProcessIdentifierSelector :: Selector '[CInt] (Id SBApplication)
initWithProcessIdentifierSelector = mkSelector "initWithProcessIdentifier:"

-- | @Selector@ for @applicationWithBundleIdentifier:@
applicationWithBundleIdentifierSelector :: Selector '[Id NSString] (Id SBApplication)
applicationWithBundleIdentifierSelector = mkSelector "applicationWithBundleIdentifier:"

-- | @Selector@ for @applicationWithURL:@
applicationWithURLSelector :: Selector '[Id NSURL] (Id SBApplication)
applicationWithURLSelector = mkSelector "applicationWithURL:"

-- | @Selector@ for @applicationWithProcessIdentifier:@
applicationWithProcessIdentifierSelector :: Selector '[CInt] (Id SBApplication)
applicationWithProcessIdentifierSelector = mkSelector "applicationWithProcessIdentifier:"

-- | @Selector@ for @classForScriptingClass:@
classForScriptingClassSelector :: Selector '[Id NSString] Class
classForScriptingClassSelector = mkSelector "classForScriptingClass:"

-- | @Selector@ for @activate@
activateSelector :: Selector '[] ()
activateSelector = mkSelector "activate"

-- | @Selector@ for @running@
runningSelector :: Selector '[] Bool
runningSelector = mkSelector "running"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @launchFlags@
launchFlagsSelector :: Selector '[] CInt
launchFlagsSelector = mkSelector "launchFlags"

-- | @Selector@ for @setLaunchFlags:@
setLaunchFlagsSelector :: Selector '[CInt] ()
setLaunchFlagsSelector = mkSelector "setLaunchFlags:"

-- | @Selector@ for @sendMode@
sendModeSelector :: Selector '[] CInt
sendModeSelector = mkSelector "sendMode"

-- | @Selector@ for @setSendMode:@
setSendModeSelector :: Selector '[CInt] ()
setSendModeSelector = mkSelector "setSendMode:"

-- | @Selector@ for @timeout@
timeoutSelector :: Selector '[] CLong
timeoutSelector = mkSelector "timeout"

-- | @Selector@ for @setTimeout:@
setTimeoutSelector :: Selector '[CLong] ()
setTimeoutSelector = mkSelector "setTimeout:"

