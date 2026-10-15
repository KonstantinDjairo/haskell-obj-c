{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol IMServicePlugInGroupListAuthorizationSupport@.
--
-- Usage:
--
-- @
-- delegate <- newIMServicePlugInGroupListAuthorizationSupport defaultIMServicePlugInGroupListAuthorizationSupportOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.IMServicePlugIn.Delegate.IMServicePlugInGroupListAuthorizationSupport
  ( IMServicePlugInGroupListAuthorizationSupportOverrides(..)
  , defaultIMServicePlugInGroupListAuthorizationSupportOverrides
  , newIMServicePlugInGroupListAuthorizationSupport
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

-- | Overrides record for @\@protocol IMServicePlugInGroupListAuthorizationSupport@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data IMServicePlugInGroupListAuthorizationSupportOverrides = IMServicePlugInGroupListAuthorizationSupportOverrides
  { _sendAuthorizationRequestToHandle :: !(Maybe (RawId -> IO ()))
  , _acceptAuthorizationRequestFromHandle :: !(Maybe (RawId -> IO ()))
  , _declineAuthorizationRequestFromHandle :: !(Maybe (RawId -> IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultIMServicePlugInGroupListAuthorizationSupportOverrides :: IMServicePlugInGroupListAuthorizationSupportOverrides
defaultIMServicePlugInGroupListAuthorizationSupportOverrides = IMServicePlugInGroupListAuthorizationSupportOverrides
  { _sendAuthorizationRequestToHandle = Nothing
  , _acceptAuthorizationRequestFromHandle = Nothing
  , _declineAuthorizationRequestFromHandle = Nothing
  }

foreign import ccall "wrapper"
  wrap_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ()))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE imServicePlugInGroupListAuthorizationSupportDelegateClass #-}
imServicePlugInGroupListAuthorizationSupportDelegateClass :: Class
imServicePlugInGroupListAuthorizationSupportDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsIMServicePlugInGroupListAuthorizationSupport" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_sendAuthorizationRequestToHandle = unSelector (mkSelector "sendAuthorizationRequestToHandle:")
      sel_acceptAuthorizationRequestFromHandle = unSelector (mkSelector "acceptAuthorizationRequestFromHandle:")
      sel_declineAuthorizationRequestFromHandle = unSelector (mkSelector "declineAuthorizationRequestFromHandle:")
  -- sendAuthorizationRequestToHandle:
  stub_0 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInGroupListAuthorizationSupportOverrides
    case _sendAuthorizationRequestToHandle rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "sendAuthorizationRequestToHandle:" "v@:@" stub_0

  -- acceptAuthorizationRequestFromHandle:
  stub_1 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInGroupListAuthorizationSupportOverrides
    case _acceptAuthorizationRequestFromHandle rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "acceptAuthorizationRequestFromHandle:" "v@:@" stub_1

  -- declineAuthorizationRequestFromHandle:
  stub_2 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInGroupListAuthorizationSupportOverrides
    case _declineAuthorizationRequestFromHandle rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "declineAuthorizationRequestFromHandle:" "v@:@" stub_2

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInGroupListAuthorizationSupportOverrides
    if queriedSel == sel_sendAuthorizationRequestToHandle then pure (maybe 0 (const 1) (_sendAuthorizationRequestToHandle rec_))
    else if queriedSel == sel_acceptAuthorizationRequestFromHandle then pure (maybe 0 (const 1) (_acceptAuthorizationRequestFromHandle rec_))
    else if queriedSel == sel_declineAuthorizationRequestFromHandle then pure (maybe 0 (const 1) (_declineAuthorizationRequestFromHandle rec_))
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
newIMServicePlugInGroupListAuthorizationSupport :: IMServicePlugInGroupListAuthorizationSupportOverrides -> IO RawId
newIMServicePlugInGroupListAuthorizationSupport overrides = do
  inst <- class_createInstance imServicePlugInGroupListAuthorizationSupportDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
