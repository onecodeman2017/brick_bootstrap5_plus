part of brick_bootstrap5_plus_widgets;

class H5Row extends StatefulWidget {
  final List<Widget> children;
  final String classNames;

  ///
  /// **支持的 classNames**:
  /// - 栅格: `col-{1-24}`, `offset-{0-*}`, `order-{0-*}`
  /// - 间距: `p-{1-5}`, `m-{1-5}`, `g-{1-5}`, `p{t,b,s,e,x,y}-*`, `m{t,b,s,e,x,y}-*`
  /// - 对齐: `align-items-*`, `align-self-*`, `justify-content-*`, `align-*`
  /// - 尺寸: `w-{0-*}`, `h-{0-*}`, `maxWidth-{0-*}`, `minWidth-{0-*}`, `maxHeight-{0-*}`, `minHeight-{0-*}`
  /// - 颜色: `bg-*`, `color-*`, `borderColor-*`, `hoverColor-*`, `activeColor-*`
  /// - 边框: `border-*`, `borderRadius-*`, `borderTop-*`, `borderBottom-*`, `borderLeft-*`, `borderRight-*`
  /// - 边框圆角: `borderRadiustopLeft-*`, `borderRadiustopRight-*`, `borderRadiusTop-*`, `borderRadiusBottom-*`, `borderRadiusLeft-*`, `borderRadiusRight-*`, `borderRadiusbottomLeft-*`, `borderRadiusbottomRight-*`
  /// - 阴影: `shadowColor-*`, `shadowBlurRadius-*`, `shadow-offset-*`
  /// - 显示: `d-none`, `d-block`
  /// - 透明度: `opacity-*`
  /// - 圆角: `rounded-{sm,md,lg,xl,full,circle,number}`
  /// - 文本: `text-truncate`, `text-break`, `line-height-*`, `letter-spacing-*`
  /// - 响应式: `hidden`, `hidden-{xs,sm,md,lg,xl,xxl}`, `visible`, `visible-{xs,sm,md,lg,xl,xxl}`, `block`, `block-{xs,sm,md,lg,xl,xxl}`
  ///
  /// **注意**: H5Row 是最广泛支持的布局组件，支持淡停效应事件 (hoverColor, hoverBorder, hoverBorderColor)
  ///
  /// ```dart
  ///   H5Row(
  ///     classNames: 'align-items-start align-items-center align-items-end',
  ///     classNames: 'justify-content-start justify-content-around justify-content-between justify-content-evenly justify-content-center justify-content-end',
  ///     classNames: 'align-self-bottomCenter align-self-bottomLeft align-self-bottomRight align-self-center align-self-centerLeft align-self-centerRight align-self-topCenter align-self-topLeft align-self-topRight',
  ///     classNames: 'align-bottomCenter align-bottomLeft align-bottomRight align-center align-centerLeft align-centerRight align-topCenter align-topLeft align-topRight',
  ///     classNames: 'w-150-px h-160-px maxHeight-150-px minHeight-150-px minWidth-150-px maxWidth-150-px',
  ///     classNames: 'mt-10 mb-10 bg-black color-white',
  ///     classNames: 'shadowColor-black shadowBlurRadius-2 shadow-offset-1,1',
  ///     classNames: 'borderRadius-4 borderColor-red border-1',
  ///     classNames: 'hoverColor-green hoverBorderColor-blue hoverBorder-2',
  ///     classNames: 'display-none display-block',
  ///     classNames: 'opacity-0.5',
  ///     classNames: 'rounded-lg flex-grow-12 gap-3',
  ///     children: [...],
  ///   )
  /// ```
  H5Row({
    super.key,
    required this.children,
    this.classNames = '',
  });

  @override
  State<H5Row> createState() => _H5RowState();
}

class _H5RowState extends State<H5Row> {
  GlobalKey key = GlobalKey();
  bool _isHover = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQueryBuilder(builder: (context, constraints, screenData) {
      final styles = convertClassNamesToStyle(widget.classNames);
      final s = getStyle(screenData, constraints, styles);
      final minWidth = (s.minWidth != null && s.w != null)
          ? ((s.minWidth! > s.w!) ? s.minWidth! : s.w!)
          : s.minWidth ?? s.w ?? constraints.maxWidth;
      final maxWidth = (s.maxWidth != null && s.w != null)
          ? ((s.maxWidth! > s.w!) ? s.maxWidth! : s.w!)
          : s.maxWidth ?? s.w ?? constraints.maxWidth;
      final minHeight = (s.minHeight != null && s.h != null)
          ? ((s.minHeight! > s.h!) ? s.minHeight! : s.h!)
          : s.minHeight ?? s.h ?? constraints.minHeight;
      final maxHeight = s.maxHeight ?? s.h ?? null;

      final isVisible = s.isVisible ?? false;
      final opacity = s.opacity ?? 1;
      final c = Padding(
        padding: s.cm ?? EdgeInsets.all(0),
        child: MouseRegion(
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
          child: DecoratedBox(
            decoration: getBoxDecorationByStyle(s, _isHover) ?? BoxDecoration(),
            child: Padding(
              padding: s.cp ?? EdgeInsets.all(0),
              child: ConstrainedBox(
                constraints: maxHeight != null
                    ? BoxConstraints(
                        minHeight: minHeight,
                        minWidth: minWidth,
                        maxHeight: maxHeight,
                        maxWidth: maxWidth,
                      )
                    : BoxConstraints(
                        minHeight: minHeight,
                        minWidth: minWidth,
                        // maxHeight: maxHeight,
                        // maxWidth: maxWidth,
                      ),
                child: Wrap(
                  /// x 轴 左右 对齐
                  alignment: getWrapAlignment(s) ?? WrapAlignment.start,

                  /// y 轴 上下 对齐
                  runAlignment: WrapAlignment.start,

                  /// x 轴 垂直 对齐 （等于h5 verticalAlign）
                  crossAxisAlignment:
                      getWrapCrossAlignment(s) ?? WrapCrossAlignment.center,

                  /// down 正常显示; up 反转显示
                  verticalDirection: VerticalDirection.down,
                  key: key,
                  clipBehavior: Clip.none,
                  children: widget.children,
                ),
              ),
            ),
          ),
        ),
      );
      return Offstage(
        // 为true，隐藏，不会占用布局空间
        offstage: !isVisible,
        child: Opacity(
          opacity: opacity,
          child: c,
        ),
      );
    });
  }
}
