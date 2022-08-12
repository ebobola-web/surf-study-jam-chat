import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:surf_practice_chat_flutter/assets/themes/theme_config.dart';
import 'package:surf_practice_chat_flutter/bloc/chats/chats_bloc.dart';
import 'package:surf_practice_chat_flutter/bloc/chats/chats_state.dart';
import 'package:surf_practice_chat_flutter/features/models/snack_type.dart';
import 'package:surf_practice_chat_flutter/utils/snack_bar.dart';

/// Main screen of chat app, containing messages.
class ChatsScreen extends StatelessWidget {
  const ChatsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ChatsBloc, ChatsState>(
          listenWhen: (previous, current) {
            return !previous.isError && current.isError;
          },
          listener: (context, chatState) {
            showGetSnackBar(
              context,
              chatState.error!,
              from: SnackPosition.TOP,
              type: SnackType.error,
              textColor: Colors.red,
            );
          },
        ),
      ],
      child: GestureDetector(
        onTap: () {
          //? For unfocus textfields on click outside
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(),
          ),
          body: Column(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    ThemeConfig.defaultPadding,
                    0,
                    ThemeConfig.defaultPadding,
                    ThemeConfig.defaultPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(child: ListView()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
