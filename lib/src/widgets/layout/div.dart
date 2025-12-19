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
  /// **支持的 classNames**:
  /// - 栅格: `col-{1-24}`, `offset-{0-*}`, `order-{0-*}`
  /// - 间距: `p-{1-5}`, `m-{1-5}`, `g-{1-5}`, `p{t,b,s,e,x,y}-*`, `m{t,b,s,e,x,y}-*`
  /// - 对齐: `align-items-*`, `align-self-*`, `justify-content-*`, `align-*`
  /// - 尺寸: `w-{0-*}`, `h-{0-*}`, `maxWidth-{0-*}`, `minWidth-{0-*}`, `maxHeight-{0-*}`, `minHeight-{0-*}`
  /// - 颜色: `bg-*`, `color-*`, `borderColor-*`, `hoverColor-*`, `activeColor-*`
  /// - 边框: `border-*`, `borderRadius-*`, `borderTop-*`, `borderBottom-*`, `borderLeft-*`, `borderRight-*`
  /// - 阴影: `shadowColor-*`, `shadowBlurRadius-*`, `shadow-offset-*`
  /// - 显示: `d-none`, `d-block`
  /// - 透明度: `opacity-*`
  /// - 圆角: `rounded-{sm,md,lg,xl,full,circle,number}`
  /// - 文本: `text-truncate`, `text-break`, `line-height-*`, `letter-spacing-*`
  /// - 响应式: `hidden`, `hidden-{xs,sm,md,lg,xl,xxl}`, `visible`, `visible-{xs,sm,md,lg,xl,xxl}`, `block`, `block-{xs,sm,md,lg,xl,xxl}`
  ///
  /// **注意**: 支持几乎所有 className，但不推荐使用 Div，建议使用 H5Row 或 BCol/BRow
  ///
  /// ```dart
  ///   Div(
  ///     classNames: 'w-150-px h-160-px maxHeight-150-px minHeight-150-px minWidth-150-px maxWidth-150-px',
  ///     classNames: 'mt-10 mb-10 bg-black color-white',
  ///     classNames: 'shadowColor-black shadowBlurRadius-2 shadow-offset-1,1',
  ///     classNames: 'borderRadius-4 borderColor-red border-1',
  ///     classNames: 'hoverColor-green hoverBorderColor-blue hoverBorder-2',
  ///     classNames: 'display-none display-block',
  ///     classNames: 'opacity-0.5',
  ///     classNames: 'rounded-lg flex-grow-12 gap-3',
  ///     child: Text('content'),
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
  
  // 预编译正则表达式，避免重复编译
  static final RegExp _hoverRegex = RegExp('hover');
  static final RegExp _widthRegex = RegExp('w-');
  static final RegExp _heightRegex = RegExp('h-');
  
  Widget getWidget(StyleAbbrSet s, BoxConstraints _constraints) {
    final hasHover = _hoverRegex.hasMatch(widget.classNames);
    final hasWidth = _widthRegex.hasMatch(widget.classNames);
    final hasHeight = _heightRegex.hasMatch(widget.classNames);
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
