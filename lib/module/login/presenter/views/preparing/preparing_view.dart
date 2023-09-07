import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/login/presenter/cubit/cubit.dart';
import 'package:tic_tac_toe_app/module/login/presenter/views/preparing/preparing.dart';

class PreparingView extends StatefulWidget {
  const PreparingView({
    required this.preparingCubit,
    required this.themeCubit,
    super.key,
  });

  final PreparingCubit preparingCubit;
  final ThemeCubit themeCubit;

  @override
  State<PreparingView> createState() => _PreparingViewState();
}

class _PreparingViewState extends State<PreparingView> {
  @override
  void initState() {
    super.initState();
    _preparingCubit.onPrepare();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<PreparingCubit, PreparingState>(
          bloc: _preparingCubit,
          listener: (context, state) {
            if (state.step == ConnectionStep.done) {
              Future.delayed(
                const Duration(milliseconds: 150),
                () => Navigator.of(context).pushReplacementNamed('/home/root'),
              );
            }
          },
          child: BlocBuilder<PreparingCubit, PreparingState>(
            bloc: _preparingCubit,
            builder: (context, state) {
              if (state.step == ConnectionStep.connectionUnavailable) {
                return ConnectionUnavailableContent(
                  text: state.step.text(context),
                  themeCubit: _themeCubit,
                  onTap: () => _preparingCubit.onPrepare(),
                );
              }
              return ConnectionInProgress(
                text: state.step.text(context),
                progress: state.step.progress,
              );
            },
          ),
        ),
      ),
    );
  }

  ThemeCubit get _themeCubit => widget.themeCubit;

  PreparingCubit get _preparingCubit => widget.preparingCubit;
}
