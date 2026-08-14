
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBottomSheet {
  static Future<void> show(BuildContext context, Function(File?) onPicked) async {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Material(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "اختر صورة",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildOption(
                      context,
                      icon: Icons.camera_alt,
                      label: "الكاميرا",
                      color: Colors.blue,
                      onTap: () async {
                        final picked = await ImagePicker().pickImage(source: ImageSource.camera, imageQuality: 70);
                        if(picked != null){
                          Navigator.pop(context);
                          onPicked(File(picked.path.toString() ??''));
                        }

                      },
                    ),
                    _buildOption(
                      context,
                      icon: Icons.photo_library,
                      label: "المعرض",
                      color: Colors.green,
                      onTap: () async {
                        final picked = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 70);
                        if(picked != null){
                          Navigator.pop(context);
                          onPicked(File(picked.path.toString() ??''));
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }

  static Widget _buildOption(BuildContext context,
      {required IconData icon,
        required String label,
        required Color color,
        required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color.withOpacity(0.1),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}