// ignore_for_file: no_leading_underscores_for_local_identifiers

part of brick_bootstrap5_plus_widgets;

enum Block {
  /// 行内块 如果没设置宽高 占自身所能显示的宽高  不能设置对齐
  inlineBlock,

  /// 块级 默认占一行
  block
}

class Div extends StatefulWidget {
  ///
  ///
  ///
  /// ```dart
  ///   Div(
  ///     classNames: 'align-self-bottomCenter align-self-bottomLeft align-self-bottomRight align-self-center align-self-centerLeft align-self-centerRight align-self-topCenter align-self-topLeft align-self-topRight ' // 横向对齐
  ///     classNames: 'align-bottomCenter align-bottomLeft align-bottomRight align-center align-centerLeft align-centerRight align-topCenter align-topLeft align-topRight ' // 横向对齐
  ///     classNames: 'w-150-px h-160-px maxHeight-150-px minHeight-150-px minWidth-150-px maxWidth-150-px' //
  ///     classNames: 'mt-10 mb-10 bg-black ' // 只支持 bg-  背景色
  ///     classNames: 'shadowColor-black12 shadowBlurRadius-2 shadow-offset-1,1' // 阴影
  ///     classNames: 'borderRadius-4  borderColor-red border-1' // 边框
  ///     classNames: 'hoverColor-green hoverBorderColor-blue hoverBorder-2 ' //
  ///     classNames: 'display-none display-block' // 隐藏，显示
  ///     classNames: 'opacity-0.5' // 透明度
  ///     children:[],
  ///   )
  /// ```
  @Deprecated('不建议使用')
  Div({
    super.key,
    required this.classNames,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.alignment,
    this.decoration,
    required this.child,
    this.children = const [],
    this.block = Block.block,
  });

  Decoration? decoration;

  final Block block;
  final String classNames;
  final double? width;
  final double? height;
  final Widget child;
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;

  static BContainer container() {
    return BContainer();
  }

  static BContainer containerFluid() {
    return BContainer.fluid();
  }

  @override
  State<Div> createState() => _DivState();
}

class _DivState extends State<Div> {
  bool _isHover = false;
  Widget getWidget(StyleAbbrSet s, BoxConstraints _constraints) {
    final hasHover = RegExp('hover').hasMatch(widget.classNames);
    final hasWidth = RegExp('w-').hasMatch(widget.classNames);
    final hasHeight = RegExp('h-').hasMatch(widget.classNames);
    Widget _child = SizedBox.shrink();
    final BoxConstraints constraints = BoxConstraints(
      maxHeight: (s.maxHeight != null && s.maxHeight! > 0) ? s.maxHeight! : _constraints.maxHeight,
      maxWidth: (s.maxWidth != null && s.maxWidth! > 0) ? s.maxWidth! : _constraints.maxWidth,
      minHeight: s.minHeight ?? _constraints.minHeight,
      minWidth: s.minWidth ?? _constraints.minWidth,
    );

    if (widget.block == Block.inlineBlock) {
      _child = m.Padding(
        padding: widget.margin ?? s.cm ?? EdgeInsets.all(0),
        child: SizedBox(
          width: widget.width ?? s.w,
          height: widget.height ?? s.h,
          child: hasHover
              ? DecoratedBox(
                  decoration: widget.decoration ?? getBoxDecorationByStyle(s, _isHover) ?? BoxDecoration(),
                  child: m.Padding(
                    padding: widget.padding ?? s.cp ?? EdgeInsets.all(0),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return hasWidth && hasHeight
                            ? Container(
                                constraints: BoxConstraints(maxWidth: constraints.maxWidth, maxHeight: constraints.maxHeight),
                                alignment: widget.alignment ?? s.a ?? s.sa ?? (s.va != null ? getAlignment(s) : Alignment.centerLeft),
                                child: widget.child,
                              )
                            : widget.child;
                      },
                    ),
                  ),
                )
              : DecoratedBox(
                  decoration: widget.decoration ?? getBoxDecorationByStyle(s, _isHover) ?? BoxDecoration(),
                  child: m.Padding(
                    padding: widget.padding ?? s.cp!,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return hasWidth && hasHeight
                            ? Container(
                                constraints: BoxConstraints(
                                  maxWidth: 10,
                                  maxHeight: 10,
                                ),
                                alignment: widget.alignment ?? s.a ?? s.sa ?? (s.va != null ? getAlignment(s) : Alignment.centerLeft),
                                child: widget.child,
                              )
                            : widget.child;
                      },
                    ),
                  ),
                ),
        ),
      );
    } else {
      _child = hasHover
          ? Container(
              width: widget.width ?? s.w ?? constraints.maxWidth,
              height: widget.height ?? s.h,
              decoration: widget.decoration ?? getBoxDecorationByStyle(s, _isHover),
              margin: widget.margin ?? s.cm,
              padding: widget.padding ?? s.cp,
              alignment: widget.alignment ?? s.a ?? s.sa ?? (s.va != null ? getAlignment(s) : Alignment.centerLeft),
              constraints: constraints,
              child: widget.child,
            )
          : Container(
              width: widget.width ?? s.w ?? constraints.maxWidth,
              height: widget.height ?? s.h,
              decoration: widget.decoration ?? getBoxDecorationByStyle(s, _isHover),
              margin: widget.margin ?? s.cm,
              padding: widget.padding ?? s.cp,
              alignment: widget.alignment ?? s.a ?? s.sa ?? (s.va != null ? getAlignment(s) : Alignment.centerLeft),
              constraints: constraints,
              child: widget.child,
            );
    }
    return hasHover
        ? MouseRegion(
            // hoverColor: Colors.transparent,
            // splashColor: Colors.transparent,
            onHover: (value) {
              setState(() {
                _isHover = true;
              });
            },
            onExit: (value) {
              setState(() {
                _isHover = false;
              });
            },
            // onTap: () {},
            child: _child,
          )
        : _child;
  }

  @override
  Widget build(BuildContext context) {
    final style = convertClassNamesToStyle(widget.classNames);
    return MediaQueryBuilder(builder: (context, constraints, screenData) {
      final s = getStyle(screenData, constraints, style);
      final isVisible = s.isVisible ?? false;
      final opacity = s.opacity ?? 1;

      return Offstage(
        offstage: !isVisible,
        child: Opacity(
          opacity: opacity,
          child: getWidget(s, constraints),
        ),
      );
    });
  }
}
