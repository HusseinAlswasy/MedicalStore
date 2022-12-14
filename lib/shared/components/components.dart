import 'package:flutter/material.dart';
import 'package:medical_store/shared/constent/constent.dart';
import 'package:medical_store/shared/size_config/sizeConfig.dart';

Widget daefultButton({
  required String text,
  Color = const Color(0xffffffff),
}) =>
    Container(
      height: 45,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: Kprimary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required Function validate,
  required IconData prefix,
  IconData? suffix,
  Color? color,
  String? hint,
  bool isClickable = true,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  Function? SuffixPressed,
  bool isPassword = false,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onTap: () {
        onTap!();
      },
      onFieldSubmitted: (String? value) {
        onSubmit!(value);
      },
      obscureText: isPassword,
      onChanged: (String? value) {
        onChange!(value);
      },
      validator: (value) {
        return validate(value);
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(
          prefix,
          color: color,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            SuffixPressed!();

          },
          icon: Icon(
            suffix,
            color: Colors.deepPurple,
          ),
        ),
        border: OutlineInputBorder(),
      ),
    );

Widget defaultTextButton({
  required String text,
  required function,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );

//
// Widget deafultTextFromFeiled({
//   required TextEditingController controller,
//   required TextInputType keyboard,
//   Function? onSubmit,
//   required validate,
//   required String label,
//   required String hint,
//   required IconData prefix,
//   bool isPassword = false,
//   IconData? suffix,
//   bool visibilty = true,
//   Function? SuffixPressed,
// }) =>
//     TextFormField(
//       controller: controller,
//       keyboardType: keyboard,
//       onFieldSubmitted: (String value) {},
//       validator: validate,
//       obscureText: isPassword,
//       decoration: InputDecoration(
//         labelText: label,
//         hintText: hint,
//         prefixIcon: Icon(
//           prefix,
//           color: Colors.deepPurple,
//         ),
//         suffixIcon: IconButton(
//           onPressed: () {
//             SuffixPressed!();
//           },
//           icon: Icon(
//             suffix,
//             color: Colors.deepPurple,
//           ),
//         ),
//         border: const OutlineInputBorder(),
//       ),
//     );

//
// void navigateTo(context, Widget screen) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => screen),
//   );
// }
//
// void navigateAndFinish(context, Widget screen) {
//   Navigator.pushAndRemoveUntil(
//     context,
//     MaterialPageRoute(builder: (context) => screen),
//         (Route<dynamic> route) => false,
//   );
// }
//

//
// void showToast({
//   required String text,
//   required ToastStates state,
// }) =>
//     Fluttertoast.showToast(
//       msg: text,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 5,
//       backgroundColor: chooseToastColor(state),
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//
// // enum flutter toast
//
// enum ToastStates { SUCCESS, ERROR, WARNING }
//
// Color chooseToastColor(ToastStates states) {
//   Color color;
//   switch (states) {
//     case ToastStates.SUCCESS:
//       color = Colors.green;
//       break;
//     case ToastStates.ERROR:
//       color = Colors.red;
//       break;
//     case ToastStates.WARNING:
//       color = Colors.yellow;
//       break;
//   }
//   return color;
// }
//
// Widget buildListProduct(model,context,{bool isOldPrice =true})=> Container(
//   height: 140,
//   child: Padding(
//     padding: const EdgeInsets.all(20.0),
//     child: Row(
//       children: [
//         Stack(
//           alignment: AlignmentDirectional.bottomStart,
//           children: [
//             Image(
//               image: NetworkImage(model.image!),
//               width: 140,
//               height: 140,
//             ),
//             if (model.discount != 0&& isOldPrice==true)
//               Container(
//                 color: Colors.red,
//                 padding: const EdgeInsets.symmetric(horizontal: 5.0),
//                 child: const Text(
//                   'Discount',
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//           ],
//         ),
//         const SizedBox(width: 20),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 model.name!,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//               ),
//               Spacer(),
//               Row(
//                 children: [
//                   Text(
//                     model.price!.toString(),
//                     style: const TextStyle(
//                       fontSize: 12,
//                       color: deafultcolor,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   if (model.discount != 0 &&  isOldPrice==true)
//                     Text(
//                       model.oldPrice!.toString(),
//                       style: const TextStyle(
//                         fontSize: 10,
//                         color: Colors.grey,
//                         decoration: TextDecoration.lineThrough,
//                       ),
//                     ),
//                   const Spacer(),
//                   IconButton(
//                     onPressed: () {
//                       ShopCubit.get(context).changeFavorites(model.id!);
//                       // print(model['id']);
//                     },
//                     icon: CircleAvatar(
//                       radius: 15,
//                       backgroundColor:
//                       ShopCubit.get(context).favorites[model.id!]! ? deafultcolor:Colors.grey,
//                       child: const Icon(
//                         Icons.favorite_border,
//                         color: Colors.white,
//                         size: 19.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// );
