// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// PStateGenerator
// **************************************************************************

@immutable
class Auth2 extends PStateModel<Auth2> {
  final bool loggedIn;

  _$Auth2CopyWith<Auth2> get copyWith =>
      __$Auth2CopyWithImpl<Auth2>(this, IdentityFn);

  Auth2({this.loggedIn = false});

  @override
  Auth2 copyWithMap(Map<String, dynamic> map) => Auth2(
      loggedIn: map.containsKey("loggedIn")
          ? map["loggedIn"] as bool
          : this.loggedIn);

  Map<String, dynamic> toMap() => <String, dynamic>{"loggedIn": this.loggedIn};

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Auth2 && o.loggedIn == loggedIn;
  }

  @override
  int get hashCode => loggedIn.hashCode;

  @override
  String toString() => "Auth2(loggedIn: ${this.loggedIn})";
}

abstract class $Auth2CopyWith<O> {
  factory $Auth2CopyWith(Auth2 value, O Function(Auth2) then) =
      _$Auth2CopyWithImpl<O>;
  O call({bool loggedIn});
}

class _$Auth2CopyWithImpl<O> implements $Auth2CopyWith<O> {
  final Auth2 _value;
  final O Function(Auth2) _then;
  _$Auth2CopyWithImpl(this._value, this._then);

  @override
  O call({Object? loggedIn = dimmutable}) {
    return _then(_value.copyWith(
        loggedIn: loggedIn == dimmutable ? _value.loggedIn : loggedIn as bool));
  }
}

abstract class _$Auth2CopyWith<O> implements $Auth2CopyWith<O> {
  factory _$Auth2CopyWith(Auth2 value, O Function(Auth2) then) =
      __$Auth2CopyWithImpl<O>;
  O call({bool loggedIn});
}

class __$Auth2CopyWithImpl<O> extends _$Auth2CopyWithImpl<O>
    implements _$Auth2CopyWith<O> {
  __$Auth2CopyWithImpl(Auth2 _value, O Function(Auth2) _then)
      : super(_value, (v) => _then(v));

  @override
  Auth2 get _value => super._value;

  @override
  O call({Object? loggedIn = dimmutable}) {
    return _then(Auth2(
        loggedIn: loggedIn == dimmutable ? _value.loggedIn : loggedIn as bool));
  }
}

const _Auth2_FullPath = "/store/pstates/auth/Auth2";

class Auth2LogInResult implements ToMap<Auth2LogInResult> {
  final bool? loggedIn;

  const Auth2LogInResult({this.loggedIn});
  @override
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (loggedIn != null) {
      map["loggedIn"] = loggedIn;
    }

    return map;
  }

  @override
  Auth2LogInResult copyWithMap(Map<String, dynamic> map) =>
      throw UnimplementedError();
}

class Auth2LogOutResult implements ToMap<Auth2LogOutResult> {
  final bool? loggedIn;

  const Auth2LogOutResult({this.loggedIn});
  @override
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (loggedIn != null) {
      map["loggedIn"] = loggedIn;
    }

    return map;
  }

  @override
  Auth2LogOutResult copyWithMap(Map<String, dynamic> map) =>
      throw UnimplementedError();
}

abstract class Auth2Actions {
  static Action<Auth2LogInResult> logIn({bool silent = false}) {
    return Action<Auth2LogInResult>(
        name: "logIn", silent: silent, type: _Auth2_FullPath, isAsync: false);
  }

  static Action<Auth2LogInResult> logInMock(Auth2LogInResult mock) {
    return Action<Auth2LogInResult>(
        name: "logIn", type: _Auth2_FullPath, mock: mock);
  }

  static Action<Auth2LogOutResult> logOut({bool silent = false}) {
    return Action<Auth2LogOutResult>(
        name: "logOut", silent: silent, type: _Auth2_FullPath, isAsync: false);
  }

  static Action<Auth2LogOutResult> logOutMock(Auth2LogOutResult mock) {
    return Action<Auth2LogOutResult>(
        name: "logOut", type: _Auth2_FullPath, mock: mock);
  }
}

dynamic Auth2_SyncReducer(dynamic _DStoreState, Action _DstoreAction) {
  _DStoreState = _DStoreState as Auth2;
  final name = _DstoreAction.name;
  switch (name) {
    case "logIn":
      {
        final _DstoreActionPayload = _DstoreAction.payload;
        var _DStore_loggedIn = _DStoreState.loggedIn;
        _DStore_loggedIn = true;
        return _DStoreState.copyWith(loggedIn: _DStore_loggedIn);
      }

    case "logOut":
      {
        final _DstoreActionPayload = _DstoreAction.payload;
        var _DStore_loggedIn = _DStoreState.loggedIn;
        _DStore_loggedIn = false;
        return _DStoreState.copyWith(loggedIn: _DStore_loggedIn);
      }

    default:
      {
        return _DStoreState;
      }
  }
}

Auth2 Auth2_DS() => Auth2(loggedIn: false);

final Auth2Meta = PStateMeta<Auth2>(
    type: _Auth2_FullPath, reducer: Auth2_SyncReducer, ds: Auth2_DS);
