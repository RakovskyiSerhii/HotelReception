abstract class BaseConverter<IN, OUT> {
  OUT convert(IN inModel);
}

mixin ListConverter<IN, OUT> on BaseConverter<IN, OUT> {
  List<OUT> convertList(List<IN> list) => list.map(convert).toList();
}

abstract class Converter<IN, OUT> extends BaseConverter<IN, OUT>
    with ListConverter {}
