import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:instagram_clone/core/colors.dart';
import 'package:instagram_clone/core/widgets/form_helper.dart';
import 'package:instagram_clone/features/add_post/cubit/add_post_cubit.dart';

class PublishPostScreen extends StatelessWidget {
  final AddPostCubit _addPostCubit;
  PublishPostScreen({super.key}) : _addPostCubit = Modular.get<AddPostCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New post',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: FormHelper.button(
            onTap: () {
              _addPostCubit.shareClick();
            },
            label: "Share"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.h),
            height: 250.h,
            child: Center(
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.memory(_addPostCubit.state.image!),
              ),
            ),
          ),
          TextFormField(
            onChanged: (value) {
              _addPostCubit.updateCaption(value);
            },
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                hintText: "Write a caption...",
                isCollapsed: true,
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: AppColors.textGrey,
                  fontSize: 14.sp,
                )),
            maxLines: 4,
            minLines: 3,
          ),
          const Divider(
            color: AppColors.fadeGray,
            thickness: 0.5,
          ),
          const ListTile(
            leading: Icon(
              Bootstrap.geo_alt,
            ),
            title: Text("Add location"),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          const ListTile(
            leading: Icon(
              Bootstrap.person,
            ),
            title: Text("Tag People"),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          const ListTile(
            leading: Icon(
              Bootstrap.music_note_beamed,
            ),
            title: Text("Add music"),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
        ],
      ),
    );
  }
}
