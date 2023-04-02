// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_trade_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateTradeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function(CardModel card) selectCard,
    required TResult Function() clearSelectedCard,
    required TResult Function() clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function(CardModel card)? selectCard,
    TResult? Function()? clearSelectedCard,
    TResult? Function()? clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function(CardModel card)? selectCard,
    TResult Function()? clearSelectedCard,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectCard value) selectCard,
    required TResult Function(_ClearSelectedCard value) clearSelectedCard,
    required TResult Function(_ClearSearch value) clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectCard value)? selectCard,
    TResult? Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult? Function(_ClearSearch value)? clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_SelectCard value)? selectCard,
    TResult Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTradeEventCopyWith<$Res> {
  factory $CreateTradeEventCopyWith(
          CreateTradeEvent value, $Res Function(CreateTradeEvent) then) =
      _$CreateTradeEventCopyWithImpl<$Res, CreateTradeEvent>;
}

/// @nodoc
class _$CreateTradeEventCopyWithImpl<$Res, $Val extends CreateTradeEvent>
    implements $CreateTradeEventCopyWith<$Res> {
  _$CreateTradeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CreateTradeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CreateTradeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function(CardModel card) selectCard,
    required TResult Function() clearSelectedCard,
    required TResult Function() clearSearch,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function(CardModel card)? selectCard,
    TResult? Function()? clearSelectedCard,
    TResult? Function()? clearSearch,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function(CardModel card)? selectCard,
    TResult Function()? clearSelectedCard,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectCard value) selectCard,
    required TResult Function(_ClearSelectedCard value) clearSelectedCard,
    required TResult Function(_ClearSearch value) clearSearch,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectCard value)? selectCard,
    TResult? Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult? Function(_ClearSearch value)? clearSearch,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_SelectCard value)? selectCard,
    TResult Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateTradeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res>
    extends _$CreateTradeEventCopyWithImpl<$Res, _$_Search>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_Search(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'CreateTradeEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function(CardModel card) selectCard,
    required TResult Function() clearSelectedCard,
    required TResult Function() clearSearch,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function(CardModel card)? selectCard,
    TResult? Function()? clearSelectedCard,
    TResult? Function()? clearSearch,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function(CardModel card)? selectCard,
    TResult Function()? clearSelectedCard,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectCard value) selectCard,
    required TResult Function(_ClearSelectedCard value) clearSelectedCard,
    required TResult Function(_ClearSearch value) clearSearch,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectCard value)? selectCard,
    TResult? Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult? Function(_ClearSearch value)? clearSearch,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_SelectCard value)? selectCard,
    TResult Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements CreateTradeEvent {
  const factory _Search({required final String query}) = _$_Search;

  String get query;
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCardCopyWith<$Res> {
  factory _$$_SelectCardCopyWith(
          _$_SelectCard value, $Res Function(_$_SelectCard) then) =
      __$$_SelectCardCopyWithImpl<$Res>;
  @useResult
  $Res call({CardModel card});
}

/// @nodoc
class __$$_SelectCardCopyWithImpl<$Res>
    extends _$CreateTradeEventCopyWithImpl<$Res, _$_SelectCard>
    implements _$$_SelectCardCopyWith<$Res> {
  __$$_SelectCardCopyWithImpl(
      _$_SelectCard _value, $Res Function(_$_SelectCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
  }) {
    return _then(_$_SelectCard(
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardModel,
    ));
  }
}

/// @nodoc

class _$_SelectCard implements _SelectCard {
  const _$_SelectCard({required this.card});

  @override
  final CardModel card;

  @override
  String toString() {
    return 'CreateTradeEvent.selectCard(card: $card)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCard &&
            (identical(other.card, card) || other.card == card));
  }

  @override
  int get hashCode => Object.hash(runtimeType, card);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCardCopyWith<_$_SelectCard> get copyWith =>
      __$$_SelectCardCopyWithImpl<_$_SelectCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function(CardModel card) selectCard,
    required TResult Function() clearSelectedCard,
    required TResult Function() clearSearch,
  }) {
    return selectCard(card);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function(CardModel card)? selectCard,
    TResult? Function()? clearSelectedCard,
    TResult? Function()? clearSearch,
  }) {
    return selectCard?.call(card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function(CardModel card)? selectCard,
    TResult Function()? clearSelectedCard,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (selectCard != null) {
      return selectCard(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectCard value) selectCard,
    required TResult Function(_ClearSelectedCard value) clearSelectedCard,
    required TResult Function(_ClearSearch value) clearSearch,
  }) {
    return selectCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectCard value)? selectCard,
    TResult? Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult? Function(_ClearSearch value)? clearSearch,
  }) {
    return selectCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_SelectCard value)? selectCard,
    TResult Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (selectCard != null) {
      return selectCard(this);
    }
    return orElse();
  }
}

