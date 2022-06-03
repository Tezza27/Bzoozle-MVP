import 'dart:io';

import 'package:bzoozle/Providers/user_provider.dart';
import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({Key? key}) : super(key: key);

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? _pickedImage;

  void _pickImage() async {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    final ImagePicker _imagePicker = ImagePicker();
    final ImageSource? _imageSource = await showDialog<ImageSource>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "Gallery or Selfie?",
          style: themeProvider.getTheme.textTheme.headline4,
        ),
        contentPadding: EdgeInsets.zero,
        content: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Do you want to use a photo from your phone gallery or take a selfie?",
                style: themeProvider.getTheme.textTheme.bodyText1,
              ),
            ),
          ),
        ]),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Cancel",
              style: themeProvider.getTheme.textTheme.headline4
                  ?.copyWith(color: orange1),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, ImageSource.gallery);
            },
            child: Text(
              "Gallery",
              style: themeProvider.getTheme.textTheme.headline4
                  ?.copyWith(color: orange1),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, ImageSource.camera);
            },
            child: Text(
              "Selfie",
              style: themeProvider.getTheme.textTheme.headline4
                  ?.copyWith(color: orange1),
            ),
          ),
        ],
      ),
    );
    if (_imageSource != null) {
      final pickedImageFile =
          await _imagePicker.pickImage(source: _imageSource);
      setState(() {
        _pickedImage = File(pickedImageFile!.path);
      });
      userProvider.changeUserImage(File(pickedImageFile!.path));
      //widget.imagePickFn(File(pickedImageFile.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 36.0,
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 60,
            backgroundColor: themeProvider.getTheme.primaryColor,
            child: CircleAvatar(
              radius: 58,
              backgroundImage: _pickedImage != null
                  ? FileImage(_pickedImage!)
                  : const AssetImage('assets/images/portrait_placeholder.png')
                      as ImageProvider,
            ),
          ),
          ElevatedButton.icon(
            onPressed: _pickImage,
            label: const Text("Upload image"),
            icon: const Icon(
              Icons.image_rounded,
              size: 30.0,
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
