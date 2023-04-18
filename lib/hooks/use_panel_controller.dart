import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

PanelController usePanelController() {
  return use(_PanelControllerHook());
}

class _PanelControllerHook extends Hook<PanelController> {
  @override
  HookState<PanelController, Hook<PanelController>> createState() =>
      _PanelControllerHookState();
}

class _PanelControllerHookState
    extends HookState<PanelController, _PanelControllerHook> {
  late final PanelController panelController;

  @override
  void initHook() {
    panelController = PanelController();
    super.initHook();
  }

  @override
  PanelController build(BuildContext context) {
    return panelController;
  }
}
