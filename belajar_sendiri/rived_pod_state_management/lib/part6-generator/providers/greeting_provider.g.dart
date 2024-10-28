// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greeting_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$greetingHash() => r'c56ecf307bcd7ea5d71ec1f7f4669958c4031adf';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [greeting].
@ProviderFor(greeting)
const greetingProvider = GreetingFamily();

/// See also [greeting].
class GreetingFamily extends Family<AsyncValue<String>> {
  /// See also [greeting].
  const GreetingFamily();

  /// See also [greeting].
  GreetingProvider call({
    required String nama,
  }) {
    return GreetingProvider(
      nama: nama,
    );
  }

  @override
  GreetingProvider getProviderOverride(
    covariant GreetingProvider provider,
  ) {
    return call(
      nama: provider.nama,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'greetingProvider';
}

/// See also [greeting].
class GreetingProvider extends AutoDisposeFutureProvider<String> {
  /// See also [greeting].
  GreetingProvider({
    required String nama,
  }) : this._internal(
          (ref) => greeting(
            ref as GreetingRef,
            nama: nama,
          ),
          from: greetingProvider,
          name: r'greetingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$greetingHash,
          dependencies: GreetingFamily._dependencies,
          allTransitiveDependencies: GreetingFamily._allTransitiveDependencies,
          nama: nama,
        );

  GreetingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.nama,
  }) : super.internal();

  final String nama;

  @override
  Override overrideWith(
    FutureOr<String> Function(GreetingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GreetingProvider._internal(
        (ref) => create(ref as GreetingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        nama: nama,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _GreetingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GreetingProvider && other.nama == nama;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nama.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GreetingRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `nama` of this provider.
  String get nama;
}

class _GreetingProviderElement extends AutoDisposeFutureProviderElement<String>
    with GreetingRef {
  _GreetingProviderElement(super.provider);

  @override
  String get nama => (origin as GreetingProvider).nama;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
