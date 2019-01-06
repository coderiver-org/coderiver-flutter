import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClearableInputField extends StatefulWidget {
  final ValueChanged onchange;
  final ValueChanged onSubmit;
  final String hintTxt;
  final bool autoFocus;
  final TextStyle textStyle;
  final TextStyle hintStyle;
  final InputBorder border;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool obscureText;
  final EdgeInsetsGeometry padding;
  final Color fillColor;
  final bool showPrefixIcon;

  ClearableInputField(
      {this.onchange,
      this.hintTxt,
      this.autoFocus = true,
      this.onSubmit,
      this.textStyle,
      this.hintStyle,
      this.border,
      this.fillColor,
      this.controller,
      this.inputType,
      this.padding,
      this.showPrefixIcon = true,
      this.obscureText = false});

  @override
  State<StatefulWidget> createState() => new _ClearableInputFieldState();
}

class _ClearableInputFieldState extends State<ClearableInputField> {
  bool _showClearIcon = false;
  FocusNode _focusNode;

  @override
  Widget build(BuildContext context) {
    var _controller = (null == widget.controller)
        ? TextEditingController()
        : widget.controller;
    _focusNode = FocusNode();
    return TextField(
      obscureText: widget.obscureText,
      keyboardType: widget.inputType,
      autofocus: widget.autoFocus,
      focusNode: _focusNode,
      controller: _controller,
      cursorColor: Colors.white,
      style: widget.textStyle,
      onChanged: onTextChanged,
      onSubmitted: onSubmit,
      decoration: InputDecoration(
          contentPadding:
              (null == widget.padding) ? EdgeInsets.all(0.0) : widget.padding,
          /* suffixIcon: Icon(Icons.chevron_right), //输入框内右侧图标
          icon: Icon(Icons.person), //输入框左侧图标
          prefixIcon: Icon(Icons.skip_previous), //输入框内左侧图标
          helperText: 'helperText',*/

          hintText: widget.hintTxt,
          hintStyle: widget.hintStyle,
          fillColor: widget.fillColor,
          filled: null != widget.fillColor,
          border: widget.border,
          labelText: widget.hintTxt,
          labelStyle: widget.hintStyle,
          errorBorder: widget.border,
          focusedBorder: widget.border,
          enabledBorder: widget.border,
          disabledBorder: widget.border,
          focusedErrorBorder: widget.border,
          suffixIcon: _buildDefaultClearIcon(context, _controller),
          prefixIcon: widget.showPrefixIcon
              ? (_buildDefaultPrefixIcon())
              : Icon(Icons.person)),
    );
  }

  void onTextChanged(String str) {
    bool newState = (str.length <= 0) ? false : true;
    if (newState != _showClearIcon) {
      setState(() {
        _showClearIcon = newState;
      });
    }
    widget.onchange(str);
  }

  void onSubmit(String str) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
//    FocusScope.of(context).requestFocus(new FocusNode());
    widget.onSubmit(str);
  }

  Widget _buildDefaultClearIcon(
      BuildContext context, TextEditingController controller) {
    return Visibility(
      child: InkWell(
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
        onTap: () {
          controller.clear();
          widget.onchange("");
          FocusScope.of(context).requestFocus(_focusNode);
          setState(() {
            _showClearIcon = false;
          });
        },
      ),
      visible: _showClearIcon,
    );
  }

  Widget _buildDefaultPrefixIcon() {
    return null;
    //return Icon(Icons.close, color: Colors.white);
  }
}
