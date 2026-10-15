{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol IMServicePlugInInstantMessagingSupport@.
--
-- Usage:
--
-- @
-- delegate <- newIMServicePlugInInstantMessagingSupport defaultIMServicePlugInInstantMessagingSupportOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.IMServicePlugIn.Delegate.IMServicePlugInInstantMessagingSupport
  ( IMServicePlugInInstantMessagingSupportOverrides(..)
  , defaultIMServicePlugInInstantMessagingSupportOverrides
  , newIMServicePlugInInstantMessagingSupport
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

-- | Overrides record for @\@protocol IMServicePlugInInstantMessagingSupport@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data IMServicePlugInInstantMessagingSupportOverrides = IMServicePlugInInstantMessagingSupportOverrides
  { _userDidStartTypingToHandle :: !(Maybe (RawId -> IO ()))
  , _userDidStopTypingToHandle :: !(Maybe (RawId -> IO ()))
  , _sendMessage_toHandle :: !(Maybe (RawId -> RawId -> IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultIMServicePlugInInstantMessagingSupportOverrides :: IMServicePlugInInstantMessagingSupportOverrides
defaultIMServicePlugInInstantMessagingSupportOverrides = IMServicePlugInInstantMessagingSupportOverrides
  { _userDidStartTypingToHandle = Nothing
  , _userDidStopTypingToHandle = Nothing
  , _sendMessage_toHandle = Nothing
  }

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
{-# NOINLINE imServicePlugInInstantMessagingSupportDelegateClass #-}
imServicePlugInInstantMessagingSupportDelegateClass :: Class
imServicePlugInInstantMessagingSupportDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsIMServicePlugInInstantMessagingSupport" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_userDidStartTypingToHandle = unSelector (mkSelector "userDidStartTypingToHandle:")
      sel_userDidStopTypingToHandle = unSelector (mkSelector "userDidStopTypingToHandle:")
      sel_sendMessage_toHandle = unSelector (mkSelector "sendMessage:toHandle:")
  -- userDidStartTypingToHandle:
  stub_0 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInInstantMessagingSupportOverrides
    case _userDidStartTypingToHandle rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "userDidStartTypingToHandle:" "v@:@" stub_0

  -- userDidStopTypingToHandle:
  stub_1 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInInstantMessagingSupportOverrides
    case _userDidStopTypingToHandle rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "userDidStopTypingToHandle:" "v@:@" stub_1

  -- sendMessage:toHandle:
  stub_2 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInInstantMessagingSupportOverrides
    case _sendMessage_toHandle rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "sendMessage:toHandle:" "v@:@@" stub_2

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInInstantMessagingSupportOverrides
    if queriedSel == sel_userDidStartTypingToHandle then pure (maybe 0 (const 1) (_userDidStartTypingToHandle rec_))
    else if queriedSel == sel_userDidStopTypingToHandle then pure (maybe 0 (const 1) (_userDidStopTypingToHandle rec_))
    else if queriedSel == sel_sendMessage_toHandle then pure (maybe 0 (const 1) (_sendMessage_toHandle rec_))
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
newIMServicePlugInInstantMessagingSupport :: IMServicePlugInInstantMessagingSupportOverrides -> IO RawId
newIMServicePlugInInstantMessagingSupport overrides = do
  inst <- class_createInstance imServicePlugInInstantMessagingSupportDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
