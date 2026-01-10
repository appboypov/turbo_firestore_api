// Re-exports TurboSerializableId as TurboWriteableId for backwards compatibility.
//
// Migration Notice: This file now re-exports from turbo_serializable.
// For new code, import package:turbo_serializable/turbo_serializable.dart directly.

import 'package:turbo_serializable/turbo_serializable.dart';

export 'package:turbo_serializable/turbo_serializable.dart' show TurboSerializableId;

/// Type alias for backwards compatibility with existing code.
typedef TurboWriteableId<T extends Object, M> = TurboSerializableId<T, M>;
