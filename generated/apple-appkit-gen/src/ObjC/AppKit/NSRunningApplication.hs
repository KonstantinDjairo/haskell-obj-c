{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSRunningApplication@.
module ObjC.AppKit.NSRunningApplication
  ( NSRunningApplication
  , IsNSRunningApplication(..)
  , hide
  , unhide
  , activateWithOptions
  , terminate
  , forceTerminate
  , runningApplicationsWithBundleIdentifier
  , runningApplicationWithProcessIdentifier
  , terminateAutomaticallyTerminableApplications
  , terminated
  , finishedLaunching
  , hidden
  , active
  , ownsMenuBar
  , activationPolicy
  , localizedName
  , bundleIdentifier
  , bundleURL
  , executableURL
  , processIdentifier
  , launchDate
  , icon
  , executableArchitecture
  , currentApplication
  , activateWithOptionsSelector
  , activationPolicySelector
  , activeSelector
  , bundleIdentifierSelector
  , bundleURLSelector
  , currentApplicationSelector
  , executableArchitectureSelector
  , executableURLSelector
  , finishedLaunchingSelector
  , forceTerminateSelector
  , hiddenSelector
  , hideSelector
  , iconSelector
  , launchDateSelector
  , localizedNameSelector
  , ownsMenuBarSelector
  , processIdentifierSelector
  , runningApplicationWithProcessIdentifierSelector
  , runningApplicationsWithBundleIdentifierSelector
  , terminateAutomaticallyTerminableApplicationsSelector
  , terminateSelector
  , terminatedSelector
  , unhideSelector

  -- * Enum types
  , NSApplicationActivationOptions(NSApplicationActivationOptions)
  , pattern NSApplicationActivateAllWindows
  , pattern NSApplicationActivateIgnoringOtherApps
  , NSApplicationActivationPolicy(NSApplicationActivationPolicy)
  , pattern NSApplicationActivationPolicyRegular
  , pattern NSApplicationActivationPolicyAccessory
  , pattern NSApplicationActivationPolicyProhibited

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.AppKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- hide@
hide :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO Bool
hide nsRunningApplication =
  sendMessage nsRunningApplication hideSelector

-- | @- unhide@
unhide :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO Bool
unhide nsRunningApplication =
  sendMessage nsRunningApplication unhideSelector

-- | @- activateWithOptions:@
activateWithOptions :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> NSApplicationActivationOptions -> IO Bool
activateWithOptions nsRunningApplication options =
  sendMessage nsRunningApplication activateWithOptionsSelector options

-- | @- terminate@
terminate :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO Bool
terminate nsRunningApplication =
  sendMessage nsRunningApplication terminateSelector

-- | @- forceTerminate@
forceTerminate :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO Bool
forceTerminate nsRunningApplication =
  sendMessage nsRunningApplication forceTerminateSelector

-- | @+ runningApplicationsWithBundleIdentifier:@
runningApplicationsWithBundleIdentifier :: IsNSString bundleIdentifier => bundleIdentifier -> IO (Id NSArray)
runningApplicationsWithBundleIdentifier bundleIdentifier =
  do
    cls' <- getRequiredClass "NSRunningApplication"
    sendClassMessage cls' runningApplicationsWithBundleIdentifierSelector (toNSString bundleIdentifier)

-- | @+ runningApplicationWithProcessIdentifier:@
runningApplicationWithProcessIdentifier :: CInt -> IO (Id NSRunningApplication)
runningApplicationWithProcessIdentifier pid =
  do
    cls' <- getRequiredClass "NSRunningApplication"
    sendClassMessage cls' runningApplicationWithProcessIdentifierSelector pid

-- | @+ terminateAutomaticallyTerminableApplications@
terminateAutomaticallyTerminableApplications :: IO ()
terminateAutomaticallyTerminableApplications  =
  do
    cls' <- getRequiredClass "NSRunningApplication"
    sendClassMessage cls' terminateAutomaticallyTerminableApplicationsSelector

-- | @- terminated@
terminated :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO Bool
terminated nsRunningApplication =
  sendMessage nsRunningApplication terminatedSelector

-- | @- finishedLaunching@
finishedLaunching :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO Bool
finishedLaunching nsRunningApplication =
  sendMessage nsRunningApplication finishedLaunchingSelector

-- | @- hidden@
hidden :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO Bool
hidden nsRunningApplication =
  sendMessage nsRunningApplication hiddenSelector

-- | @- active@
active :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO Bool
active nsRunningApplication =
  sendMessage nsRunningApplication activeSelector

-- | @- ownsMenuBar@
ownsMenuBar :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO Bool
ownsMenuBar nsRunningApplication =
  sendMessage nsRunningApplication ownsMenuBarSelector

-- | @- activationPolicy@
activationPolicy :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO NSApplicationActivationPolicy
activationPolicy nsRunningApplication =
  sendMessage nsRunningApplication activationPolicySelector

-- | @- localizedName@
localizedName :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO (Id NSString)
localizedName nsRunningApplication =
  sendMessage nsRunningApplication localizedNameSelector

-- | @- bundleIdentifier@
bundleIdentifier :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO (Id NSString)
bundleIdentifier nsRunningApplication =
  sendMessage nsRunningApplication bundleIdentifierSelector

-- | @- bundleURL@
bundleURL :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO (Id NSURL)
bundleURL nsRunningApplication =
  sendMessage nsRunningApplication bundleURLSelector

-- | @- executableURL@
executableURL :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO (Id NSURL)
executableURL nsRunningApplication =
  sendMessage nsRunningApplication executableURLSelector

-- | @- processIdentifier@
processIdentifier :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO CInt
processIdentifier nsRunningApplication =
  sendMessage nsRunningApplication processIdentifierSelector

-- | @- launchDate@
launchDate :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO (Id NSDate)
launchDate nsRunningApplication =
  sendMessage nsRunningApplication launchDateSelector

-- | @- icon@
icon :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO (Id NSImage)
icon nsRunningApplication =
  sendMessage nsRunningApplication iconSelector

-- | @- executableArchitecture@
executableArchitecture :: IsNSRunningApplication nsRunningApplication => nsRunningApplication -> IO CLong
executableArchitecture nsRunningApplication =
  sendMessage nsRunningApplication executableArchitectureSelector

-- | @+ currentApplication@
currentApplication :: IO (Id NSRunningApplication)
currentApplication  =
  do
    cls' <- getRequiredClass "NSRunningApplication"
    sendClassMessage cls' currentApplicationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @hide@
hideSelector :: Selector '[] Bool
hideSelector = mkSelector "hide"

-- | @Selector@ for @unhide@
unhideSelector :: Selector '[] Bool
unhideSelector = mkSelector "unhide"

-- | @Selector@ for @activateWithOptions:@
activateWithOptionsSelector :: Selector '[NSApplicationActivationOptions] Bool
activateWithOptionsSelector = mkSelector "activateWithOptions:"

-- | @Selector@ for @terminate@
terminateSelector :: Selector '[] Bool
terminateSelector = mkSelector "terminate"

-- | @Selector@ for @forceTerminate@
forceTerminateSelector :: Selector '[] Bool
forceTerminateSelector = mkSelector "forceTerminate"

-- | @Selector@ for @runningApplicationsWithBundleIdentifier:@
runningApplicationsWithBundleIdentifierSelector :: Selector '[Id NSString] (Id NSArray)
runningApplicationsWithBundleIdentifierSelector = mkSelector "runningApplicationsWithBundleIdentifier:"

-- | @Selector@ for @runningApplicationWithProcessIdentifier:@
runningApplicationWithProcessIdentifierSelector :: Selector '[CInt] (Id NSRunningApplication)
runningApplicationWithProcessIdentifierSelector = mkSelector "runningApplicationWithProcessIdentifier:"

-- | @Selector@ for @terminateAutomaticallyTerminableApplications@
terminateAutomaticallyTerminableApplicationsSelector :: Selector '[] ()
terminateAutomaticallyTerminableApplicationsSelector = mkSelector "terminateAutomaticallyTerminableApplications"

-- | @Selector@ for @terminated@
terminatedSelector :: Selector '[] Bool
terminatedSelector = mkSelector "terminated"

-- | @Selector@ for @finishedLaunching@
finishedLaunchingSelector :: Selector '[] Bool
finishedLaunchingSelector = mkSelector "finishedLaunching"

-- | @Selector@ for @hidden@
hiddenSelector :: Selector '[] Bool
hiddenSelector = mkSelector "hidden"

-- | @Selector@ for @active@
activeSelector :: Selector '[] Bool
activeSelector = mkSelector "active"

-- | @Selector@ for @ownsMenuBar@
ownsMenuBarSelector :: Selector '[] Bool
ownsMenuBarSelector = mkSelector "ownsMenuBar"

-- | @Selector@ for @activationPolicy@
activationPolicySelector :: Selector '[] NSApplicationActivationPolicy
activationPolicySelector = mkSelector "activationPolicy"

-- | @Selector@ for @localizedName@
localizedNameSelector :: Selector '[] (Id NSString)
localizedNameSelector = mkSelector "localizedName"

-- | @Selector@ for @bundleIdentifier@
bundleIdentifierSelector :: Selector '[] (Id NSString)
bundleIdentifierSelector = mkSelector "bundleIdentifier"

-- | @Selector@ for @bundleURL@
bundleURLSelector :: Selector '[] (Id NSURL)
bundleURLSelector = mkSelector "bundleURL"

-- | @Selector@ for @executableURL@
executableURLSelector :: Selector '[] (Id NSURL)
executableURLSelector = mkSelector "executableURL"

-- | @Selector@ for @processIdentifier@
processIdentifierSelector :: Selector '[] CInt
processIdentifierSelector = mkSelector "processIdentifier"

-- | @Selector@ for @launchDate@
launchDateSelector :: Selector '[] (Id NSDate)
launchDateSelector = mkSelector "launchDate"

-- | @Selector@ for @icon@
iconSelector :: Selector '[] (Id NSImage)
iconSelector = mkSelector "icon"

-- | @Selector@ for @executableArchitecture@
executableArchitectureSelector :: Selector '[] CLong
executableArchitectureSelector = mkSelector "executableArchitecture"

-- | @Selector@ for @currentApplication@
currentApplicationSelector :: Selector '[] (Id NSRunningApplication)
currentApplicationSelector = mkSelector "currentApplication"