abstract class _SelectCard implements CreateTradeEvent {
  const factory _SelectCard({required final CardModel card}) = _$_SelectCard;

  CardModel get card;
  @JsonKey(ignore: true)
  _$$_SelectCardCopyWith<_$_SelectCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearSelectedCardCopyWith<$Res> {
  factory _$$_ClearSelectedCardCopyWith(_$_ClearSelectedCard value,
          $Res Function(_$_ClearSelectedCard) then) =
      __$$_ClearSelectedCardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearSelectedCardCopyWithImpl<$Res>
    extends _$CreateTradeEventCopyWithImpl<$Res, _$_ClearSelectedCard>
    implements _$$_ClearSelectedCardCopyWith<$Res> {
  __$$_ClearSelectedCardCopyWithImpl(
      _$_ClearSelectedCard _value, $Res Function(_$_ClearSelectedCard) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearSelectedCard implements _ClearSelectedCard {
  const _$_ClearSelectedCard();

  @override
  String toString() {
    return 'CreateTradeEvent.clearSelectedCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearSelectedCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function(CardModel card) selectCard,
    required TResult Function() clearSelectedCard,
    required TResult Function() clearSearch,
  }) {
    return clearSelectedCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function(CardModel card)? selectCard,
    TResult? Function()? clearSelectedCard,
    TResult? Function()? clearSearch,
  }) {
    return clearSelectedCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function(CardModel card)? selectCard,
    TResult Function()? clearSelectedCard,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSelectedCard != null) {
      return clearSelectedCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectCard value) selectCard,
    required TResult Function(_ClearSelectedCard value) clearSelectedCard,
    required TResult Function(_ClearSearch value) clearSearch,
  }) {
    return clearSelectedCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectCard value)? selectCard,
    TResult? Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult? Function(_ClearSearch value)? clearSearch,
  }) {
    return clearSelectedCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_SelectCard value)? selectCard,
    TResult Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSelectedCard != null) {
      return clearSelectedCard(this);
    }
    return orElse();
  }
}

abstract class _ClearSelectedCard implements CreateTradeEvent {
  const factory _ClearSelectedCard() = _$_ClearSelectedCard;
}

/// @nodoc
abstract class _$$_ClearSearchCopyWith<$Res> {
  factory _$$_ClearSearchCopyWith(
          _$_ClearSearch value, $Res Function(_$_ClearSearch) then) =
      __$$_ClearSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearSearchCopyWithImpl<$Res>
    extends _$CreateTradeEventCopyWithImpl<$Res, _$_ClearSearch>
    implements _$$_ClearSearchCopyWith<$Res> {
  __$$_ClearSearchCopyWithImpl(
      _$_ClearSearch _value, $Res Function(_$_ClearSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearSearch implements _ClearSearch {
  const _$_ClearSearch();

  @override
  String toString() {
    return 'CreateTradeEvent.clearSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function(CardModel card) selectCard,
    required TResult Function() clearSelectedCard,
    required TResult Function() clearSearch,
  }) {
    return clearSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function(CardModel card)? selectCard,
    TResult? Function()? clearSelectedCard,
    TResult? Function()? clearSearch,
  }) {
    return clearSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function(CardModel card)? selectCard,
    TResult Function()? clearSelectedCard,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectCard value) selectCard,
    required TResult Function(_ClearSelectedCard value) clearSelectedCard,
    required TResult Function(_ClearSearch value) clearSearch,
  }) {
    return clearSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectCard value)? selectCard,
    TResult? Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult? Function(_ClearSearch value)? clearSearch,
  }) {
    return clearSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_SelectCard value)? selectCard,
    TResult Function(_ClearSelectedCard value)? clearSelectedCard,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch(this);
    }
    return orElse();
  }
}

abstract class _ClearSearch implements CreateTradeEvent {
  const factory _ClearSearch() = _$_ClearSearch;
}

