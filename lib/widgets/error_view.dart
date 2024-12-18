import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    this.error,
    this.stackTrace
  });

  final Object? error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/icons/error_icon.png'),
            Text(error.toString()),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('エラー詳細'),
                      content: SingleChildScrollView(
                        child: Text(stackTrace.toString())
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: stackTrace.toString()));
                            Navigator.pop(context);
                          },
                          child: const Text('コピー')
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('閉じる')
                        )
                      ],
                    );
                  },
                );
              },
              child: const Text('エラー詳細')
            ),
          ],
        ),
      ),
    );
  } 
}