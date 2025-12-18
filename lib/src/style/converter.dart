part of brick_bootstrap5_plus_style;

class Style {
  final _Margin? margin;
  final _Padding? padding;
  final _Gutter? gutter;
  final _Offset? offset;
  final _Display? display;
  final _RowCols? rowCols;
  final _Size? size;
  final _Color? color;
  final _Color? bgColor;
  final _Width? width;
  final _Height? height;
  final _Order? order;
  final _SelfAlignment? selfAlignment;
  final _Alignment? alignment;
  final _VerticalAlignment? verticalAlignment;
  final _HorizontalAlignment? horizontalAlignment;
  final _FontWeight? fontWeight;
  final _FontSize? fontSize;
  final _Border? border;
  final _Color? borderColor;
  final _Color? hoverColor;
  final _Color? activeColor;
  final _Width? borderRadius;
  final _Width? borderRadiustopLeft;
  final _Width? borderRadiustopRight;
  final _Width? borderRadiusbottomLeft;
  final _Width? borderRadiusbottomRight;

  final _Width? borderRadiusTop;
  final _Width? borderRadiusBottom;
  final _Width? borderRadiusLeft;
  final _Width? borderRadiusRight;

  final _Width? borderTop;
  final _Width? borderBottom;
  final _Width? borderLeft;
  final _Width? borderRight;

  final _Border? hoverBorder;
  final _Color? hoverBorderColor;
  final _Fit? fit;
  final _StackFit? stackFit;
  final _Blur? blur;
  final _Scale? scale;
  final _Color? shadowColor;
  final _Width? shadowBlurRadius;
  final _ShadowOffset? shadowOffset;
  final _Width? maxWidth;
  final _Width? minWidth;
  final _Height? maxHeight;
  final _Height? minHeight;
  final _Width? opacity;
  Style({
    this.margin,
    this.padding,
    this.gutter,
    this.offset,
    this.display,
    this.rowCols,
    this.size,
    this.color,
    this.bgColor,
    this.width,
    this.height,
    this.order,
    this.selfAlignment,
    this.alignment,
    this.verticalAlignment,
    this.horizontalAlignment,
    this.fontWeight,
    this.fontSize,
    this.border,
    this.borderColor,
    this.hoverColor,
    this.activeColor,
    this.borderRadius,
    this.borderRadiustopLeft,
    this.borderRadiustopRight,
    this.borderRadiusbottomLeft,
    this.borderRadiusbottomRight,
    this.borderRadiusTop,
    this.borderRadiusBottom,
    this.borderRadiusLeft,
    this.borderRadiusRight,
    this.fit,
    this.stackFit,
    this.blur,
    this.scale,
    this.shadowColor,
    this.shadowBlurRadius,
    this.shadowOffset,
    this.maxWidth,
    this.minWidth,
    this.maxHeight,
    this.minHeight,
    this.hoverBorder,
    this.hoverBorderColor,
    this.opacity,
    this.borderTop,
    this.borderBottom,
    this.borderLeft,
    this.borderRight,
  });

