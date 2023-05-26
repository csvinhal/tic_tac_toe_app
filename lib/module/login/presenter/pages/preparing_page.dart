import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/modules/theme/presenter/cubits/theme_cubit.dart';
import 'package:tic_tac_toe_app/module/login/presenter/cubit/preparing_cubit.dart';
import 'package:tic_tac_toe_app/module/login/presenter/cubit/preparing_state.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/widgets/connection_in_progress_content/connection_in_progress_content.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/widgets/connection_unavailable_content/connection_unavailable_content.dart';

class PreparingPage extends StatefulWidget {
  const PreparingPage({
    required this.preparingCubit,
    required this.themeCubit,
    super.key,
  });

  final PreparingCubit preparingCubit;
  final ThemeCubit themeCubit;

  @override
  State<PreparingPage> createState() => _PreparingPageState();
}

class _PreparingPageState extends State<PreparingPage> {
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
                () => Navigator.of(context).pushReplacementNamed('/home'),
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
                themeCubit: _themeCubit,
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
