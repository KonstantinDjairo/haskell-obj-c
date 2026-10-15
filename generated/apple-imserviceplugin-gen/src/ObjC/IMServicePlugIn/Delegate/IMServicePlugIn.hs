{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol IMServicePlugIn@.
--
-- Usage:
--
-- @
-- delegate <- newIMServicePlugIn defaultIMServicePlugInOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.IMServicePlugIn.Delegate.IMServicePlugIn
  ( IMServicePlugInOverrides(..)
  , defaultIMServicePlugInOverrides
  , newIMServicePlugIn
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

-- | Overrides record for @\@protocol IMServicePlugIn@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data IMServicePlugInOverrides = IMServicePlugInOverrides
  { _initWithServiceApplication :: !(Maybe (RawId -> IO RawId))
  , _updateAccountSettings :: !(Maybe (RawId -> IO ()))
  , _login :: !(Maybe (IO ()))
  , _logout :: !(Maybe (IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultIMServicePlugInOverrides :: IMServicePlugInOverrides
defaultIMServicePlugInOverrides = IMServicePlugInOverrides
  { _initWithServiceApplication = Nothing
  , _updateAccountSettings = Nothing
  , _login = Nothing
  , _logout = Nothing
  }

foreign import ccall "wrapper"
  wrap_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> IO ()))

foreign import ccall "wrapper"
  wrap_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at_at
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO (Ptr ObjCObject))
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO (Ptr ObjCObject)))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE imServicePlugInDelegateClass #-}
imServicePlugInDelegateClass :: Class
imServicePlugInDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsIMServicePlugIn" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_initWithServiceApplication = unSelector (mkSelector "initWithServiceApplication:")
      sel_updateAccountSettings = unSelector (mkSelector "updateAccountSettings:")
      sel_login = unSelector (mkSelector "login")
      sel_logout = unSelector (mkSelector "logout")
  -- initWithServiceApplication:
  stub_0 <- wrap_at_at $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInOverrides
    case _initWithServiceApplication rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f (RawId arg0)
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "initWithServiceApplication:" "@@:@" stub_0

  -- updateAccountSettings:
  stub_1 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInOverrides
    case _updateAccountSettings rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "updateAccountSettings:" "v@:@" stub_1

  -- login
  stub_2 <- wrap_v $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInOverrides
    case _login rec_ of
      Nothing -> pure ()
      Just f -> f 
  addObjCMethod cls "login" "v@:" stub_2

  -- logout
  stub_3 <- wrap_v $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInOverrides
    case _logout rec_ of
      Nothing -> pure ()
      Just f -> f 
  addObjCMethod cls "logout" "v@:" stub_3

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInOverrides
    if queriedSel == sel_initWithServiceApplication then pure (maybe 0 (const 1) (_initWithServiceApplication rec_))
    else if queriedSel == sel_updateAccountSettings then pure (maybe 0 (const 1) (_updateAccountSettings rec_))
    else if queriedSel == sel_login then pure (maybe 0 (const 1) (_login rec_))
    else if queriedSel == sel_logout then pure (maybe 0 (const 1) (_logout rec_))
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
newIMServicePlugIn :: IMServicePlugInOverrides -> IO RawId
newIMServicePlugIn overrides = do
  inst <- class_createInstance imServicePlugInDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