  Style copyWith({
    _Margin? margin,
    _Padding? padding,
    _Gutter? gutter,
    _Offset? offset,
    _Display? display,
    _RowCols? rowCols,
    _Size? size,
    _Color? color,
    _Color? bgColor,
    _Order? order,
    _Width? width,
    _Height? height,
    _SelfAlignment? selfAlignment,
    _Alignment? alignment,
    _VerticalAlignment? verticalAlignment,
    _HorizontalAlignment? horizontalAlignment,
    _FontWeight? fontWeight,
    _FontSize? fontSize,
    _Border? border,
    _Color? hoverColor,
    _Color? activeColor,
    _Color? borderColor,
    _Width? borderRadius,
    _Width? borderRadiustopLeft,
    _Width? borderRadiustopRight,
    _Width? borderRadiusbottomLeft,
    _Width? borderRadiusbottomRight,
    _Width? borderRadiusTop,
    _Width? borderRadiusBottom,
    _Width? borderRadiusLeft,
    _Width? borderRadiusRight,
    _Fit? fit,
    _StackFit? stackFit,
    _Blur? blur,
    _Scale? scale,
    _Color? shadowColor,
    _Width? shadowBlurRadius,
    _ShadowOffset? shadowOffset,
    _Height? maxHeight,
    _Height? minHeight,
    _Width? minWidth,
    _Width? maxWidth,
    _Border? hoverBorder,
    _Color? hoverBorderColor,
    _Width? opacity,
    _Width? borderTop,
    _Width? borderBottom,
    _Width? borderLeft,
    _Width? borderRight,
  }) =>
      Style(
        margin: margin ?? this.margin,
        padding: padding ?? this.padding,
        gutter: gutter ?? this.gutter,
        offset: offset ?? this.offset,
        display: display ?? this.display,
        rowCols: rowCols ?? this.rowCols,
        size: size ?? this.size,
        color: color ?? this.color,
        width: width ?? this.width,
        height: height ?? this.height,
        bgColor: bgColor ?? this.bgColor,
        order: order ?? this.order,
        selfAlignment: selfAlignment ?? this.selfAlignment,
        alignment: alignment ?? this.alignment,
        verticalAlignment: verticalAlignment ?? this.verticalAlignment,
        horizontalAlignment: horizontalAlignment ?? this.horizontalAlignment,
        fontWeight: fontWeight ?? this.fontWeight,
        fontSize: fontSize ?? this.fontSize,
        border: border ?? this.border,
        borderColor: borderColor ?? this.borderColor,
        hoverColor: hoverColor ?? this.hoverColor,
        activeColor: activeColor ?? this.activeColor,
        borderRadius: borderRadius ?? this.borderRadius,
        borderRadiustopLeft: borderRadiustopLeft ?? this.borderRadiustopLeft,
        borderRadiustopRight: borderRadiustopRight ?? this.borderRadiustopRight,
        borderRadiusbottomLeft:
            borderRadiusbottomLeft ?? this.borderRadiusbottomLeft,
        borderRadiusbottomRight:
            borderRadiusbottomRight ?? this.borderRadiusbottomRight,
        borderRadiusTop: borderRadiusTop ?? this.borderRadiusTop,
        borderRadiusBottom: borderRadiusBottom ?? this.borderRadiusBottom,
        borderRadiusLeft: borderRadiusLeft ?? this.borderRadiusLeft,
        borderRadiusRight: borderRadiusRight ?? this.borderRadiusRight,
        fit: fit ?? this.fit,
        stackFit: stackFit ?? this.stackFit,
        blur: blur ?? this.blur,
        scale: scale ?? this.scale,
        shadowColor: shadowColor ?? this.shadowColor,
        shadowBlurRadius: shadowBlurRadius ?? this.shadowBlurRadius,
        shadowOffset: shadowOffset ?? this.shadowOffset,
        maxHeight: maxHeight ?? this.maxHeight,
        minHeight: minHeight ?? this.minHeight,
        minWidth: minWidth ?? this.minWidth,
        maxWidth: maxWidth ?? this.maxWidth,
        hoverBorder: hoverBorder ?? this.hoverBorder,
        hoverBorderColor: hoverBorderColor ?? this.hoverBorderColor,
        opacity: opacity ?? this.opacity,
        borderTop: borderTop ?? this.borderTop,
        borderBottom: borderBottom ?? this.borderBottom,
        borderLeft: borderLeft ?? this.borderLeft,
        borderRight: borderRight ?? this.borderRight,
      );
}

