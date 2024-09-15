import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WebLoginView extends HookConsumerWidget {
  const WebLoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<List<Cookie>> getCookies() async {
      final cookies = await CookieManager().getCookies(url: WebUri("https://hoyolab.com"));

      return cookies;
    }
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Login'),
        actions: [
          TextButton(
            onPressed: () async {
              final cookies = await getCookies();
              final Map<String, String> cookieMap = {};

              for (var cookie in cookies) {
                cookieMap[cookie.name] = cookie.value;
              }

              if (!context.mounted) return;
              Navigator.pop(context, cookieMap);
            },
            child: const Text('完了')
          )
        ],
      ),
      body: InAppWebView(
        onWebViewCreated: (controller) {
          CookieManager().deleteAllCookies();
        },
        initialUrlRequest:
          URLRequest(url: WebUri("https://act.hoyolab.com/ys/event/calculator-sea/index.html")),
        initialSettings: InAppWebViewSettings(
          useHybridComposition: true,
        ),
      ),
    );
  }
}