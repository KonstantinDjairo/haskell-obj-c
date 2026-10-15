{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @EXHostViewController@.
module ObjC.ExtensionKit.EXHostViewController
  ( EXHostViewController
  , IsEXHostViewController(..)
  , makeXPCConnectionWithError
  , delegate
  , setDelegate
  , placeholderView
  , setPlaceholderView
  , delegateSelector
  , makeXPCConnectionWithErrorSelector
  , placeholderViewSelector
  , setDelegateSelector
  , setPlaceholderViewSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ExtensionKit.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Returns the connection, the caller is responsible for configuring the connection.
--
-- ObjC selector: @- makeXPCConnectionWithError:@
makeXPCConnectionWithError :: (IsEXHostViewController exHostViewController, IsNSError error_) => exHostViewController -> error_ -> IO (Id NSXPCConnection)
makeXPCConnectionWithError exHostViewController error_ =
  sendMessage exHostViewController makeXPCConnectionWithErrorSelector (toNSError error_)

-- | The view controller's delegate. The delegate will receive callbacks when the hosting state changes.
--
-- ObjC selector: @- delegate@
delegate :: IsEXHostViewController exHostViewController => exHostViewController -> IO RawId
delegate exHostViewController =
  sendMessage exHostViewController delegateSelector

-- | The view controller's delegate. The delegate will receive callbacks when the hosting state changes.
--
-- ObjC selector: @- setDelegate:@
setDelegate :: IsEXHostViewController exHostViewController => exHostViewController -> RawId -> IO ()
setDelegate exHostViewController value =
  sendMessage exHostViewController setDelegateSelector value

-- | @- placeholderView@
placeholderView :: IsEXHostViewController exHostViewController => exHostViewController -> IO (Id NSView)
placeholderView exHostViewController =
  sendMessage exHostViewController placeholderViewSelector

-- | @- setPlaceholderView:@
setPlaceholderView :: (IsEXHostViewController exHostViewController, IsNSView value) => exHostViewController -> value -> IO ()
setPlaceholderView exHostViewController value =
  sendMessage exHostViewController setPlaceholderViewSelector (toNSView value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @makeXPCConnectionWithError:@
makeXPCConnectionWithErrorSelector :: Selector '[Id NSError] (Id NSXPCConnection)
makeXPCConnectionWithErrorSelector = mkSelector "makeXPCConnectionWithError:"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @placeholderView@
placeholderViewSelector :: Selector '[] (Id NSView)
placeholderViewSelector = mkSelector "placeholderView"

-- | @Selector@ for @setPlaceholderView:@
setPlaceholderViewSelector :: Selector '[Id NSView] ()
setPlaceholderViewSelector = mkSelector "setPlaceholderView:"

