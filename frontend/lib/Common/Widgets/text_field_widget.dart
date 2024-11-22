import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

Widget commonTextField(
    {required TextEditingController controller,
    required String text,
    required int maxLines,
    required Function onChange,
    required bool isPassword,
    required bool obscure,
    required Function validator,
    bool? isChat,
    Function? onTap,
    bool? isSearch,
    icon}) {
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.text,
    style: const TextStyle(color: Colors.blueGrey),
    expands: false,
    minLines: obscure ? 1 : null,
    obscureText: obscure,
    maxLines: obscure ? 1 : maxLines,
    validator: (value) {
      return validator(value);
    },
    onChanged: (value) {
      onChange(value);
    },
    decoration: InputDecoration(
        fillColor: const Color(0xfff5f5f5),
        filled: true,
        hintText: text,
        suffixIcon: isChat ?? false
            ? GestureDetector(
                onTap: () {},
                child: const Icon(Iconsax.send_2),
              )
            : isPassword
                ? GestureDetector(
                    onTap: () {
                      if (onTap != null) {
                        onTap();
                      }
                    },
                    child: obscure
                        ? const Icon(
                            Iconsax.eye,
                          )
                        : const Icon(
                            Iconsax.eye_slash,
                          ))
                : isSearch != null
                    ? const Icon(
                        Iconsax.candle_2,
                      )
                    : const SizedBox.shrink(),
        prefixIcon: isChat ?? false
            ? null
            : Icon(
                icon,
              ),
        hintStyle: const TextStyle(color: Color.fromARGB(255, 186, 186, 186)),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Color(0xff004b23)),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.redAccent),
        ),
        border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)))),
  );
}
