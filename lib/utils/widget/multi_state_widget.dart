import 'package:flutter/cupertino.dart';

class MultiStateWidget extends StatefulWidget {
  LAYOUT_STATE _layoutState = LAYOUT_STATE.stateDefault;
  late final Widget _defaultLayout;
  Widget? emptyLayout;
  Widget? loadingLayout;
  Widget? errorLayout;

  final Widget child;

  MultiStateWidget(
      {Key? key,
      required this.child,
      this.emptyLayout,
      this.loadingLayout,
      this.errorLayout})
      : _defaultLayout = child,
        super(key: key);

  @override
  MultiStateWidgetState createState() => MultiStateWidgetState();
}

class MultiStateWidgetState extends State<MultiStateWidget> {
  @override
  Widget build(BuildContext context) {
    switch (widget._layoutState) {
      case LAYOUT_STATE.stateDefault:
        {
          return widget._defaultLayout;
        }
      case LAYOUT_STATE.stateLoading:
        {
          return widget.loadingLayout ??=
              throw ("Loading Layout not been initialized");
        }
      case LAYOUT_STATE.stateError:
        {
          return widget.errorLayout ??=
              throw ("Error Layout not been initialized");
        }
      case LAYOUT_STATE.stateEmpty:
        {
          return widget.emptyLayout ??=
              throw ("Empty Layout not been initialized");
        }
    }
  }

  void setDefault() {
   setState(() {
      widget._layoutState = LAYOUT_STATE.stateDefault;  });
  }

  void setLoading() {
    setState(() {
    widget._layoutState = LAYOUT_STATE.stateLoading;
    });
  }

  void setEmpty() {
    setState(() {
    widget._layoutState = LAYOUT_STATE.stateEmpty;
    });
  }

  void setError() {
setState(() {
    widget._layoutState = LAYOUT_STATE.stateError;
    });
  }
}

enum LAYOUT_STATE { stateDefault, stateLoading, stateError, stateEmpty }
