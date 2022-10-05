import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortune_telling/screens/take_photo/bloc/add_bloc.dart';
import 'package:fortune_telling/screens/take_photo/take_photo_love.dart';

class HomeScreen extends StatelessWidget {
  static const _actionTitles = ['Sheare App', 'Vote App', 'Infomation App'];

  const HomeScreen({Key? key}) : super(key: key);

// Hiển thị popup khi click vào icon
  void _showAction(BuildContext context, int index) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CLOSE'),
            ),
          ],
        );
      },
    );
  }

// Hiển thị giao diện khi mở click mở rộng
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/img_bg.jpeg"),
          fit: BoxFit.cover,
          // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.srcATop),
        )),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Column(
                  children: [
                    Text(
                      'Bói tình yêu',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink[400]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ActionChooseType(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/bode_name'),
                          text: 'Bói tên',
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        ActionChooseType(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/bode_face'),
                          text: 'Bói mặt',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ActionChooseType(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/confession'),
                          text: 'Lời tỏ tình',
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        ActionChooseType(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/day_love'),
                          text: 'Ngày tình yêu',
                        ),

                        // SizedBox(
                        //   width: 100,

                        //   child: Image.asset("assets/img_bg.jpeg"))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ActionChooseType(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return BlocProvider<AddCustomermBloc>(
                                lazy: false,
                                create: (BuildContext context) =>
                                    AddCustomermBloc(),
                                child: TakePhotoLove(),
                              );
                            }),
                          ),
                          text: 'Chụp ảnh love',
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        ActionChooseType(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/seen_photo'),
                          text: 'Xem ảnh',
                        ),

                        // SizedBox(
                        //   width: 100,

                        //   child: Image.asset("assets/img_bg.jpeg"))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: ExpandableFab(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () => _showAction(context, 0),
            icon: const Icon(Icons.share),
          ),
          ActionButton(
            onPressed: () => _showAction(context, 1),
            icon: const Icon(Icons.favorite),
          ),
          ActionButton(
            onPressed: () => _showAction(context, 2),
            icon: const Icon(Icons.info),
          ),
        ],
      ),
    );
  }
}

// class cha cho việc chọn option
@immutable
class ExpandableFab extends StatefulWidget {
  const ExpandableFab({
    Key? key,
    this.initialOpen,
    required this.distance,
    required this.children,
  }) : super(key: key);

  final bool? initialOpen;
  final double distance;
  final List<Widget> children;

  @override
  _ExpandableFabState createState() => _ExpandableFabState();
}

// class con xử lý giao diện và action cho hành động chọn option
class _ExpandableFabState extends State<ExpandableFab>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _expandAnimation;
  bool _open = false;

  // khởi tạo state cho lần đầu vào app
  @override
  void initState() {
    super.initState();
    _open = widget.initialOpen ?? false;
    _controller = AnimationController(
      value: _open ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.easeOutQuad,
      parent: _controller,
    );
  }

  // hàm dispose huỷ sự kiện gắn vào màn hình
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

// thay đổi trạng thái của button
  void _toggle() {
    setState(() {
      _open = !_open;
      if (_open) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        alignment: Alignment.bottomRight,
        clipBehavior: Clip.none,
        children: [
          _buildTapToCloseFab(),
          ..._buildExpandingActionButtons(),
          _buildTapToOpenFab(),
        ],
      ),
    );
  }

// Hiển thị button X để đóng option
  Widget _buildTapToCloseFab() {
    return SizedBox(
      width: 56.0,
      height: 56.0,
      child: Center(
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          elevation: 4.0,
          child: InkWell(
            onTap: _toggle,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.close, color: Colors.pink[400]),
            ),
          ),
        ),
      ),
    );
  }

  // Giao diện cha của danh sách các option
  List<Widget> _buildExpandingActionButtons() {
    final children = <Widget>[];
    final count = widget.children.length;
    final step = 90.0 / (count - 1);
    for (var i = 0, angleInDegrees = 0.0;
        i < count;
        i++, angleInDegrees += step) {
      children.add(
        _ExpandingActionButton(
          directionInDegrees: angleInDegrees,
          maxDistance: widget.distance,
          progress: _expandAnimation,
          child: widget.children[i],
        ),
      );
    }
    return children;
  }

// Hiển thị button để chọn option
  Widget _buildTapToOpenFab() {
    return IgnorePointer(
      ignoring: _open,
      child: AnimatedContainer(
        transformAlignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
          _open ? 0.7 : 1.0,
          _open ? 0.7 : 1.0,
          1.0,
        ),
        duration: const Duration(milliseconds: 500),
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
        child: AnimatedOpacity(
          opacity: _open ? 0.0 : 1.0,
          curve: const Interval(0.25, 1.0, curve: Curves.easeInOut),
          duration: const Duration(milliseconds: 250),
          child: FloatingActionButton(
            backgroundColor: Colors.pink[400],
            onPressed: _toggle,
            child: const Icon(Icons.menu),
          ),
        ),
      ),
    );
  }
}

// Hiển thị các phần tử của option
@immutable
class _ExpandingActionButton extends StatelessWidget {
  _ExpandingActionButton({
    Key? key,
    required this.directionInDegrees,
    required this.maxDistance,
    required this.progress,
    required this.child,
  }) : super(key: key);

  final double directionInDegrees;
  final double maxDistance;
  final Animation<double> progress;
  final Widget child;
  // xử lý animation cho phần option
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: progress,
      builder: (context, child) {
        final offset = Offset.fromDirection(
          directionInDegrees * (math.pi / 180.0),
          progress.value * maxDistance,
        );
        return Positioned(
          right: 4.0 + offset.dx,
          bottom: 4.0 + offset.dy,
          child: Transform.rotate(
            angle: (1.0 - progress.value) * math.pi / 2,
            child: child!,
          ),
        );
      },
      child: FadeTransition(
        opacity: progress,
        child: child,
      ),
    );
  }
}

// Sự kiện click vào option
class ActionChooseType extends StatelessWidget {
  const ActionChooseType({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);
  final VoidCallback? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 143,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13.0))),
            backgroundColor: MaterialStateProperty.all(Colors.pink[400])),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}

@immutable
class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget icon;

// Giao diện chi tiết của các option
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      color: Colors.pink[400],
      elevation: 6.0,
      child: IconTheme.merge(
        data: theme.accentIconTheme,
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
