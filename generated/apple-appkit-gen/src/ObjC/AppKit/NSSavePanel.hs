{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSSavePanel@.
module ObjC.AppKit.NSSavePanel
  ( NSSavePanel
  , IsNSSavePanel(..)
  , savePanel
  , validateVisibleColumns
  , ok
  , cancel
  , beginSheetModalForWindow_completionHandler
  , beginWithCompletionHandler
  , runModal
  , filename
  , directory
  , setDirectory
  , requiredFileType
  , setRequiredFileType
  , beginSheetForDirectory_file_modalForWindow_modalDelegate_didEndSelector_contextInfo
  , runModalForDirectory_file
  , selectText
  , url
  , directoryURL
  , setDirectoryURL
  , allowsOtherFileTypes
  , setAllowsOtherFileTypes
  , accessoryView
  , setAccessoryView
  , delegate
  , setDelegate
  , expanded
  , canCreateDirectories
  , setCanCreateDirectories
  , canSelectHiddenExtension
  , setCanSelectHiddenExtension
  , extensionHidden
  , setExtensionHidden
  , treatsFilePackagesAsDirectories
  , setTreatsFilePackagesAsDirectories
  , prompt
  , setPrompt
  , title
  , setTitle
  , nameFieldLabel
  , setNameFieldLabel
  , nameFieldStringValue
  , setNameFieldStringValue
  , message
  , setMessage
  , showsHiddenFiles
  , setShowsHiddenFiles
  , showsTagField
  , setShowsTagField
  , accessoryViewSelector
  , allowsOtherFileTypesSelector
  , beginSheetForDirectory_file_modalForWindow_modalDelegate_didEndSelector_contextInfoSelector
  , beginSheetModalForWindow_completionHandlerSelector
  , beginWithCompletionHandlerSelector
  , canCreateDirectoriesSelector
  , canSelectHiddenExtensionSelector
  , cancelSelector
  , delegateSelector
  , directorySelector
  , directoryURLSelector
  , expandedSelector
  , extensionHiddenSelector
  , filenameSelector
  , messageSelector
  , nameFieldLabelSelector
  , nameFieldStringValueSelector
  , okSelector
  , promptSelector
  , requiredFileTypeSelector
  , runModalForDirectory_fileSelector
  , runModalSelector
  , savePanelSelector
  , selectTextSelector
  , setAccessoryViewSelector
  , setAllowsOtherFileTypesSelector
  , setCanCreateDirectoriesSelector
  , setCanSelectHiddenExtensionSelector
  , setDelegateSelector
  , setDirectorySelector
  , setDirectoryURLSelector
  , setExtensionHiddenSelector
  , setMessageSelector
  , setNameFieldLabelSelector
  , setNameFieldStringValueSelector
  , setPromptSelector
  , setRequiredFileTypeSelector
  , setShowsHiddenFilesSelector
  , setShowsTagFieldSelector
  , setTitleSelector
  , setTreatsFilePackagesAsDirectoriesSelector
  , showsHiddenFilesSelector
  , showsTagFieldSelector
  , titleSelector
  , treatsFilePackagesAsDirectoriesSelector
  , urlSelector
  , validateVisibleColumnsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes
import ObjC.UniformTypeIdentifiers.Internal.Classes

-- | @+ savePanel@
savePanel :: IO (Id NSSavePanel)
savePanel  =
  do
    cls' <- getRequiredClass "NSSavePanel"
    sendClassMessage cls' savePanelSelector

-- | @- validateVisibleColumns@
validateVisibleColumns :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO ()
validateVisibleColumns nsSavePanel =
  sendMessage nsSavePanel validateVisibleColumnsSelector

-- | @- ok:@
ok :: IsNSSavePanel nsSavePanel => nsSavePanel -> RawId -> IO ()
ok nsSavePanel sender =
  sendMessage nsSavePanel okSelector sender

-- | @- cancel:@
cancel :: IsNSSavePanel nsSavePanel => nsSavePanel -> RawId -> IO ()
cancel nsSavePanel sender =
  sendMessage nsSavePanel cancelSelector sender

-- | @- beginSheetModalForWindow:completionHandler:@
beginSheetModalForWindow_completionHandler :: (IsNSSavePanel nsSavePanel, IsNSWindow window) => nsSavePanel -> window -> Ptr () -> IO ()
beginSheetModalForWindow_completionHandler nsSavePanel window handler =
  sendMessage nsSavePanel beginSheetModalForWindow_completionHandlerSelector (toNSWindow window) handler

-- | @- beginWithCompletionHandler:@
beginWithCompletionHandler :: IsNSSavePanel nsSavePanel => nsSavePanel -> Ptr () -> IO ()
beginWithCompletionHandler nsSavePanel handler =
  sendMessage nsSavePanel beginWithCompletionHandlerSelector handler

-- | @- runModal@
runModal :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO CLong
runModal nsSavePanel =
  sendMessage nsSavePanel runModalSelector

-- | @- filename@
filename :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO (Id NSString)
filename nsSavePanel =
  sendMessage nsSavePanel filenameSelector

-- | @- directory@
directory :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO (Id NSString)
directory nsSavePanel =
  sendMessage nsSavePanel directorySelector

-- | @- setDirectory:@
setDirectory :: (IsNSSavePanel nsSavePanel, IsNSString path) => nsSavePanel -> path -> IO ()
setDirectory nsSavePanel path =
  sendMessage nsSavePanel setDirectorySelector (toNSString path)

-- | @- requiredFileType@
requiredFileType :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO (Id NSString)
requiredFileType nsSavePanel =
  sendMessage nsSavePanel requiredFileTypeSelector

-- | @- setRequiredFileType:@
setRequiredFileType :: (IsNSSavePanel nsSavePanel, IsNSString type_) => nsSavePanel -> type_ -> IO ()
setRequiredFileType nsSavePanel type_ =
  sendMessage nsSavePanel setRequiredFileTypeSelector (toNSString type_)

-- | @- beginSheetForDirectory:file:modalForWindow:modalDelegate:didEndSelector:contextInfo:@
beginSheetForDirectory_file_modalForWindow_modalDelegate_didEndSelector_contextInfo :: (IsNSSavePanel nsSavePanel, IsNSString path, IsNSString name, IsNSWindow docWindow) => nsSavePanel -> path -> name -> docWindow -> RawId -> Sel -> Ptr () -> IO ()
beginSheetForDirectory_file_modalForWindow_modalDelegate_didEndSelector_contextInfo nsSavePanel path name docWindow delegate didEndSelector contextInfo =
  sendMessage nsSavePanel beginSheetForDirectory_file_modalForWindow_modalDelegate_didEndSelector_contextInfoSelector (toNSString path) (toNSString name) (toNSWindow docWindow) delegate didEndSelector contextInfo

-- | @- runModalForDirectory:file:@
runModalForDirectory_file :: (IsNSSavePanel nsSavePanel, IsNSString path, IsNSString name) => nsSavePanel -> path -> name -> IO CLong
runModalForDirectory_file nsSavePanel path name =
  sendMessage nsSavePanel runModalForDirectory_fileSelector (toNSString path) (toNSString name)

-- | @- selectText:@
selectText :: IsNSSavePanel nsSavePanel => nsSavePanel -> RawId -> IO ()
selectText nsSavePanel sender =
  sendMessage nsSavePanel selectTextSelector sender

-- | @- URL@
url :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO (Id NSURL)
url nsSavePanel =
  sendMessage nsSavePanel urlSelector

-- | @- directoryURL@
directoryURL :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO RawId
directoryURL nsSavePanel =
  sendMessage nsSavePanel directoryURLSelector

-- | @- setDirectoryURL:@
setDirectoryURL :: IsNSSavePanel nsSavePanel => nsSavePanel -> RawId -> IO ()
setDirectoryURL nsSavePanel value =
  sendMessage nsSavePanel setDirectoryURLSelector value

-- | @- allowsOtherFileTypes@
allowsOtherFileTypes :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO Bool
allowsOtherFileTypes nsSavePanel =
  sendMessage nsSavePanel allowsOtherFileTypesSelector

-- | @- setAllowsOtherFileTypes:@
setAllowsOtherFileTypes :: IsNSSavePanel nsSavePanel => nsSavePanel -> Bool -> IO ()
setAllowsOtherFileTypes nsSavePanel value =
  sendMessage nsSavePanel setAllowsOtherFileTypesSelector value

-- | @- accessoryView@
accessoryView :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO (Id NSView)
accessoryView nsSavePanel =
  sendMessage nsSavePanel accessoryViewSelector

-- | @- setAccessoryView:@
setAccessoryView :: (IsNSSavePanel nsSavePanel, IsNSView value) => nsSavePanel -> value -> IO ()
setAccessoryView nsSavePanel value =
  sendMessage nsSavePanel setAccessoryViewSelector (toNSView value)

-- | @- delegate@
delegate :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO RawId
delegate nsSavePanel =
  sendMessage nsSavePanel delegateSelector

-- | @- setDelegate:@
setDelegate :: IsNSSavePanel nsSavePanel => nsSavePanel -> RawId -> IO ()
setDelegate nsSavePanel value =
  sendMessage nsSavePanel setDelegateSelector value

-- | @- expanded@
expanded :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO Bool
expanded nsSavePanel =
  sendMessage nsSavePanel expandedSelector

-- | @- canCreateDirectories@
canCreateDirectories :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO Bool
canCreateDirectories nsSavePanel =
  sendMessage nsSavePanel canCreateDirectoriesSelector

-- | @- setCanCreateDirectories:@
setCanCreateDirectories :: IsNSSavePanel nsSavePanel => nsSavePanel -> Bool -> IO ()
setCanCreateDirectories nsSavePanel value =
  sendMessage nsSavePanel setCanCreateDirectoriesSelector value

-- | @- canSelectHiddenExtension@
canSelectHiddenExtension :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO Bool
canSelectHiddenExtension nsSavePanel =
  sendMessage nsSavePanel canSelectHiddenExtensionSelector

-- | @- setCanSelectHiddenExtension:@
setCanSelectHiddenExtension :: IsNSSavePanel nsSavePanel => nsSavePanel -> Bool -> IO ()
setCanSelectHiddenExtension nsSavePanel value =
  sendMessage nsSavePanel setCanSelectHiddenExtensionSelector value

-- | @- extensionHidden@
extensionHidden :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO Bool
extensionHidden nsSavePanel =
  sendMessage nsSavePanel extensionHiddenSelector

-- | @- setExtensionHidden:@
setExtensionHidden :: IsNSSavePanel nsSavePanel => nsSavePanel -> Bool -> IO ()
setExtensionHidden nsSavePanel value =
  sendMessage nsSavePanel setExtensionHiddenSelector value

-- | @- treatsFilePackagesAsDirectories@
treatsFilePackagesAsDirectories :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO Bool
treatsFilePackagesAsDirectories nsSavePanel =
  sendMessage nsSavePanel treatsFilePackagesAsDirectoriesSelector

-- | @- setTreatsFilePackagesAsDirectories:@
setTreatsFilePackagesAsDirectories :: IsNSSavePanel nsSavePanel => nsSavePanel -> Bool -> IO ()
setTreatsFilePackagesAsDirectories nsSavePanel value =
  sendMessage nsSavePanel setTreatsFilePackagesAsDirectoriesSelector value

-- | @- prompt@
prompt :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO (Id NSString)
prompt nsSavePanel =
  sendMessage nsSavePanel promptSelector

-- | @- setPrompt:@
setPrompt :: (IsNSSavePanel nsSavePanel, IsNSString value) => nsSavePanel -> value -> IO ()
setPrompt nsSavePanel value =
  sendMessage nsSavePanel setPromptSelector (toNSString value)

-- | @- title@
title :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO (Id NSString)
title nsSavePanel =
  sendMessage nsSavePanel titleSelector

-- | @- setTitle:@
setTitle :: (IsNSSavePanel nsSavePanel, IsNSString value) => nsSavePanel -> value -> IO ()
setTitle nsSavePanel value =
  sendMessage nsSavePanel setTitleSelector (toNSString value)

-- | @- nameFieldLabel@
nameFieldLabel :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO (Id NSString)
nameFieldLabel nsSavePanel =
  sendMessage nsSavePanel nameFieldLabelSelector

-- | @- setNameFieldLabel:@
setNameFieldLabel :: (IsNSSavePanel nsSavePanel, IsNSString value) => nsSavePanel -> value -> IO ()
setNameFieldLabel nsSavePanel value =
  sendMessage nsSavePanel setNameFieldLabelSelector (toNSString value)

-- | @- nameFieldStringValue@
nameFieldStringValue :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO RawId
nameFieldStringValue nsSavePanel =
  sendMessage nsSavePanel nameFieldStringValueSelector

-- | @- setNameFieldStringValue:@
setNameFieldStringValue :: IsNSSavePanel nsSavePanel => nsSavePanel -> RawId -> IO ()
setNameFieldStringValue nsSavePanel value =
  sendMessage nsSavePanel setNameFieldStringValueSelector value

-- | @- message@
message :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO (Id NSString)
message nsSavePanel =
  sendMessage nsSavePanel messageSelector

-- | @- setMessage:@
setMessage :: (IsNSSavePanel nsSavePanel, IsNSString value) => nsSavePanel -> value -> IO ()
setMessage nsSavePanel value =
  sendMessage nsSavePanel setMessageSelector (toNSString value)

-- | @- showsHiddenFiles@
showsHiddenFiles :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO Bool
showsHiddenFiles nsSavePanel =
  sendMessage nsSavePanel showsHiddenFilesSelector

-- | @- setShowsHiddenFiles:@
setShowsHiddenFiles :: IsNSSavePanel nsSavePanel => nsSavePanel -> Bool -> IO ()
setShowsHiddenFiles nsSavePanel value =
  sendMessage nsSavePanel setShowsHiddenFilesSelector value

-- | @- showsTagField@
showsTagField :: IsNSSavePanel nsSavePanel => nsSavePanel -> IO Bool
showsTagField nsSavePanel =
  sendMessage nsSavePanel showsTagFieldSelector

-- | @- setShowsTagField:@
setShowsTagField :: IsNSSavePanel nsSavePanel => nsSavePanel -> Bool -> IO ()
setShowsTagField nsSavePanel value =
  sendMessage nsSavePanel setShowsTagFieldSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @savePanel@
savePanelSelector :: Selector '[] (Id NSSavePanel)
savePanelSelector = mkSelector "savePanel"

-- | @Selector@ for @validateVisibleColumns@
validateVisibleColumnsSelector :: Selector '[] ()
validateVisibleColumnsSelector = mkSelector "validateVisibleColumns"

-- | @Selector@ for @ok:@
okSelector :: Selector '[RawId] ()
okSelector = mkSelector "ok:"

-- | @Selector@ for @cancel:@
cancelSelector :: Selector '[RawId] ()
cancelSelector = mkSelector "cancel:"

-- | @Selector@ for @beginSheetModalForWindow:completionHandler:@
beginSheetModalForWindow_completionHandlerSelector :: Selector '[Id NSWindow, Ptr ()] ()
beginSheetModalForWindow_completionHandlerSelector = mkSelector "beginSheetModalForWindow:completionHandler:"

-- | @Selector@ for @beginWithCompletionHandler:@
beginWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
beginWithCompletionHandlerSelector = mkSelector "beginWithCompletionHandler:"

-- | @Selector@ for @runModal@
runModalSelector :: Selector '[] CLong
runModalSelector = mkSelector "runModal"

-- | @Selector@ for @filename@
filenameSelector :: Selector '[] (Id NSString)
filenameSelector = mkSelector "filename"

-- | @Selector@ for @directory@
directorySelector :: Selector '[] (Id NSString)
directorySelector = mkSelector "directory"

-- | @Selector@ for @setDirectory:@
setDirectorySelector :: Selector '[Id NSString] ()
setDirectorySelector = mkSelector "setDirectory:"

-- | @Selector@ for @requiredFileType@
requiredFileTypeSelector :: Selector '[] (Id NSString)
requiredFileTypeSelector = mkSelector "requiredFileType"

-- | @Selector@ for @setRequiredFileType:@
setRequiredFileTypeSelector :: Selector '[Id NSString] ()
setRequiredFileTypeSelector = mkSelector "setRequiredFileType:"

-- | @Selector@ for @beginSheetForDirectory:file:modalForWindow:modalDelegate:didEndSelector:contextInfo:@
beginSheetForDirectory_file_modalForWindow_modalDelegate_didEndSelector_contextInfoSelector :: Selector '[Id NSString, Id NSString, Id NSWindow, RawId, Sel, Ptr ()] ()
beginSheetForDirectory_file_modalForWindow_modalDelegate_didEndSelector_contextInfoSelector = mkSelector "beginSheetForDirectory:file:modalForWindow:modalDelegate:didEndSelector:contextInfo:"

-- | @Selector@ for @runModalForDirectory:file:@
runModalForDirectory_fileSelector :: Selector '[Id NSString, Id NSString] CLong
runModalForDirectory_fileSelector = mkSelector "runModalForDirectory:file:"

-- | @Selector@ for @selectText:@
selectTextSelector :: Selector '[RawId] ()
selectTextSelector = mkSelector "selectText:"

-- | @Selector@ for @URL@
urlSelector :: Selector '[] (Id NSURL)
urlSelector = mkSelector "URL"

-- | @Selector@ for @directoryURL@
directoryURLSelector :: Selector '[] RawId
directoryURLSelector = mkSelector "directoryURL"

-- | @Selector@ for @setDirectoryURL:@
setDirectoryURLSelector :: Selector '[RawId] ()
setDirectoryURLSelector = mkSelector "setDirectoryURL:"

-- | @Selector@ for @allowsOtherFileTypes@
allowsOtherFileTypesSelector :: Selector '[] Bool
allowsOtherFileTypesSelector = mkSelector "allowsOtherFileTypes"

-- | @Selector@ for @setAllowsOtherFileTypes:@
setAllowsOtherFileTypesSelector :: Selector '[Bool] ()
setAllowsOtherFileTypesSelector = mkSelector "setAllowsOtherFileTypes:"

-- | @Selector@ for @accessoryView@
accessoryViewSelector :: Selector '[] (Id NSView)
accessoryViewSelector = mkSelector "accessoryView"

-- | @Selector@ for @setAccessoryView:@
setAccessoryViewSelector :: Selector '[Id NSView] ()
setAccessoryViewSelector = mkSelector "setAccessoryView:"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @expanded@
expandedSelector :: Selector '[] Bool
expandedSelector = mkSelector "expanded"

-- | @Selector@ for @canCreateDirectories@
canCreateDirectoriesSelector :: Selector '[] Bool
canCreateDirectoriesSelector = mkSelector "canCreateDirectories"

-- | @Selector@ for @setCanCreateDirectories:@
setCanCreateDirectoriesSelector :: Selector '[Bool] ()
setCanCreateDirectoriesSelector = mkSelector "setCanCreateDirectories:"

-- | @Selector@ for @canSelectHiddenExtension@
canSelectHiddenExtensionSelector :: Selector '[] Bool
canSelectHiddenExtensionSelector = mkSelector "canSelectHiddenExtension"

-- | @Selector@ for @setCanSelectHiddenExtension:@
setCanSelectHiddenExtensionSelector :: Selector '[Bool] ()
setCanSelectHiddenExtensionSelector = mkSelector "setCanSelectHiddenExtension:"

-- | @Selector@ for @extensionHidden@
extensionHiddenSelector :: Selector '[] Bool
extensionHiddenSelector = mkSelector "extensionHidden"

-- | @Selector@ for @setExtensionHidden:@
setExtensionHiddenSelector :: Selector '[Bool] ()
setExtensionHiddenSelector = mkSelector "setExtensionHidden:"

-- | @Selector@ for @treatsFilePackagesAsDirectories@
treatsFilePackagesAsDirectoriesSelector :: Selector '[] Bool
treatsFilePackagesAsDirectoriesSelector = mkSelector "treatsFilePackagesAsDirectories"

-- | @Selector@ for @setTreatsFilePackagesAsDirectories:@
setTreatsFilePackagesAsDirectoriesSelector :: Selector '[Bool] ()
setTreatsFilePackagesAsDirectoriesSelector = mkSelector "setTreatsFilePackagesAsDirectories:"

-- | @Selector@ for @prompt@
promptSelector :: Selector '[] (Id NSString)
promptSelector = mkSelector "prompt"

-- | @Selector@ for @setPrompt:@
setPromptSelector :: Selector '[Id NSString] ()
setPromptSelector = mkSelector "setPrompt:"

-- | @Selector@ for @title@
titleSelector :: Selector '[] (Id NSString)
titleSelector = mkSelector "title"

-- | @Selector@ for @setTitle:@
setTitleSelector :: Selector '[Id NSString] ()
setTitleSelector = mkSelector "setTitle:"

-- | @Selector@ for @nameFieldLabel@
nameFieldLabelSelector :: Selector '[] (Id NSString)
nameFieldLabelSelector = mkSelector "nameFieldLabel"

-- | @Selector@ for @setNameFieldLabel:@
setNameFieldLabelSelector :: Selector '[Id NSString] ()
setNameFieldLabelSelector = mkSelector "setNameFieldLabel:"

-- | @Selector@ for @nameFieldStringValue@
nameFieldStringValueSelector :: Selector '[] RawId
nameFieldStringValueSelector = mkSelector "nameFieldStringValue"

-- | @Selector@ for @setNameFieldStringValue:@
setNameFieldStringValueSelector :: Selector '[RawId] ()
setNameFieldStringValueSelector = mkSelector "setNameFieldStringValue:"

-- | @Selector@ for @message@
messageSelector :: Selector '[] (Id NSString)
messageSelector = mkSelector "message"

-- | @Selector@ for @setMessage:@
setMessageSelector :: Selector '[Id NSString] ()
setMessageSelector = mkSelector "setMessage:"

-- | @Selector@ for @showsHiddenFiles@
showsHiddenFilesSelector :: Selector '[] Bool
showsHiddenFilesSelector = mkSelector "showsHiddenFiles"

-- | @Selector@ for @setShowsHiddenFiles:@
setShowsHiddenFilesSelector :: Selector '[Bool] ()
setShowsHiddenFilesSelector = mkSelector "setShowsHiddenFiles:"

-- | @Selector@ for @showsTagField@
showsTagFieldSelector :: Selector '[] Bool
showsTagFieldSelector = mkSelector "showsTagField"

-- | @Selector@ for @setShowsTagField:@
setShowsTagFieldSelector :: Selector '[Bool] ()
setShowsTagFieldSelector = mkSelector "setShowsTagField:"

