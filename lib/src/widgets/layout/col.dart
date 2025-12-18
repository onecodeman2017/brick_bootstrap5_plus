part of brick_bootstrap5_plus_widgets;

class BCol extends _OrderWidget {
  BCol._({
    super.key,
    this.height,
    this.style,
    this.decoration,
    this.foregroundDecoration,
    this.transform,
    this.transformAlignment,
    this.alignment,
    this.clipBehavior = Clip.none,
    this.defaultWidth,
    this.child,
    required this.children,
    this.childRef,
    this.childRefs,
    this.gutterX,
    this.gutterY,
  });

  /// 纵向对齐 [classNames] align-items-],
  ///
  ///     - [_VerticalAlignment] (s.va)
  ///
  /// 横向对齐 [classNames] justify-content- > align-self- > align-
  ///
  ///     - [_HorizontalAlignment > _SelfAlignment > _Alignment] (s.ha > s.sa > s.a)
  ///
  /// 高度 [height] (属性) > h (classNames),
  ///
  /// 样式 [decoration] [Decoration] [BoxDecoration],
  ///
  /// Wrap 样式 [foregroundDecoration] 不建义使用。
  ///
  /// [childRef] 子组件Ref [String] 在 [Renderer] 组件里使用，通过[childRef]找到相应组件，显示在[BCol]里。
  ///
  /// [child] [Widget] 子组件 (child 与 childRef只能有一个)。
  ///
  /// [children]  [List<Widget>] 子组件数组 (children 优先组大于child)。
  ///
  /// [defaultWidth]  不建义直接使用。
  ///
  /// [gutterX]  X方向子元素间隔
  ///
  /// [gutterY]  Y方向子元素间隔
  ///
  /// 不支持的classNames 'activeColor- hoverColor- hoverBorderColor- hoverBorder- fit- font-size- font-weight-'
  ///
  /// 不支持的classNames 'blur- maxHeight- minHeight- minWidth- maxWidth- scale- w-'
  ///
  /// ```dart
  ///   BCol(
  ///     classNames: 'col-24 offset-1 order-1',
  ///     classNames: 'align-items-start align-items-center align-items-end ' // 纵向对齐
  ///     classNames: 'justify-content-start justify-content-around justify-content-between justify-content-evenly justify-content-center justify-content-end' // 横向对齐 (由于最终使用的是Wrap组件，另外横向对齐 只支持左对齐，右对齐，居中对齐)
  ///     classNames: 'align-self-bottomCenter align-self-bottomLeft align-self-bottomRight align-self-center align-self-centerLeft align-self-centerRight align-self-topCenter align-self-topLeft align-self-topRight ' // 横向对齐
  ///     classNames: 'align-bottomCenter align-bottomLeft align-bottomRight align-center align-centerLeft align-centerRight align-topCenter align-topLeft align-topRight ' // 横向对齐
  ///     classNames: 'borderRadius-4  borderColor-red border-1' // 边框
  ///     classNames: 'borderRadiustopLeft-1 borderRadiustopRight-1 borderRadiusTop-1 borderRadiusBottom-1 borderRadiusLeft-1 borderRadiusRight1- borderRadiusbottomLeft-1 borderRadiusbottomRight-1' //边框圆角
  ///     classNames: 'mt-10 mb-10 h-160-px bg-black ' // 只支持 bg-  背景色
  ///     classNames: 'shadowColor-black shadowBlurRadius-4 shadow-offset-1,1' // 阴影
  ///     classNames: 'display-none display-block' // 隐藏，显示
  ///     classNames: 'opacity-0.5' // 透明度
  ///     classNames: 'g-0.5 gt-1 gx-3' // 间距 [gutterX] [gutterY] 优先
  ///     height: 160,
  ///     decoration: BoxDecoration(),
  ///     childRef: ,
  ///     child: ,
  ///     gutterX: 0,
  ///     gutterY: 0,
  ///     children:[],
  ///   )
  /// ```
  ///
  factory BCol({
    Key? key,
    String? classNames,
    double? height,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    AlignmentGeometry? alignment,
    Clip clipBehavior = Clip.none,

    /// 子组件Ref ( [child] , [childRef], [childRefs] , 只能有一个)
    Widget? child,
    List<Widget> children = const [],

    /// 子组件Ref ( [child] , [childRef], [childRefs] , 只能有一个)
    String? childRef,

    /// 子组件Ref ( [child] , [childRef], [childRefs] , 只能有一个)
    List<String>? childRefs,
    double? defaultWidth,
    double? gutterX,
    double? gutterY,
  }) {
    final style = convertClassNamesToStyle(classNames);

    return BCol._(
      key: key,
      height: height,
      style: style,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      transform: transform,
      transformAlignment: transformAlignment,
      alignment: alignment,
      clipBehavior: clipBehavior,
      defaultWidth: defaultWidth,
      childRef: childRef,
      childRefs: childRefs,
      child: child,
      children: children,
      gutterX: gutterX,
      gutterY: gutterY,
    );
  }

  @override
  // ignore: library_private_types_in_public_api
  final Style? style;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  AlignmentGeometry? alignment;
  final double? height;
  final Clip clipBehavior;
  final double? defaultWidth;
  final double? gutterX;
  final double? gutterY;

  /// 子组件Ref ( [child] , [childRef], [childRefs] , 只能有一个)
  final String? childRef;
  final List<String>? childRefs;

  Widget? child;
  List<Widget> children;

  BCol _wrapChild(Widget? Function(Widget? child) wrap,
          {double? defaultWidth}) =>
      BCol._(
        key: key,
        style: style,
        height: height,
        defaultWidth: defaultWidth,
        gutterY: gutterY,
        gutterX: gutterX,
        child: wrap(child),
        children: (children ?? [])
                .map((c) => wrap(c) ?? SizedBox.shrink())
                .toList() ??
            [],
        alignment: alignment,
      );

  @override
  Widget build(BuildContext context) {
    return MediaQueryBuilder(builder: (context, constraints, screenData) {
      var s = getStyle(screenData, constraints, style);
      final alignMent = s.sa ?? s.a;
      final isVisible = s.isVisible ?? false;
      final opacity = s.opacity ?? 1;
      final double cgx = s.cg?.left ?? s.cg?.right ?? 0.0;
      final double cgy = s.cg?.top ?? s.cg?.bottom ?? 0.0;
    
      Widget c = Container(
        // alignment: s.sa,
        alignment: alignment,
        margin: s.co != null
            ? EdgeInsets.fromLTRB(
                s.co ?? 0, s.cm!.top, s.cm!.right, s.cm!.bottom)
            : s.cm,
        padding: s.cp,
        width: s.width?.floorToDouble() ?? defaultWidth,
        height: height ?? s.h,
        decoration:
            decoration ?? getBoxDecorationByStyle(s, false) ?? BoxDecoration(),
        foregroundDecoration: foregroundDecoration,
        transform: transform,
        transformAlignment: transformAlignment,
        clipBehavior: clipBehavior,
        child: Wrap(
          spacing: gutterX ?? cgx,
          runSpacing: gutterY ?? cgy,
          crossAxisAlignment: s.va ?? WrapCrossAlignment.start,
          alignment: s.ha ??
              (alignMent != null
                  ? alignment2WrapAlignment(alignMent) ?? WrapAlignment.start
                  : WrapAlignment.start),
          children:
              children.isNotEmpty ? children : [child ?? SizedBox.shrink()],
        ),
      );
      return Offstage(
        offstage: !isVisible,
        child: Opacity(
          opacity: opacity,
          child: c,
        ),
      );
    });
  }
}
