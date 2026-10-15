{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol IMServicePlugInChatRoomSupport@.
--
-- Usage:
--
-- @
-- delegate <- newIMServicePlugInChatRoomSupport defaultIMServicePlugInChatRoomSupportOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.IMServicePlugIn.Delegate.IMServicePlugInChatRoomSupport
  ( IMServicePlugInChatRoomSupportOverrides(..)
  , defaultIMServicePlugInChatRoomSupportOverrides
  , newIMServicePlugInChatRoomSupport
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

-- | Overrides record for @\@protocol IMServicePlugInChatRoomSupport@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data IMServicePlugInChatRoomSupportOverrides = IMServicePlugInChatRoomSupportOverrides
  { _joinChatRoom :: !(Maybe (RawId -> IO ()))
  , _leaveChatRoom :: !(Maybe (RawId -> IO ()))
  , _inviteHandles_toChatRoom_withMessage :: !(Maybe (RawId -> RawId -> RawId -> IO ()))
  , _sendMessage_toChatRoom :: !(Maybe (RawId -> RawId -> IO ()))
  , _declineChatRoomInvitation :: !(Maybe (RawId -> IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultIMServicePlugInChatRoomSupportOverrides :: IMServicePlugInChatRoomSupportOverrides
defaultIMServicePlugInChatRoomSupportOverrides = IMServicePlugInChatRoomSupportOverrides
  { _joinChatRoom = Nothing
  , _leaveChatRoom = Nothing
  , _inviteHandles_toChatRoom_withMessage = Nothing
  , _sendMessage_toChatRoom = Nothing
  , _declineChatRoomInvitation = Nothing
  }

foreign import ccall "wrapper"
  wrap_at_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at_at_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ()))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE imServicePlugInChatRoomSupportDelegateClass #-}
imServicePlugInChatRoomSupportDelegateClass :: Class
imServicePlugInChatRoomSupportDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsIMServicePlugInChatRoomSupport" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_joinChatRoom = unSelector (mkSelector "joinChatRoom:")
      sel_leaveChatRoom = unSelector (mkSelector "leaveChatRoom:")
      sel_inviteHandles_toChatRoom_withMessage = unSelector (mkSelector "inviteHandles:toChatRoom:withMessage:")
      sel_sendMessage_toChatRoom = unSelector (mkSelector "sendMessage:toChatRoom:")
      sel_declineChatRoomInvitation = unSelector (mkSelector "declineChatRoomInvitation:")
  -- joinChatRoom:
  stub_0 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInChatRoomSupportOverrides
    case _joinChatRoom rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "joinChatRoom:" "v@:@" stub_0

  -- leaveChatRoom:
  stub_1 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInChatRoomSupportOverrides
    case _leaveChatRoom rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "leaveChatRoom:" "v@:@" stub_1

  -- inviteHandles:toChatRoom:withMessage:
  stub_2 <- wrap_at_at_at_v $ \self _cmd arg0 arg1 arg2 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInChatRoomSupportOverrides
    case _inviteHandles_toChatRoom_withMessage rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1) (RawId arg2)
  addObjCMethod cls "inviteHandles:toChatRoom:withMessage:" "v@:@@@" stub_2

  -- sendMessage:toChatRoom:
  stub_3 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInChatRoomSupportOverrides
    case _sendMessage_toChatRoom rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "sendMessage:toChatRoom:" "v@:@@" stub_3

  -- declineChatRoomInvitation:
  stub_4 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInChatRoomSupportOverrides
    case _declineChatRoomInvitation rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "declineChatRoomInvitation:" "v@:@" stub_4

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInChatRoomSupportOverrides
    if queriedSel == sel_joinChatRoom then pure (maybe 0 (const 1) (_joinChatRoom rec_))
    else if queriedSel == sel_leaveChatRoom then pure (maybe 0 (const 1) (_leaveChatRoom rec_))
    else if queriedSel == sel_inviteHandles_toChatRoom_withMessage then pure (maybe 0 (const 1) (_inviteHandles_toChatRoom_withMessage rec_))
    else if queriedSel == sel_sendMessage_toChatRoom then pure (maybe 0 (const 1) (_sendMessage_toChatRoom rec_))
    else if queriedSel == sel_declineChatRoomInvitation then pure (maybe 0 (const 1) (_declineChatRoomInvitation rec_))
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
newIMServicePlugInChatRoomSupport :: IMServicePlugInChatRoomSupportOverrides -> IO RawId
newIMServicePlugInChatRoomSupport overrides = do
  inst <- class_createInstance imServicePlugInChatRoomSupportDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
