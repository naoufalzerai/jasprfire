part of 'jaspr_clean_syntax.dart';

///
/// - [action]: The URL that processes the form submission. This value can be overridden by a formaction attribute on a &lt;button&gt;, &lt;input type="submit"&gt;, or &lt;input type="image"&gt; element. This attribute is ignored when method="dialog" is set.
/// - [method]: The HTTP method to submit the form with.
///
///   This value is overridden by formmethod attributes on &lt;button&gt;, &lt;input type="submit"&gt;, or &lt;input type="image"&gt; elements.
/// - [encType]: If the value of the method attribute is post, enctype is the MIME type of the form submission.
/// - [autoComplete]: Indicates whether input elements can by default have their values automatically completed by the browser. autocomplete attributes on form elements override it on &lt;form&gt;.
/// - [name]: The name of the form. The value must not be the empty string, and must be unique among the form elements in the forms collection that it is in, if any.
/// - [noValidate]: Indicates that the form shouldn't be validated when submitted. If this attribute is not set (and therefore the form is validated), it can be overridden by a formnovalidate attribute on a &lt;button&gt;, &lt;input type="submit"&gt;, or &lt;input type="image"&gt; element belonging to the form.
/// - [target]: Indicates where to display the response after submitting the form. In HTML 4, this is the name/keyword for a frame. In HTML5, it is a name/keyword for a browsing context (for example, tab, window, or iframe).
/// A class representing an HTML `<form>` element.
class Form extends DomComponent {
  final List<Component> children;
  final String? action;
  final FormMethod? method;
  final FormEncType? encType;
  final AutoComplete? autoComplete;
  final String? name;
  final bool? noValidate;
  final Target? target;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Form(
    this.children, {
    this.action,
    this.method,
    this.encType,
    this.autoComplete,
    this.name,
    this.noValidate,
    this.target,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'form',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (action != null) 'action': action,
            if (method != null) 'method': method.value,
            if (encType != null) 'enctype': encType.value,
            if (autoComplete != null) 'autocomplete': autoComplete.value,
            if (name != null) 'name': name,
            if (noValidate == true) 'novalidate': '',
            if (target != null) 'target': target.value,
          },
          events: events,
        );
}

/// A class representing an HTML `<label>` element.
class Label extends DomComponent {
  final List<Component> children;
  final String? htmlFor;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Label(
    this.children, {
    this.htmlFor,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'label',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (htmlFor != null) 'for': htmlFor,
          },
          events: events,
        );
}

/// A class representing an HTML `<datalist>` element.
class DataList extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  DataList(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'datalist',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// A class representing an HTML `<legend>` element.
class Legend extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Legend(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'legend',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The &lt;meter&gt; HTML element represents either a scalar value within a known range or a fractional value.
///
/// - [value]: The current numeric value. This must be between the minimum and maximum values (min attribute and max attribute) if they are specified. If unspecified or malformed, the value is 0. If specified, but not within the range given by the min attribute and max attribute, the value is equal to the nearest end of the range.
/// - [min]: The lower numeric bound of the measured range. This must be less than the maximum value (max attribute), if specified. If unspecified, the minimum value is 0.
/// - [max]: The upper numeric bound of the measured range. This must be greater than the minimum value (min attribute), if specified. If unspecified, the maximum value is 1.
/// - [low]: The upper numeric bound of the low end of the measured range. This must be greater than the minimum value (min attribute), and it also must be less than the high value and maximum value (high attribute and max attribute, respectively), if any are specified. If unspecified, or if less than the minimum value, the low value is equal to the minimum value.
/// - [high]: The lower numeric bound of the high end of the measured range. This must be less than the maximum value (max attribute), and it also must be greater than the low value and minimum value (low attribute and min attribute, respectively), if any are specified. If unspecified, or if greater than the maximum value, the high value is equal to the maximum value.
/// - [optimum]: Indicates the optimal numeric value. It must be within the range (as defined by the min attribute and max attribute). When used with the low attribute and high attribute, it gives an indication where along the range is considered preferable. For example, if it is between the min attribute and the low attribute, then the lower range is considered preferred. The browser may color the meter's bar differently depending on whether the value is less than or equal to the optimum value.

/// A class representing an HTML `<meter>` element.
class Meter extends DomComponent {
  final List<Component> children;
  final double? value;
  final double? min;
  final double? max;
  final double? low;
  final double? high;
  final double? optimum;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Meter(
    this.children, {
    this.value,
    this.min,
    this.max,
    this.low,
    this.high,
    this.optimum,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'meter',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (value != null) 'value': '$value',
            if (min != null) 'min': '$min',
            if (max != null) 'max': '$max',
            if (low != null) 'low': '$low',
            if (high != null) 'high': '$high',
            if (optimum != null) 'optimum': '$optimum',
          },
          events: events,
        );
}

/// A class representing an HTML `<progress>` element.
class Progress extends DomComponent {
  final List<Component> children;
  final double? value;
  final double? max;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Progress(
    this.children, {
    this.value,
    this.max,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'progress',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (value != null) 'value': '$value',
            if (max != null) 'max': '$max',
          },
          events: events,
        );
}

/// A class representing an HTML `<optgroup>` element.
class OptGroup extends DomComponent {
  final List<Component> children;
  final String label;
  final bool? disabled;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  OptGroup(
    this.children, {
    required this.label,
    this.disabled,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'optgroup',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            'label': label,
            if (disabled == true) 'disabled': '',
          },
          events: events,
        );
}

/// A class representing an HTML `<option>` element.
class Option extends DomComponent {
  final List<Component> children;
  final String? label;
  final String? value;
  final bool? selected;
  final bool? disabled;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Option(
    this.children, {
    this.label,
    this.value,
    this.selected,
    this.disabled,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'option',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (label != null) 'label': label,
            if (value != null) 'value': value,
            if (selected == true) 'selected': '',
            if (disabled == true) 'disabled': '',
          },
          events: events,
        );
}

/// A class representing an HTML `<fieldset>` element.
class FieldSet extends DomComponent {
  final List<Component> children;
  final String? name;
  final bool? disabled;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  FieldSet(
    this.children, {
    this.name,
    this.disabled,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'fieldset',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (name != null) 'name': name,
            if (disabled == true) 'disabled': '',
          },
          events: events,
        );
}
