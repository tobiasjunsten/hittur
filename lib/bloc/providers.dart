import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hittur/bloc/all.dart';

class CopiedProviders extends StatelessWidget {
  final Widget child;
  final BuildContext blocContext;
  const CopiedProviders({
    Key key,
    @required this.child,
    @required this.blocContext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GameBloc>.value(
          value: blocContext.read<GameBloc>(),
        )
      ],
      child: child,
    );
  }
}
