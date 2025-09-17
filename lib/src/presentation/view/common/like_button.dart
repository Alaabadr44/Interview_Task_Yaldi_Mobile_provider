// // Flutter imports:
// import 'package:flutter/material.dart';

// // Package imports:
// import 'package:flutter_bloc/flutter_bloc.dart';

// // Project imports:
// import '../../../core/config/app_colors.dart';
// import '../../../core/utils/api_info.dart';
// import '../../../domain/entities/favorite_res_model.dart';
// import '../../view_model/blocs/data_bloc/api_data_bloc.dart';
// import '../../view_model/blocs/data_bloc/api_data_event.dart';
// import '../../view_model/blocs/data_bloc/api_data_state.dart';

// class LikeButton extends StatefulWidget {
//   final Function(bool state)? onTap;
//   const LikeButton({
//     super.key,
//     required this.isFavorite,
//     required this.favoriteBloc,
//     required this.id,
//     this.onTap,
//   });
//   // final Color? unselectedColor;
//   final bool isFavorite;
//   final ApiDataBloc<FavoriteResModel> favoriteBloc;
//   final String id;

//   @override
//   State<LikeButton> createState() => _LikeButtonState();
// }

// class _LikeButtonState extends State<LikeButton> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   late ValueNotifier<bool> _isFavorite;

//   // final ValueNotifier _isFavorite
//   String? actionId;
//   @override
//   void initState() {
//     super.initState();
//     _isFavorite = ValueNotifier(widget.isFavorite);
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 200),
//       vsync: this,
//       value: 1.0,
//     );
//   }

//   @override
//   void didUpdateWidget(LikeButton oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.isFavorite != widget.isFavorite) {
//       _isFavorite.value = !_isFavorite.value;
//     }
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _isFavorite.dispose();
//     _controller.dispose();
//   }

//   // bool isPressed = true;

//   favoriteAction(String id) {
//     actionId = id;
//     widget.favoriteBloc.add(
//       ApiStoreData(
//         queryParams: ApiInfo(
//           endpoint: FavoritesService.favRoute,
//           body: {
//             "car_id": id,
//           },
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<ApiDataBloc<FavoriteResModel>, ApiDataState<FavoriteResModel>>(
//       bloc: widget.favoriteBloc,
//       listener: (context, state) {
//         state.maybeMap(
//           successModel: (value) {
//             if (widget.id == actionId) {
//               _isFavorite.value = value.data!.isFavorite!;
//               // widget.
//               actionId = null;
//               widget.onTap?.call(_isFavorite.value);
//             }
//           },
//           error: (value) {
//             if (widget.id == actionId) {
//               _isFavorite.value = !_isFavorite.value;
//               actionId = null;
//               widget.onTap?.call(_isFavorite.value);
//             }
//           },
//           orElse: () {
//             // if (widget.id == actionId) {
//             //   _isFavorite.value = !_isFavorite.value;
//             //   actionId = null;
//             // }
//           },
//         );
//       },
//       builder: (context, state) {
//         return GestureDetector(
//           key: Key('like_button${widget.id}'),
//           onTap: () async {
//             if (state is! ApiDataLoading) {
//               // _isFavorite(!_isFavorite.value);
//               _isFavorite.value = !_isFavorite.value;

//               _controller.reverse().then((value) => _controller.forward());
//               favoriteAction(widget.id);
//               // isPressed = true;
//             }
//           },
//           child: Container(
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: AppColors.baseColor,
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: ScaleTransition(
//               scale: Tween(begin: 0.7, end: 1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut)),
//               child: Center(
//                 child: ValueListenableBuilder(
//                   valueListenable: _isFavorite,
//                   builder: (BuildContext context, dynamic value, Widget? child) {
//                     return Icon(
//                       !_isFavorite.value ? Icons.favorite_border_outlined : Icons.favorite,
//                       color: AppColors.primaryColor,
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
