import 'package:flutter/material.dart';
import 'package:regex_test/state/top_page_state.dart';
import 'package:regex_test/widget/input_field.dart';
import 'package:regex_test/widget/output_field.dart';
import 'package:regex_test/widget/regex_text.dart';
import 'package:provider/provider.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TopPageState>(
      create: (BuildContext context) => TopPageState(),
      child: GestureDetector(
        onTap: () {
          final FocusScopeNode currentScope = FocusScope.of(context);
          if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Regex Checker'),
          ),
          body: Container(
            margin: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Consumer<TopPageState>(
                builder: (context, state, _) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      InputField(
                        label: 'input',
                        onChanged: (String text) {
                          state.changeInput(text);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      InputField(
                        label: 'regex',
                        onChanged: (String text) {
                          state.changeRegex(text);
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'result',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      OutputField(
                        child: RegexText(
                          text: state.inputText,
                          regex: state.regexText,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
