// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationsRecord> _$notificationsRecordSerializer =
    new _$NotificationsRecordSerializer();

class _$NotificationsRecordSerializer
    implements StructuredSerializer<NotificationsRecord> {
  @override
  final Iterable<Type> types = const [
    NotificationsRecord,
    _$NotificationsRecord
  ];
  @override
  final String wireName = 'NotificationsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.taskReminderTime;
    if (value != null) {
      result
        ..add('taskReminder_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dailyBoostTime;
    if (value != null) {
      result
        ..add('dailyBoost_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  NotificationsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'taskReminder_time':
          result.taskReminderTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'dailyBoost_time':
          result.dailyBoostTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationsRecord extends NotificationsRecord {
  @override
  final DateTime? taskReminderTime;
  @override
  final DateTime? dailyBoostTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotificationsRecord(
          [void Function(NotificationsRecordBuilder)? updates]) =>
      (new NotificationsRecordBuilder()..update(updates))._build();

  _$NotificationsRecord._(
      {this.taskReminderTime, this.dailyBoostTime, this.ffRef})
      : super._();

  @override
  NotificationsRecord rebuild(
          void Function(NotificationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsRecordBuilder toBuilder() =>
      new NotificationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsRecord &&
        taskReminderTime == other.taskReminderTime &&
        dailyBoostTime == other.dailyBoostTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, taskReminderTime.hashCode), dailyBoostTime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationsRecord')
          ..add('taskReminderTime', taskReminderTime)
          ..add('dailyBoostTime', dailyBoostTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotificationsRecordBuilder
    implements Builder<NotificationsRecord, NotificationsRecordBuilder> {
  _$NotificationsRecord? _$v;

  DateTime? _taskReminderTime;
  DateTime? get taskReminderTime => _$this._taskReminderTime;
  set taskReminderTime(DateTime? taskReminderTime) =>
      _$this._taskReminderTime = taskReminderTime;

  DateTime? _dailyBoostTime;
  DateTime? get dailyBoostTime => _$this._dailyBoostTime;
  set dailyBoostTime(DateTime? dailyBoostTime) =>
      _$this._dailyBoostTime = dailyBoostTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotificationsRecordBuilder() {
    NotificationsRecord._initializeBuilder(this);
  }

  NotificationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _taskReminderTime = $v.taskReminderTime;
      _dailyBoostTime = $v.dailyBoostTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsRecord;
  }

  @override
  void update(void Function(NotificationsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationsRecord build() => _build();

  _$NotificationsRecord _build() {
    final _$result = _$v ??
        new _$NotificationsRecord._(
            taskReminderTime: taskReminderTime,
            dailyBoostTime: dailyBoostTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
