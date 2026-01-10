## 0.8.4 (2026-01-09)

### Features
* Added `turbo_serializable` package dependency for reusable serialization abstractions
* Re-exports `TurboSerializable<M>` and `TurboSerializableId<T, M>` from turbo_serializable
* Support for typed metadata via the `M` type parameter

### Improvements
* Added null-check guards for `toJson()` calls in create/update APIs with proper `TurboResponse.fail` error handling
* Added type aliases for backwards compatibility:
  * `TurboWriteable<M> = TurboSerializable<M>`
  * `TurboWriteableId<T, M> = TurboSerializableId<T, M>`
* Converted `turbo_writeable.dart` and `turbo_writeable_id.dart` to re-export modules

### Tests
* Added tests for null `toJson()` error handling in `createDoc` and `updateDoc`

## 0.8.3 (2026-01-08)

### Improvements
* Updated internal package dependencies to latest versions:
  * `loglytics`: ^0.16.1 -> ^0.17.0
  * `turbo_response`: ^0.2.6 -> ^1.0.1
  * `informers`: ^0.0.3+2 -> ^0.0.5

## 0.8.2 (2026-01)

### Improvements
* Updated GitHub repository URLs to appboypov organization

## 0.8.1 (2025-09)

### Improvements
* Updated dependencies to latest versions: Cloud Firestore to ^6.0.2, Firebase Auth to ^6.1.0, loglytics to ^0.16.1, and fake_cloud_firestore to ^4.0.0
* Enhanced compatibility with latest Firebase SDK features and improvements

## 0.8.0 (2025-09)

### Breaking
* Changed sync notification methods to be asynchronous: `beforeSyncNotifyUpdate` and `afterSyncNotifyUpdate` methods in sync services now return `Future<void>` instead of `void`. Affects:
  * `BeAfSyncTurboDocumentService`
  * `BeSyncTurboDocumentService`
  * `BeAfSyncTurboCollectionService`
  * `BeSyncTurboCollectionService`

### Improvements
* Enhanced sync service flexibility: sync notification methods can now perform asynchronous operations during data synchronization
* Better async/await support: services can now properly handle asynchronous operations during document and collection updates

## 0.7.3 (2025-05)

### Improvements
* Clean release with all dependencies updated and proper git state

## 0.7.2 (2025-05)

### Improvements
* Comprehensive dependency update to latest compatible versions
* Updated loglytics dependency to version 0.16.0
* Updated repository URLs to use the correct GitHub username (its-brianwithai)
* Updated flutter_lints to version 6.0.0
* Updated all Firebase dependencies to latest versions
* Verified compatibility with Flutter 3.32.0 and Dart 3.8.0

## 0.7.1 (2025-04)

### Improvements
* Exposed `docsPerIdInformer` as @protected in `TurboFirestoreApi` for better access control when overriding methods
* Updated dependencies to latest versions

## 0.7.0 (2025-03)

### Features
* Enhanced error handling using `TurboFirestoreException.fromFirestoreException` for more structured error responses across all API methods

### Improvements
* Refined documentation for error handling features
* Improved code consistency across API implementations
* Added detailed examples for exception handling

## 0.6.1 (2025-01)

### Improvements
* Updated sync services to use `upsertLocalDoc` instead of `updateLocalDoc` for better consistency
* Enhanced error handling across multiple API methods using `TurboFirestoreException.fromFirestoreException` for more structured error responses

## 0.6.0 (2025-01)

### Features
* Added `upsertLocalDocs` method for consistent batch local operations

### Improvements
* Improved upsert operations to always use `createDoc` with `merge: true`
* Removed incorrect exists checks in upsert operations

### Bug Fixes
* Fixed incorrect document creation skipping in upsert operations

## 0.5.0 (2025-01)

### Breaking
* Removed `templateBlockNotify`

## 0.4.2 (2025-01)

### Improvements
* Add id getter

## 0.4.1 (2025-01)

### Improvements
* Made `TurboAuthVars.userId` non-nullable for better type safety (defaults to `kValuesNoAuthId`)
* Added `UpdateDocDef` type definition export

## 0.4.0 (2025-01)

### Breaking
* Renamed `createDoc` and `updateDoc` named parameter names to doc

### Improvements
* Update readme

## 0.3.0 (2025-01)

### Breaking
* Renamed `vars()` to `turboVars()` for better clarity and consistency
* Renamed batch operation methods for better clarity:
  * `createDocs()` -> `createDocInBatch()`
  * `deleteDocs()` -> `deleteDocInBatch()`
  * `updateDocs()` -> `updateDocInBatch()`
* Updated method signatures to use new type definitions (`CreateDocDef<T>`, `UpdateDocDef<T>`)

### Features
* Added sync service implementations:
  * `AfSyncTurboDocumentService` - After sync notifications
  * `BeAfSyncTurboDocumentService` - Before and after sync notifications
  * `BeSyncTurboDocumentService` - Before sync notifications
* Added type definitions for document operations:
  * `CreateDocDef<T>` - Type definition for document creation functions
  * `UpdateDocDef<T>` - Type definition for document update functions

### Improvements
* Improved temporary block notify in sync services for better state management

## 0.2.0

### Breaking
* Updated dependencies to latest versions

## 0.1.3

### Features
* Added `TurboApiVars` and `TurboAuthVars` classes for standardized document variables

## 0.1.2

### Improvements
* Updated turbo_response to version 0.2.6
* Replaced tryThrowFail() with throwWhenFail() to match new TurboResponse API

## 0.1.1

### Bug Fixes
* Remove default stream implementation in `TurboCollectionService` to enforce inheritance

## 0.1.0+1

### Bug Fixes
* Made `TurboResponse<T>? validate<T>()` null by default to avoid forced inheritance

## 0.1.0

Initial release of turbo_firestore_api:
* TurboFirestoreApi for clean Firestore operations
* CRUD operations with error handling
* Search functionality
* Stream support
* Auth sync service
* Collection and document services
* Exception handling
* Basic documentation and examples
