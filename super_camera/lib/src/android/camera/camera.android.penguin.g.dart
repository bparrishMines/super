part of 'camera.dart';

class $Camera extends AndroidWrapper {
  $Camera(
    String uniqueId, {
    List<MethodCall> Function(Context context) onCreateView,
  }) : super(
          uniqueId: uniqueId,
          platformClassName: 'Camera',
          onCreateView: onCreateView,
        );

  @override
  Future<void> onMethodCall(MethodCall call) async {
    switch (call.method) {
    }
    throw UnimplementedError('No implementation for ${call.method}.');
  }

  static MethodCall $getNumberOfCameras([
    String $newUniqueId,
  ]) {
    return MethodCall(
      'Camera#getNumberOfCameras',
      <String, dynamic>{
        r'$newUniqueId': $newUniqueId,
        r'$returnTypeIsWrapper': isTypeOf<void, Wrapper>(),
      },
    );
  }

  static MethodCall $open(
    int cameraId, [
    String $newUniqueId,
  ]) {
    return MethodCall(
      'Camera#open',
      <String, dynamic>{
        r'$newUniqueId': $newUniqueId,
        r'$returnTypeIsWrapper': isTypeOf<void, Wrapper>(),
        'cameraId': cameraId,
      },
    );
  }

  static MethodCall $getCameraInfo(
    int cameraId,
    CameraInfo cameraInfo, [
    String $newUniqueId,
  ]) {
    return MethodCall(
      'Camera#getCameraInfo',
      <String, dynamic>{
        r'$newUniqueId': $newUniqueId,
        r'$returnTypeIsWrapper': isTypeOf<void, Wrapper>(),
        'cameraId': cameraId,
        'cameraInfo': (cameraInfo as Wrapper)?.uniqueId,
      },
    );
  }

  MethodCall $release([
    String $newUniqueId,
  ]) {
    return MethodCall(
      'Camera#release',
      <String, dynamic>{
        r'$uniqueId': uniqueId,
        r'$newUniqueId': $newUniqueId,
        r'$returnTypeIsWrapper': isTypeOf<void, Wrapper>(),
      },
    );
  }

  MethodCall $startPreview([
    String $newUniqueId,
  ]) {
    return MethodCall(
      'Camera#startPreview',
      <String, dynamic>{
        r'$uniqueId': uniqueId,
        r'$newUniqueId': $newUniqueId,
        r'$returnTypeIsWrapper': isTypeOf<void, Wrapper>(),
      },
    );
  }

  MethodCall $stopPreview([
    String $newUniqueId,
  ]) {
    return MethodCall(
      'Camera#stopPreview',
      <String, dynamic>{
        r'$uniqueId': uniqueId,
        r'$newUniqueId': $newUniqueId,
        r'$returnTypeIsWrapper': isTypeOf<void, Wrapper>(),
      },
    );
  }

  MethodCall $setPreviewTexture(
    SurfaceTexture surfaceTexture, [
    String $newUniqueId,
  ]) {
    return MethodCall(
      'Camera#setPreviewTexture',
      <String, dynamic>{
        r'$uniqueId': uniqueId,
        r'$newUniqueId': $newUniqueId,
        r'$returnTypeIsWrapper': isTypeOf<void, Wrapper>(),
        'surfaceTexture': (surfaceTexture as Wrapper)?.uniqueId,
      },
    );
  }
}

class $CameraInfo extends AndroidWrapper {
  $CameraInfo(
    String uniqueId, {
    List<MethodCall> Function(Context context) onCreateView,
  }) : super(
          uniqueId: uniqueId,
          platformClassName: 'CameraCameraInfo',
          onCreateView: onCreateView,
        );

  @override
  Future<void> onMethodCall(MethodCall call) async {
    switch (call.method) {
    }
    throw UnimplementedError('No implementation for ${call.method}.');
  }

  MethodCall $CameraInfo$Default() {
    return MethodCall(
      'CameraCameraInfo()',
      <String, dynamic>{
        r'$uniqueId': uniqueId,
      },
    );
  }

  MethodCall $facing({
    int facing,
    String $newUniqueId,
  }) {
    return MethodCall(
      'CameraCameraInfo.facing',
      <String, dynamic>{
        r'$uniqueId': uniqueId,
        r'$newUniqueId': $newUniqueId,
        if (facing != null) 'facing': facing,
      },
    );
  }

  MethodCall $orientation({
    int orientation,
    String $newUniqueId,
  }) {
    return MethodCall(
      'CameraCameraInfo.orientation',
      <String, dynamic>{
        r'$uniqueId': uniqueId,
        r'$newUniqueId': $newUniqueId,
        if (orientation != null) 'orientation': orientation,
      },
    );
  }
}

class _GenericHelper {
  _GenericHelper._();

  static Wrapper getWrapperForType<T>(String uniqueId) {
    assert(isTypeOf<T, Wrapper>());

    if (isTypeOf<T, Camera>()) {
      return $Camera(uniqueId);
    } else if (isTypeOf<T, CameraInfo>()) {
      return $CameraInfo(uniqueId);
    } else if (isTypeOf<T, Context>()) {
      return $Context(uniqueId);
    } else if (isTypeOf<T, SurfaceTexture>()) {
      return $SurfaceTexture(uniqueId);
    }

    throw UnsupportedError('Could not instantiate class ${T.toString()}');
  }

  static FutureOr<dynamic> onAllocated(Wrapper wrapper) {
    if (wrapper is $Camera) {
      return Camera.onAllocated(wrapper as $Camera);
    } else if (wrapper is $CameraInfo) {
      return CameraInfo.onAllocated(wrapper as $CameraInfo);
    } else if (wrapper is $Context) {
      return Context.onAllocated(wrapper as $Context);
    } else if (wrapper is $SurfaceTexture) {
      return SurfaceTexture.onAllocated(wrapper as $SurfaceTexture);
    }

    throw UnsupportedError(
        'Could not instantiate class ${wrapper.runtimeType}');
  }
}