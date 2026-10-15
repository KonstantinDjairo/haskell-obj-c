{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.BackgroundTasks.Internal.Classes (
    module ObjC.BackgroundTasks.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- BGTask ----------

-- | An abstract class that represents the background work for which the app was launched to handle.
--
-- Subclasses of this type are created by the system and should not be directly instantiated.
-- 
-- Phantom type for @BGTask@.
data BGTask

instance IsObjCObject (Id BGTask) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BGTask"

class IsNSObject a => IsBGTask a where
  toBGTask :: a -> Id BGTask

instance IsBGTask (Id BGTask) where
  toBGTask = unsafeCastId

instance IsNSObject (Id BGTask) where
  toNSObject = unsafeCastId

-- ---------- BGTaskRequest ----------

-- | An abstract class that represents a request for the app to be launched in the background to perform work.
--
-- Do not instantiate instances of this class directly. Instead, use one of its concrete subclasses.
-- 
-- Phantom type for @BGTaskRequest@.
data BGTaskRequest

instance IsObjCObject (Id BGTaskRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BGTaskRequest"

class IsNSObject a => IsBGTaskRequest a where
  toBGTaskRequest :: a -> Id BGTaskRequest

instance IsBGTaskRequest (Id BGTaskRequest) where
  toBGTaskRequest = unsafeCastId

instance IsNSObject (Id BGTaskRequest) where
  toNSObject = unsafeCastId

-- ---------- BGTaskScheduler ----------

-- | BGTaskScheduler
--
-- The object you use to schedule deferrable work to be done in the background.
-- 
-- Phantom type for @BGTaskScheduler@.
data BGTaskScheduler

instance IsObjCObject (Id BGTaskScheduler) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BGTaskScheduler"

class IsNSObject a => IsBGTaskScheduler a where
  toBGTaskScheduler :: a -> Id BGTaskScheduler

instance IsBGTaskScheduler (Id BGTaskScheduler) where
  toBGTaskScheduler = unsafeCastId

instance IsNSObject (Id BGTaskScheduler) where
  toNSObject = unsafeCastId

-- ---------- BGAppRefreshTask ----------

-- | A background task used to update your app's contents in the background.
-- 
-- Phantom type for @BGAppRefreshTask@.
data BGAppRefreshTask

instance IsObjCObject (Id BGAppRefreshTask) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BGAppRefreshTask"

class IsBGTask a => IsBGAppRefreshTask a where
  toBGAppRefreshTask :: a -> Id BGAppRefreshTask

instance IsBGAppRefreshTask (Id BGAppRefreshTask) where
  toBGAppRefreshTask = unsafeCastId

instance IsBGTask (Id BGAppRefreshTask) where
  toBGTask = unsafeCastId

instance IsNSObject (Id BGAppRefreshTask) where
  toNSObject = unsafeCastId

-- ---------- BGProcessingTask ----------

-- | A background task used to perform deferrable processing.
-- 
-- Phantom type for @BGProcessingTask@.
data BGProcessingTask

instance IsObjCObject (Id BGProcessingTask) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BGProcessingTask"

class IsBGTask a => IsBGProcessingTask a where
  toBGProcessingTask :: a -> Id BGProcessingTask

instance IsBGProcessingTask (Id BGProcessingTask) where
  toBGProcessingTask = unsafeCastId

instance IsBGTask (Id BGProcessingTask) where
  toBGTask = unsafeCastId

instance IsNSObject (Id BGProcessingTask) where
  toNSObject = unsafeCastId

-- ---------- BGAppRefreshTaskRequest ----------

-- | A request to briefly launch your app to keep its contents up to date.
--
-- Schedule a refresh task request to ask that the system launch your app briefly so that you can download data and keep your app's contents up-to-date. The system will fulfill this request intelligently based on system conditions and app usage.
-- 
-- Phantom type for @BGAppRefreshTaskRequest@.
data BGAppRefreshTaskRequest

instance IsObjCObject (Id BGAppRefreshTaskRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BGAppRefreshTaskRequest"

class IsBGTaskRequest a => IsBGAppRefreshTaskRequest a where
  toBGAppRefreshTaskRequest :: a -> Id BGAppRefreshTaskRequest

instance IsBGAppRefreshTaskRequest (Id BGAppRefreshTaskRequest) where
  toBGAppRefreshTaskRequest = unsafeCastId

instance IsBGTaskRequest (Id BGAppRefreshTaskRequest) where
  toBGTaskRequest = unsafeCastId

instance IsNSObject (Id BGAppRefreshTaskRequest) where
  toNSObject = unsafeCastId

-- ---------- BGProcessingTaskRequest ----------

-- | A request to launch your app to perform deferrable processing tasks.
--
-- Schedule a processing task request to ask that the system launch your app when conditions are favorable for battery life to handle deferrable, longer-running processing, such as syncing, database maintenance, or similar tasks. The system will attempt to fulfill this request to the best of its ability within the next two days as long as the user has used your app within the past week.
-- 
-- Phantom type for @BGProcessingTaskRequest@.
data BGProcessingTaskRequest

instance IsObjCObject (Id BGProcessingTaskRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BGProcessingTaskRequest"

class IsBGTaskRequest a => IsBGProcessingTaskRequest a where
  toBGProcessingTaskRequest :: a -> Id BGProcessingTaskRequest

instance IsBGProcessingTaskRequest (Id BGProcessingTaskRequest) where
  toBGProcessingTaskRequest = unsafeCastId

instance IsBGTaskRequest (Id BGProcessingTaskRequest) where
  toBGTaskRequest = unsafeCastId

instance IsNSObject (Id BGProcessingTaskRequest) where
  toNSObject = unsafeCastId
