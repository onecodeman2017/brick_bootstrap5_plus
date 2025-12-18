<h1 align="center">
     <p align="center"><a href="https://pub.dev/packages/brick_bootstrap5_plus">brick_bootstrap5_plus 🚀 </a> <a href="https://github.com/onecodeman2017/brick_bootstrap5_plus">github</a> </p>
</h1>
<h1 align="center">
     Source code adapted from <p align="center"><a href="https://pub.dev/packages/flutter_bootstrap5">flutter_bootstrap5</a> <a href="https://github.com/felixjunghans/flutter_bootstrap_5">github</a> </p>
</h1>

<h2 align="center"> This package is used to support creating responsive web applications using Flutter.
It is based on the famous CSS framework Bootstrap 5 and flutter_bootstrap5, and provides many features that can also be found in Bootstrap.
</h2>
<p align="center">If you like this package, you can give it a like ❤️ <a href="https://github.com/onecodeman2017/brick_bootstrap5_plus">send a star ⭐</a> to support!</p>

<p align="center">
  <strong>📖 Read in other languages:</strong><br>
  <a href="README.md">中文</a> | <strong>English</strong>
</p>

<br />
<br />






#### BreakPoints

To set your own breakpoints, you can simply pass the BreakPoints class to the [FlutterBootstrap5] widget.
By default, the current breakpoints of Bootstrap5 CSS are used

```dart
        class BootstrapBreakPoints {
          static const BreakPoint xs = BreakPoint(minWidth: 0, maxWidth: 576);
          static const BreakPoint sm = BreakPoint(minWidth: 576, maxWidth: 768);
          static const BreakPoint md = BreakPoint(minWidth: 768, maxWidth: 992);
          static const BreakPoint lg = BreakPoint(minWidth: 992, maxWidth: 1200);
          static const BreakPoint xl = BreakPoint(minWidth: 1200, maxWidth: 1400);
          static const BreakPoint xxl =
          BreakPoint(minWidth: 1400, maxWidth: double.infinity);
        }
```

#### Container BreakPoints

In addition to the normal breakpoints, you can also define your own breakpoints for [FB5Container].
These determine what width a [FB5Container] should have at a certain breakpoint.

By default, the current container breakpoints of Bootstrap5 CSS are used

```dart
      class _BootstrapContainerBreakPoints {
        static const double xs = double.infinity;
        static const double sm = 540;
        static const double md = 720;
        static const double lg = 960;
        static const double xl = 1140;
        static const double xxl = 1320;
      }
```

#### Default Font Size

The default value is 12.0


### Using Theme in MaterialApp

You can use BootstrapTheme.

```dart
        MaterialApp(
            title: 'Demo',
            theme: BootstrapTheme.of(ctx).toTheme( [PASS YOUR THEME TO OVERRIDE BOOTSTRAP THEME IF YOU WANT TO] ),
            home: const Home(),
        ),
```

# 🚀 Features

## 📋 Currently Supported Bootstrap className

### 📱 Responsive Support
Support all breakpoints: `-xs`, `-sm`, `-md`, `-lg`, `-xl`, `-xxl`

### 🎨 Style System

