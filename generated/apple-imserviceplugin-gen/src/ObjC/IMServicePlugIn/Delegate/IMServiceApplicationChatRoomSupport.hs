{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol IMServiceApplicationChatRoomSupport@.
--
-- Usage:
--
-- @
-- delegate <- newIMServiceApplicationChatRoomSupport defaultIMServiceApplicationChatRoomSupportOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.IMServicePlugIn.Delegate.IMServiceApplicationChatRoomSupport
  ( IMServiceApplicationChatRoomSupportOverrides(..)
  , defaultIMServiceApplicationChatRoomSupportOverrides
  , newIMServiceApplicationChatRoomSupport
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

-- | Overrides record for @\@protocol IMServiceApplicationChatRoomSupport@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data IMServiceApplicationChatRoomSupportOverrides = IMServiceApplicationChatRoomSupportOverrides
  { _plugInDidReceiveInvitation_forChatRoom_fromHandle :: !(Maybe (RawId -> RawId -> RawId -> IO ()))
  , _plugInDidReceiveMessage_forChatRoom_fromHandle :: !(Maybe (RawId -> RawId -> RawId -> IO ()))
  , _plugInDidReceiveNotice_forChatRoom :: !(Maybe (RawId -> RawId -> IO ()))
  , _plugInDidSendMessage_toChatRoom_error :: !(Maybe (RawId -> RawId -> RawId -> IO ()))
  , _plugInDidJoinChatRoom :: !(Maybe (RawId -> IO ()))
  , _plugInDidLeaveChatRoom_error :: !(Maybe (RawId -> RawId -> IO ()))
  , _handles_didJoinChatRoom :: !(Maybe (RawId -> RawId -> IO ()))
  , _handles_didLeaveChatRoom :: !(Maybe (RawId -> RawId -> IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultIMServiceApplicationChatRoomSupportOverrides :: IMServiceApplicationChatRoomSupportOverrides
defaultIMServiceApplicationChatRoomSupportOverrides = IMServiceApplicationChatRoomSupportOverrides
  { _plugInDidReceiveInvitation_forChatRoom_fromHandle = Nothing
  , _plugInDidReceiveMessage_forChatRoom_fromHandle = Nothing
  , _plugInDidReceiveNotice_forChatRoom = Nothing
  , _plugInDidSendMessage_toChatRoom_error = Nothing
  , _plugInDidJoinChatRoom = Nothing
  , _plugInDidLeaveChatRoom_error = Nothing
  , _handles_didJoinChatRoom = Nothing
  , _handles_didLeaveChatRoom = Nothing
  }

foreign import ccall "wrapper"
  wrap_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at_at_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> Ptr ObjCObject -> IO ()))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE imServiceApplicationChatRoomSupportDelegateClass #-}
imServiceApplicationChatRoomSupportDelegateClass :: Class
imServiceApplicationChatRoomSupportDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsIMServiceApplicationChatRoomSupport" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_plugInDidReceiveInvitation_forChatRoom_fromHandle = unSelector (mkSelector "plugInDidReceiveInvitation:forChatRoom:fromHandle:")
      sel_plugInDidReceiveMessage_forChatRoom_fromHandle = unSelector (mkSelector "plugInDidReceiveMessage:forChatRoom:fromHandle:")
      sel_plugInDidReceiveNotice_forChatRoom = unSelector (mkSelector "plugInDidReceiveNotice:forChatRoom:")
      sel_plugInDidSendMessage_toChatRoom_error = unSelector (mkSelector "plugInDidSendMessage:toChatRoom:error:")
      sel_plugInDidJoinChatRoom = unSelector (mkSelector "plugInDidJoinChatRoom:")
      sel_plugInDidLeaveChatRoom_error = unSelector (mkSelector "plugInDidLeaveChatRoom:error:")
      sel_handles_didJoinChatRoom = unSelector (mkSelector "handles:didJoinChatRoom:")
      sel_handles_didLeaveChatRoom = unSelector (mkSelector "handles:didLeaveChatRoom:")
  -- plugInDidReceiveInvitation:forChatRoom:fromHandle:
  stub_0 <- wrap_at_at_at_v $ \self _cmd arg0 arg1 arg2 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationChatRoomSupportOverrides
    case _plugInDidReceiveInvitation_forChatRoom_fromHandle rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1) (RawId arg2)
  addObjCMethod cls "plugInDidReceiveInvitation:forChatRoom:fromHandle:" "v@:@@@" stub_0

  -- plugInDidReceiveMessage:forChatRoom:fromHandle:
  stub_1 <- wrap_at_at_at_v $ \self _cmd arg0 arg1 arg2 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationChatRoomSupportOverrides
    case _plugInDidReceiveMessage_forChatRoom_fromHandle rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1) (RawId arg2)
  addObjCMethod cls "plugInDidReceiveMessage:forChatRoom:fromHandle:" "v@:@@@" stub_1

  -- plugInDidReceiveNotice:forChatRoom:
  stub_2 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationChatRoomSupportOverrides
    case _plugInDidReceiveNotice_forChatRoom rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "plugInDidReceiveNotice:forChatRoom:" "v@:@@" stub_2

  -- plugInDidSendMessage:toChatRoom:error:
  stub_3 <- wrap_at_at_at_v $ \self _cmd arg0 arg1 arg2 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationChatRoomSupportOverrides
    case _plugInDidSendMessage_toChatRoom_error rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1) (RawId arg2)
  addObjCMethod cls "plugInDidSendMessage:toChatRoom:error:" "v@:@@@" stub_3

  -- plugInDidJoinChatRoom:
  stub_4 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationChatRoomSupportOverrides
    case _plugInDidJoinChatRoom rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "plugInDidJoinChatRoom:" "v@:@" stub_4

  -- plugInDidLeaveChatRoom:error:
  stub_5 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationChatRoomSupportOverrides
    case _plugInDidLeaveChatRoom_error rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "plugInDidLeaveChatRoom:error:" "v@:@@" stub_5

  -- handles:didJoinChatRoom:
  stub_6 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationChatRoomSupportOverrides
    case _handles_didJoinChatRoom rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "handles:didJoinChatRoom:" "v@:@@" stub_6

  -- handles:didLeaveChatRoom:
  stub_7 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationChatRoomSupportOverrides
    case _handles_didLeaveChatRoom rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "handles:didLeaveChatRoom:" "v@:@@" stub_7

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationChatRoomSupportOverrides
    if queriedSel == sel_plugInDidReceiveInvitation_forChatRoom_fromHandle then pure (maybe 0 (const 1) (_plugInDidReceiveInvitation_forChatRoom_fromHandle rec_))
    else if queriedSel == sel_plugInDidReceiveMessage_forChatRoom_fromHandle then pure (maybe 0 (const 1) (_plugInDidReceiveMessage_forChatRoom_fromHandle rec_))
    else if queriedSel == sel_plugInDidReceiveNotice_forChatRoom then pure (maybe 0 (const 1) (_plugInDidReceiveNotice_forChatRoom rec_))
    else if queriedSel == sel_plugInDidSendMessage_toChatRoom_error then pure (maybe 0 (const 1) (_plugInDidSendMessage_toChatRoom_error rec_))
    else if queriedSel == sel_plugInDidJoinChatRoom then pure (maybe 0 (const 1) (_plugInDidJoinChatRoom rec_))
    else if queriedSel == sel_plugInDidLeaveChatRoom_error then pure (maybe 0 (const 1) (_plugInDidLeaveChatRoom_error rec_))
    else if queriedSel == sel_handles_didJoinChatRoom then pure (maybe 0 (const 1) (_handles_didJoinChatRoom rec_))
    else if queriedSel == sel_handles_didLeaveChatRoom then pure (maybe 0 (const 1) (_handles_didLeaveChatRoom rec_))
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
newIMServiceApplicationChatRoomSupport :: IMServiceApplicationChatRoomSupportOverrides -> IO RawId
newIMServiceApplicationChatRoomSupport overrides = do
  inst <- class_createInstance imServiceApplicationChatRoomSupportDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