Style? convertClassNamesToStyle(String? classNames) {
  if (classNames == null) return null;

  final classList = classNames.trim().split(" ");
  var style = Style();

  for (final className in classList) {
    final prefix = className.trim().split("-").first;

    if (prefix.isEmpty) continue;

    // use prefix substring to include all possible classes
    // e.g m, mt, mb, etc.
    switch (prefix.substring(0, 1)) {
      case 'a':
        if (className.contains('align-items-')) {
          var verticalAlignment =
              style.verticalAlignment ?? _VerticalAlignment();
          var newVerticalAlignment =
              verticalAlignment._copyWithClass(className);
          style = style.copyWith(verticalAlignment: newVerticalAlignment);
        } else if (className.contains('align-self-')) {
          var selfAlignment = style.selfAlignment ?? _SelfAlignment();
          var newSelfAlignment = selfAlignment._copyWithClass(className);
          style = style.copyWith(selfAlignment: newSelfAlignment);
        } else if (className.contains('align-')) {
          var alignment = style.alignment ?? _Alignment();
          var newAlignment = alignment._copyWithClass(className);
          style = style.copyWith(alignment: newAlignment);
        } else if (className.contains('activeColor-')) {
          var color = style.color ?? _Color();
          var newColor = color._copyWithClass(className);
          style = style.copyWith(activeColor: newColor);
        }
        break;

      case 'b':
        if (className.contains('bg-')) {
          var color = style.bgColor ?? _Color();
          var newColor = color._copyWithClass(className);
          style = style.copyWith(bgColor: newColor);
        } else if (className.contains('borderColor-')) {
          var color = style.borderColor ?? _Color();
          var newColor = color._copyWithClass(className);
          style = style.copyWith(borderColor: newColor);
        } else if (className.contains('borderRadius-')) {
          var radius = style.borderRadius ?? _Width();
          var newRadius = radius._copyWithClass(className);
          style = style.copyWith(borderRadius: newRadius);
        } else if (className.contains('borderRadiustopLeft-')) {
          var radiustopLeft = style.borderRadiustopLeft ?? _Width();
          var newRadiustopLeft = radiustopLeft._copyWithClass(className);
          style = style.copyWith(borderRadiustopLeft: newRadiustopLeft);
        } else if (className.contains('borderRadiustopRight-')) {
          var radiustopRight = style.borderRadiustopRight ?? _Width();
          var newRadiustopRight = radiustopRight._copyWithClass(className);
          style = style.copyWith(borderRadiustopRight: newRadiustopRight);
        } else if (className.contains('borderRadiusbottomLeft-')) {
          var radiusbottomLeft = style.borderRadiusbottomLeft ?? _Width();
          var newRadiusbottomLeft = radiusbottomLeft._copyWithClass(className);
          style = style.copyWith(borderRadiusbottomLeft: newRadiusbottomLeft);
        } else if (className.contains('borderRadiusbottomRight-')) {
          var radiusbottomRight = style.borderRadiusbottomRight ?? _Width();
          var newRadiusbottomRight =
              radiusbottomRight._copyWithClass(className);
          style = style.copyWith(borderRadiusbottomRight: newRadiusbottomRight);
        } else if (className.contains('borderRadiusTop-')) {
          var radiusTop = style.borderRadiusTop ?? _Width();
          var newRadiusTop = radiusTop._copyWithClass(className);
          style = style.copyWith(borderRadiusTop: newRadiusTop);
        } else if (className.contains('borderRadiusBottom-')) {
          var radiusBottom = style.borderRadiusBottom ?? _Width();
          var newRadiusBottom = radiusBottom._copyWithClass(className);
          style = style.copyWith(borderRadiusBottom: newRadiusBottom);
        } else if (className.contains('borderRadiusLeft-')) {
          var radiusLeft = style.borderRadiusLeft ?? _Width();
          var newRadiusLeft = radiusLeft._copyWithClass(className);
          style = style.copyWith(borderRadiusLeft: newRadiusLeft);
        } else if (className.contains('borderRadiusRight-')) {
          var radiusRight = style.borderRadiusRight ?? _Width();
          var newRadiusRight = radiusRight._copyWithClass(className);
          style = style.copyWith(borderRadiusRight: newRadiusRight);
        } else if (className.contains('border-')) {
          var border = style.border ?? _Border();
          var newBorder = border._copyWithClass(className);
          style = style.copyWith(border: newBorder);
        } else if (className.contains('borderTop-')) {
          var borderTop = style.borderTop ?? _Width();
          var newborderTop = borderTop._copyWithClass(className);
          style = style.copyWith(borderTop: newborderTop);
        } else if (className.contains('borderBottom-')) {
          var borderBottom = style.borderBottom ?? _Width();
          var newborderBottom = borderBottom._copyWithClass(className);
          style = style.copyWith(borderBottom: newborderBottom);
        } else if (className.contains('borderLeft-')) {
          var borderLeft = style.borderLeft ?? _Width();
          var newborderLeft = borderLeft._copyWithClass(className);
          style = style.copyWith(borderLeft: newborderLeft);
        } else if (className.contains('borderRight-')) {
          var borderRight = style.borderRight ?? _Width();
          var newborderRight = borderRight._copyWithClass(className);
          style = style.copyWith(borderRight: newborderRight);
        } else if (className.contains('blur-')) {
          var blur = style.blur ?? _Blur();
          var newBlur = blur._copyWithClass(className);
          style = style.copyWith(blur: newBlur);
        }
        break;

      case 'c':
        if (className.contains('color-')) {
          var color = style.color ?? _Color();
          var newColor = color._copyWithClass(className);
          style = style.copyWith(color: newColor);
        } else if (className.contains('col-')) {
          var size = style.size ?? _Size();
          final newSize = size._copyWithClass(className);
          style = style.copyWith(size: newSize);
        }
        break;

      case 'd':
        var display = style.display ?? _Display();
        final newDisplay = display._copyWithClass(className);
        style = style.copyWith(display: newDisplay);
        break;

      case 'f':
        if (className.contains('font-weight-')) {
          var fontWeight = style.fontWeight ?? _FontWeight();
          var newFontWeight = fontWeight._copyWithClass(className);
          style = style.copyWith(fontWeight: newFontWeight);
        }

        if (className.contains('font-size-')) {
          var fontSize = style.fontSize ?? _FontSize();
          var newFontSize = fontSize._copyWithClass(className);
          style = style.copyWith(fontSize: newFontSize);
        }
        if (className.contains('fit-')) {
          var fit = style.fit ?? _Fit();
          var newFit = fit._copyWithClass(className);
          style = style.copyWith(fit: newFit);
        }
        break;

      case 'g':
        var gutter = style.gutter ?? _Gutter();
        final newGutter = gutter._copyWithClass(className) as _Gutter;
        style = style.copyWith(gutter: newGutter);
        break;

      case 'h':
        if (className.contains('hoverColor')) {
          var color = style.color ?? _Color();
          var newColor = color._copyWithClass(className);
          style = style.copyWith(hoverColor: newColor);
        } else if (className.contains('hoverBorderColor')) {
          var color = style.color ?? _Color();
          var newColor = color._copyWithClass(className);
          style = style.copyWith(hoverBorderColor: newColor);
        } else if (className.contains('hoverBorder-')) {
          var hoverBorder = style.hoverBorder ?? _Border();
          var newHoverBorder = hoverBorder._copyWithClass(className);
          style = style.copyWith(hoverBorder: newHoverBorder);
        } else {
          var height = style.height ?? _Height();
          final newHeight = height._copyWithClass(className);
          style = style.copyWith(height: newHeight);
        }

        break;

      case 'j':
        if (className.contains('justify-content-')) {
          var horizontalAlignment =
              style.horizontalAlignment ?? _HorizontalAlignment();
          var newHorizontalAlignment =
              horizontalAlignment._copyWithClass(className);
          style = style.copyWith(horizontalAlignment: newHorizontalAlignment);
        }
        break;

      case 'm':
        if (className.contains('maxHeight-')) {
          var height = style.maxHeight ?? _Height();
          final newHeight = height._copyWithClass(className);
          style = style.copyWith(maxHeight: newHeight);
        } else if (className.contains('minHeight-')) {
          var height = style.minHeight ?? _Height();
          final newHeight = height._copyWithClass(className);
          style = style.copyWith(minHeight: newHeight);
        } else if (className.contains('minWidth-')) {
          var height = style.minWidth ?? _Width();
          final newHeight = height._copyWithClass(className);
          style = style.copyWith(minWidth: newHeight);
        } else if (className.contains('maxWidth-')) {
          var height = style.maxWidth ?? _Width();
          final newHeight = height._copyWithClass(className);
          style = style.copyWith(maxWidth: newHeight);
        } else if (className.contains('m')) {
          var margin = style.margin ?? _Margin();
          final newMargin = margin._copyWithClass(className) as _Margin;
          style = style.copyWith(margin: newMargin);
        }
        break;

      case 'o':
        // o can be order or offset
        if (prefix == 'offset') {
          var offset = style.offset ?? _Offset();
          final newOffset = offset._copyWithClass(className);
          style = style.copyWith(offset: newOffset);
          break;
        }
        if (prefix == 'order') {
          var order = style.order ?? _Order();
          final newOrder = order._copyWithClass(className);
          style = style.copyWith(order: newOrder);
          break;
        }
        if (prefix == 'opacity') {
          var opacity = style.opacity ?? _Width();
          final newopacity = opacity._copyWithClass(className);
          style = style.copyWith(opacity: newopacity);
          break;
        }
        break;

      case 'p':
        var padding = style.padding ?? _Padding();
        final newPadding = padding._copyWithClass(className) as _Padding;
        style = style.copyWith(padding: newPadding);
        break;

      case 'r':
        if (prefix == 'row') {
          var rowCols = style.rowCols ?? _RowCols();
          final newRowCols = rowCols._copyWithClass(className);
          style = style.copyWith(rowCols: newRowCols);
        }
        break;

      case 's':
        if (className.contains('stack-fit')) {
          var fit = style.stackFit ?? _StackFit();
          var newFit = fit._copyWithClass(className);
          style = style.copyWith(stackFit: newFit);
        }
        if (className.contains('scale-')) {
          var scale = style.scale ?? _Scale();
          var newScale = scale._copyWithClass(className);
          style = style.copyWith(scale: newScale);
        }
        if (className.contains('shadowColor-')) {
          var color = style.shadowColor ?? _Color();
          var newColor = color._copyWithClass(className);
          style = style.copyWith(shadowColor: newColor);
        }
        if (className.contains('shadowBlurRadius-')) {
          var blurRadius = style.shadowBlurRadius ?? _Width();
          var newblurRadius = blurRadius._copyWithClass(className);
          style = style.copyWith(shadowBlurRadius: newblurRadius);
        }
        if (className.contains('shadow-offset-')) {
          var offset = style.shadowOffset ?? _ShadowOffset();
          var newoffset = offset._copyWithClass(className);
          style = style.copyWith(shadowOffset: newoffset);
        }
        break;

      case 'w':
        var width = style.width ?? _Width();
        final newWidth = width._copyWithClass(className);
        style = style.copyWith(width: newWidth);
        break;
    }
  }

  return style;
}
