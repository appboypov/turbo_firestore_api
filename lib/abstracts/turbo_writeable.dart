// Re-exports TurboSerializable as TurboWriteable for backwards compatibility.
//
// Migration Notice: This file now re-exports from turbo_serializable.
// For new code, import package:turbo_serializable/turbo_serializable.dart directly.

import 'package:turbo_serializable/turbo_serializable.dart';

export 'package:turbo_serializable/turbo_serializable.dart' show TurboSerializable;

/// Type alias for backwards compatibility with existing code.
typedef TurboWriteable<M> = TurboSerializable<M>;