| Category | Base Classes | Variants | Responsive Support | Description |
|----------|--------------|----------|-------------------|-------------|
| **Grid System** | `col` | `col-{1-24}` | ✅ | 24-column grid system |
| **Spacing** | `p` (padding) | `p-{1-5}`, `p{t,b,s,e,x,y}-{1-5}`, `p{t,b,s,e,x,y}-custom-{0.0-*}` | ✅ | Inner padding |
| | `m` (margin) | `m-{1-5}`, `m{t,b,s,e,x,y}-{1-5}`, `m{t,b,s,e,x,y}-custom-{0.0-*}` | ✅ | Outer margin |
| | `g` (gutter) | `g-{1-5}`, `g{x,y}-{1-5}`, `g{x,y}-custom-{0.0-*}` | ✅ | Grid spacing |
| **Layout** | `order` | `order-{0-*}` | ✅ | Order |
| | `offset` | `offset-{0-*}` | ✅ | Offset |
| | `d` (display) | `d-none`, `d-block` | ✅ | Show/hide |
| **Alignment** | `align-items` | `align-items-{start, center, end}` | ✅ | Vertical alignment |
| | `align-self` | `align-self-{start, center, end}` | ✅ | Self alignment |
| | `justify-content` | `justify-content-{start, around, between, evenly, center, end}` | ✅ | Horizontal alignment |
| | `align` | `align-{start,center,end,bottomCenter,bottomLeft,bottomRight,centerLeft,centerRight,topCenter,topLeft,topRight}` | ✅ | Absolute alignment |
| **Sizing** | `w` (width) | `w-{0-100}`, `w-{0-*}-px` | ✅ | Width |
| | `h` (height) | `h-{0-100}`, `h-{0-*}-px` | ✅ | Height |
| | `maxWidth`, `minWidth` | `maxWidth-{0-100}`, `minWidth-{0-*}-px` | ✅ | Max/min width |
| | `maxHeight`, `minHeight` | `maxHeight-{0-100}`, `minHeight-{0-*}-px` | ✅ | Max/min height |
| **Colors** | `bg` | `bg-fg,bg-bg,bg-select,bg-selectBg,bg-fff,bg-ffffff,bg-FFDFE2E6,bg-transparent,bg-{Material Colors}` | ✅ | Background color |
| | `color` | `color-fg,color-bg,color-select,color-selectBg,color-fff,color-ffffff,color-FFDFE2E6,color-transparent,color-{Material Colors}` | ✅ | Text color |
| | `borderColor` | `borderColor-fg,borderColor-bg,borderColor-select,borderColor-selectBg,borderColor-fff,borderColor-ffffff,borderColor-FFDFE2E6,borderColor-transparent,borderColor-{Material Colors}` | ✅ | Border color |
| **Interaction** | `hoverColor` | `hoverColor-fg,hoverColor-bg,hoverColor-select,hoverColor-selectBg,hoverColor-fff,hoverColor-ffffff,hoverColor-FFDFE2E6,hoverColor-transparent,hoverColor-{Material Colors}` | ✅ | Hover color |
| | `hoverBorderColor` | `hoverBorderColor-fg,hoverBorderColor-bg,hoverBorderColor-select,hoverBorderColor-selectBg,hoverBorderColor-fff,hoverBorderColor-ffffff,hoverBorderColor-FFDFE2E6,hoverBorderColor-transparent,hoverBorderColor-{Material Colors}` | ✅ | Hover border color |
| | `hoverBorder` | `hoverBorder-{0-*}` | ✅ | Hover border width |
| | `activeColor` | `activeColor-fg,activeColor-bg,activeColor-select,activeColor-selectBg,activeColor-fff,activeColor-ffffff,activeColor-FFDFE2E6,activeColor-transparent,activeColor-{Material Colors}` | ✅ | Active color |
| **Borders** | `border` | `border-{0-*}` | ✅ | Border width |
| | `borderRadius` | `borderRadius-{0-*}` | ✅ | Border radius |
| | `border{Top,Bottom,Left,Right}` | `borderTop-{0-*}` | ✅ | Individual borders |
| | `borderRadius{Top,Bottom,Left,Right}` | `borderRadiusTop-{0-*}` | ✅ | Individual border radius |
| **Shadows** | `shadowColor` | `shadowColor-fg,shadowColor-bg,shadowColor-select,shadowColor-selectBg,shadowColor-fff,shadowColor-ffffff,shadowColor-FFDFE2E6,shadowColor-transparent,shadowColor-{Material Colors}` | ✅ | Shadow color |
| | `shadowBlurRadius` | `shadowBlurRadius-{0-*}` | ✅ | Shadow blur radius |
| | `shadow-offset` | `shadow-offset-1,1 shadow-offset-.5,.5 shadow-offset-10,10` | ✅ | Shadow offset |
| **Typography** | `font-size` | `font-size-{10-*}` | ✅ | Font size |
| | `font-weight` | `font-weight-{10-*}` | ✅ | Font weight |
| **Effects** | `blur` | `blur-{0-*}` | ✅ | Blur effect |
| | `scale` | `scale-{0-*}` | ✅ | Scale |
| | `opacity` | `opacity-{0-1}` | ✅ | Opacity |
| **Other** | `fit` | `fit-{contain,cover,fill,scaleDown,none}` | ✅ | Image fit |
| | `stackFit` | `stackFit-{expand,loose,passthrough,none}` | ✅ | Stack fit |

## Widgets

### BContainer (Not recommended)
BContainer is a wrapper around Flutter Container.

```dart
    BContainer(child: child);
    BContainer.sm(child: child);
    BContainer.md(child: child);
    BContainer.lg(child: child);
    BContainer.xl(child: child);
    BContainer.xxl(child: child);
    BContainer.fluid(child: child);
```

### Grid (Not recommended)
Grid is used to represent the grid system for your children. They should not contain FB5Cols. FB5Grid automatically sizes its children so that a row of children always has the same height.
```dart
    FB5Grid(
      classNames: 'row-cols-3',
      children: [
          ...
      ],
    ),
```

### BRow
BRow is a Bootstrap row. It wraps a list of BCol,
BCol arranges and displays according to classNames.
Supported classNames are roughly listed below
```dart
    BRow(
        classNames: 'mt-5 px-xs-3 px-lg-0 gx-4',
        children: [
            BCol(
                classNames: 'col-12',
                child: const GettingStarted(),
            ),
            BCol(
                classNames: 'col-12 mt-5',
                child: const Containers(),
            ),
            BCol(
                classNames: 'mt-5',
                child: const TestingArea(),
            ),
            BCol(
                classNames: 'my-5',
                child: const GridArea(),
            ),
       ],
    ),
    BRow(
        classNames: 'offset-1 p-10 m-10',
        classNames: 'align-items-start align-items-center align-items-end ' // vertical alignment
        classNames: 'justify-content-start justify-content-around justify-content-between justify-content-evenly justify-content-center justify-content-end' // horizontal alignment (since Wrap component is used, horizontal alignment only supports left, right, center)
        classNames: 'align-self-bottomCenter align-self-bottomLeft align-self-bottomRight align-self-center align-self-centerLeft align-self-centerRight align-self-topCenter align-self-topLeft align-self-topRight ' // horizontal alignment
        classNames: 'align-bottomCenter align-bottomLeft align-bottomRight align-center align-centerLeft align-centerRight align-topCenter align-topLeft align-topRight ' // horizontal alignment
        children:[
            BCol(
            classNames: ''
            children:[],
            )
        ]
    ),
```