/// @nodoc
mixin _$CreateTradeState {
  String get queryString => throw _privateConstructorUsedError;
  List<CardModel> get cards => throw _privateConstructorUsedError;
  CardModel get selectedCard => throw _privateConstructorUsedError;
  LoadStatus get cardLoadStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTradeStateCopyWith<CreateTradeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTradeStateCopyWith<$Res> {
  factory $CreateTradeStateCopyWith(
          CreateTradeState value, $Res Function(CreateTradeState) then) =
      _$CreateTradeStateCopyWithImpl<$Res, CreateTradeState>;
  @useResult
  $Res call(
      {String queryString,
      List<CardModel> cards,
      CardModel selectedCard,
      LoadStatus cardLoadStatus});
}

/// @nodoc
class _$CreateTradeStateCopyWithImpl<$Res, $Val extends CreateTradeState>
    implements $CreateTradeStateCopyWith<$Res> {
  _$CreateTradeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryString = null,
    Object? cards = null,
    Object? selectedCard = null,
    Object? cardLoadStatus = null,
  }) {
    return _then(_value.copyWith(
      queryString: null == queryString
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      selectedCard: null == selectedCard
          ? _value.selectedCard
          : selectedCard // ignore: cast_nullable_to_non_nullable
              as CardModel,
      cardLoadStatus: null == cardLoadStatus
          ? _value.cardLoadStatus
          : cardLoadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateTradeStateCopyWith<$Res>
    implements $CreateTradeStateCopyWith<$Res> {
  factory _$$_CreateTradeStateCopyWith(
          _$_CreateTradeState value, $Res Function(_$_CreateTradeState) then) =
      __$$_CreateTradeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String queryString,
      List<CardModel> cards,
      CardModel selectedCard,
      LoadStatus cardLoadStatus});
}

/// @nodoc
class __$$_CreateTradeStateCopyWithImpl<$Res>
    extends _$CreateTradeStateCopyWithImpl<$Res, _$_CreateTradeState>
    implements _$$_CreateTradeStateCopyWith<$Res> {
  __$$_CreateTradeStateCopyWithImpl(
      _$_CreateTradeState _value, $Res Function(_$_CreateTradeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryString = null,
    Object? cards = null,
    Object? selectedCard = null,
    Object? cardLoadStatus = null,
  }) {
    return _then(_$_CreateTradeState(
      queryString: null == queryString
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      selectedCard: null == selectedCard
          ? _value.selectedCard
          : selectedCard // ignore: cast_nullable_to_non_nullable
              as CardModel,
      cardLoadStatus: null == cardLoadStatus
          ? _value.cardLoadStatus
          : cardLoadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ));
  }
}

/// @nodoc

class _$_CreateTradeState extends _CreateTradeState {
  const _$_CreateTradeState(
      {this.queryString = '',
      final List<CardModel> cards = const [],
      this.selectedCard = const CardModel.empty(),
      this.cardLoadStatus = LoadStatus.initial})
      : _cards = cards,
        super._();

  @override
  @JsonKey()
  final String queryString;
  final List<CardModel> _cards;
  @override
  @JsonKey()
  List<CardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  @JsonKey()
  final CardModel selectedCard;
  @override
  @JsonKey()
  final LoadStatus cardLoadStatus;

  @override
  String toString() {
    return 'CreateTradeState(queryString: $queryString, cards: $cards, selectedCard: $selectedCard, cardLoadStatus: $cardLoadStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTradeState &&
            (identical(other.queryString, queryString) ||
                other.queryString == queryString) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.selectedCard, selectedCard) ||
                other.selectedCard == selectedCard) &&
            (identical(other.cardLoadStatus, cardLoadStatus) ||
                other.cardLoadStatus == cardLoadStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      queryString,
      const DeepCollectionEquality().hash(_cards),
      selectedCard,
      cardLoadStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTradeStateCopyWith<_$_CreateTradeState> get copyWith =>
      __$$_CreateTradeStateCopyWithImpl<_$_CreateTradeState>(this, _$identity);
}

abstract class _CreateTradeState extends CreateTradeState {
  const factory _CreateTradeState(
      {final String queryString,
      final List<CardModel> cards,
      final CardModel selectedCard,
      final LoadStatus cardLoadStatus}) = _$_CreateTradeState;
  const _CreateTradeState._() : super._();

  @override
  String get queryString;
  @override
  List<CardModel> get cards;
  @override
  CardModel get selectedCard;
  @override
  LoadStatus get cardLoadStatus;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTradeStateCopyWith<_$_CreateTradeState> get copyWith =>
      throw _privateConstructorUsedError;
}
