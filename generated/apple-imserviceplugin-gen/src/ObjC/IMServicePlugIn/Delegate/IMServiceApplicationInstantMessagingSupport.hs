{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol IMServiceApplicationInstantMessagingSupport@.
--
-- Usage:
--
-- @
-- delegate <- newIMServiceApplicationInstantMessagingSupport defaultIMServiceApplicationInstantMessagingSupportOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.IMServicePlugIn.Delegate.IMServiceApplicationInstantMessagingSupport
  ( IMServiceApplicationInstantMessagingSupportOverrides(..)
  , defaultIMServiceApplicationInstantMessagingSupportOverrides
  , newIMServiceApplicationInstantMessagingSupport
  ) where

import Foreign.Ptr (Ptr, FunPtr, castPtr, nullPtr)
import Foreign.C.Types
import Foreign.StablePtr (newStablePtr, deRefStablePtr)
import System.IO.Unsafe (unsafePerformIO)
import Foreign.C.String (withCString)
import Foreign.LibFFI (retCULong, argPtr)

import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass, class_createInstance)
import ObjC.Runtime.ClassBuilder (objc_allocateClassPair, objc_registerClassPair)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.MsgSend (sendSuperMsg)
import ObjC.Runtime.StableIvar

-- | Overrides record for @\@protocol IMServiceApplicationInstantMessagingSupport@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data IMServiceApplicationInstantMessagingSupportOverrides = IMServiceApplicationInstantMessagingSupportOverrides
  { _handleDidStartTyping :: !(Maybe (RawId -> IO ()))
  , _handleDidStopTyping :: !(Maybe (RawId -> IO ()))
  , _plugInDidReceiveMessage_fromHandle :: !(Maybe (RawId -> RawId -> IO ()))
  , _plugInDidSendMessage_toHandle_error :: !(Maybe (RawId -> RawId -> RawId -> IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultIMServiceApplicationInstantMessagingSupportOverrides :: IMServiceApplicationInstantMessagingSupportOverrides
defaultIMServiceApplicationInstantMessagingSupportOverrides = IMServiceApplicationInstantMessagingSupportOverrides
  { _handleDidStartTyping = Nothing
  , _handleDidStopTyping = Nothing
  , _plugInDidReceiveMessage_fromHandle = Nothing
  , _plugInDidSendMessage_toHandle_error = Nothing
  }

foreign import ccall "wrapper"
  wrap_at_at_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ()))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE imServiceApplicationInstantMessagingSupportDelegateClass #-}
imServiceApplicationInstantMessagingSupportDelegateClass :: Class
imServiceApplicationInstantMessagingSupportDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsIMServiceApplicationInstantMessagingSupport" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_handleDidStartTyping = unSelector (mkSelector "handleDidStartTyping:")
      sel_handleDidStopTyping = unSelector (mkSelector "handleDidStopTyping:")
      sel_plugInDidReceiveMessage_fromHandle = unSelector (mkSelector "plugInDidReceiveMessage:fromHandle:")
      sel_plugInDidSendMessage_toHandle_error = unSelector (mkSelector "plugInDidSendMessage:toHandle:error:")
  -- handleDidStartTyping:
  stub_0 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationInstantMessagingSupportOverrides
    case _handleDidStartTyping rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "handleDidStartTyping:" "v@:@" stub_0

  -- handleDidStopTyping:
  stub_1 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationInstantMessagingSupportOverrides
    case _handleDidStopTyping rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "handleDidStopTyping:" "v@:@" stub_1

  -- plugInDidReceiveMessage:fromHandle:
  stub_2 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationInstantMessagingSupportOverrides
    case _plugInDidReceiveMessage_fromHandle rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "plugInDidReceiveMessage:fromHandle:" "v@:@@" stub_2

  -- plugInDidSendMessage:toHandle:error:
  stub_3 <- wrap_at_at_at_v $ \self _cmd arg0 arg1 arg2 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationInstantMessagingSupportOverrides
    case _plugInDidSendMessage_toHandle_error rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1) (RawId arg2)
  addObjCMethod cls "plugInDidSendMessage:toHandle:error:" "v@:@@@" stub_3

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationInstantMessagingSupportOverrides
    if queriedSel == sel_handleDidStartTyping then pure (maybe 0 (const 1) (_handleDidStartTyping rec_))
    else if queriedSel == sel_handleDidStopTyping then pure (maybe 0 (const 1) (_handleDidStopTyping rec_))
    else if queriedSel == sel_plugInDidReceiveMessage_fromHandle then pure (maybe 0 (const 1) (_plugInDidReceiveMessage_fromHandle rec_))
    else if queriedSel == sel_plugInDidSendMessage_toHandle_error then pure (maybe 0 (const 1) (_plugInDidSendMessage_toHandle_error rec_))
    else do
      let super_ = ObjCSuper (RawId self) superCls
      sendSuperMsg super_ (mkSelector "respondsToSelector:") retCULong
        [argPtr (castPtr queriedSel :: Ptr ())]
  addObjCMethod cls "respondsToSelector:" "B@::" rtsStub

  addStablePtrDeallocHandler cls
  objc_registerClassPair cls
  pure cls

-- | Create a new delegate implementing this protocol.
--
-- The returned 'RawId' can be used as a delegate or data source.
newIMServiceApplicationInstantMessagingSupport :: IMServiceApplicationInstantMessagingSupportOverrides -> IO RawId
newIMServiceApplicationInstantMessagingSupport overrides = do
  inst <- class_createInstance imServiceApplicationInstantMessagingSupportDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