### BCol
BCol arranges and displays according to classNames.
Supported classNames are roughly listed below
```dart
        BCol(
            classNames: 'col-12 col-lg-6 col-xl-4 m-3 m-xl-2 d-none d-sm-block',
            child: child,
        ),
         BCol(
            classNames: 'col-24 offset-1 order-1',
            classNames: 'align-items-start align-items-center align-items-end ' // vertical alignment
            classNames: 'justify-content-start justify-content-around justify-content-between justify-content-evenly justify-content-center justify-content-end' // horizontal alignment (since Wrap component is used, horizontal alignment only supports left, right, center)
            classNames: 'align-self-bottomCenter align-self-bottomLeft align-self-bottomRight align-self-center align-self-centerLeft align-self-centerRight align-self-topCenter align-self-topLeft align-self-topRight ' // horizontal alignment
            classNames: 'align-bottomCenter align-bottomLeft align-bottomRight align-center align-centerLeft align-centerRight align-topCenter align-topLeft align-topRight ' // horizontal alignment
            classNames: 'borderRadius-4  borderColor-red border-1' // border
            classNames: 'mt-10 mb-10 h-160-px bg-black ' // only supports bg- background color
            classNames: 'shadowColor-black shadowBlurRadius-4 shadow-offset-1,1' // shadow
            height: 160,
            decoration: BoxDecoration(),
            childRef: ,
            child: ,
            children:[],
        )
```

### H5Row
BCol arranges and displays according to classNames.
Supported classNames are roughly listed below
```dart
        H5Row(
            classNames: 'col-12 col-lg-6 col-xl-4 m-3 m-xl-2 d-none d-sm-block',
            children: child,
        ),
        H5Row(
          classNames: 'align-items-start align-items-center align-items-end ' // vertical alignment
          classNames: 'justify-content-start justify-content-around justify-content-between justify-content-evenly justify-content-center justify-content-end' // horizontal alignment (since Wrap component is used, horizontal alignment only supports left, right, center)
          classNames: 'align-self-bottomCenter align-self-bottomLeft align-self-bottomRight align-self-center align-self-centerLeft align-self-centerRight align-self-topCenter align-self-topLeft align-self-topRight ' // horizontal alignment
          classNames: 'align-bottomCenter align-bottomLeft align-bottomRight align-center align-centerLeft align-centerRight align-topCenter align-topLeft align-topRight ' // horizontal alignment
          classNames: 'mt-10 mb-10 bg-black ' // only supports bg- background color
          classNames: 'w-150-px h-160-px maxHeight-150-px minHeight-150-px minWidth-150-px maxWidth-150-px' //
          classNames: 'shadowColor-black12 shadowBlurRadius-2 shadow-offset-1,1' // shadow
          classNames: 'borderRadius-4  borderColor-red border-1' // border
          classNames: 'hoverColor-green hoverBorderColor-blue hoverBorder-2 ' //
          children:[],
      )
```




## Helper
### BootstrapTheme
Information about the current screen size and breakpoints is returned by BootstrapTheme.
To do this, simply execute the following function.

```dart
    final screenData = BootstrapTheme.of(context);
```

It also provides useful functions. For example, to query whether the current breakpoint is larger or smaller than a certain breakpoint.

```dart
    final screenData = BootstrapTheme.of(context);
    screenData.currentBreakPoint.isBreakPointOrSmaller(screenData.breakPoints.xl);

    screenData.currentBreakPoint.isBreakPointOrLarger(screenData.breakPoints.xl);
```

### Functions
There are some helper functions to add bootstrap functionality to Flutter widgets:

```dart
    // e.g. add a 4rem margin-top to a Container
    Container(
      margin: margin(context, 'mt-4'),
    );

    // e.g. add a 2rem padding to a Container
    Container(
      margin: padding(context, 'p-2'),
    );
    
    // add a borderRadius to a Container
    Container(
      decoration: BoxDecoration(
        borderRadius: rounded(context), // rounded1 rounded2 rounded3 rounded4 rounded5 roundedPill
      ),
    );

    // add a border to a Container
    Container(
      decoration: BoxDecoration(
        border: borderPrimary(context), // borderSecondary, borderSuccess, borderDanger, etc...
      ),
    );


    // responsiveValue & responsiveValueOrNull
    // If you need different values for different breakpoints
    final width = responsiveValue<double>(context, defaultValue: 300.0, md: 350.0, xl: 400.0);
```