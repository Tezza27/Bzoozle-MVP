// import the flutter_cache_manager package
// ... other imports

// const storagePath = "gs://bzoozle-f6a97.appspot.com/";
// const userImagePath = "gs://bzoozle-f6a97.appspot.com/userImages";
const venueImagePath = "gs://bzoozle-f6a97.appspot.com/venueImages/";

//https://firebasestorage.googleapis.com/v0/b/bzoozle-f6a97.appspot.com/o/venueImages%2F5bqTsLsenvpmBlaumef9.jpg?alt=media&token=a0166288-53ed-41c7-98f4-5a5a343ab8eb

// String venueImagePath =
//     "https://firebasestorage.googleapis.com/v0/b/bzoozle-f6a97.appspot.com/o/venueImages/";

// class MyCacheManager {
//   final FirebaseStorage _storage = FirebaseStorage.instanceFor(
//     bucket: //venueImagePath,
//   );

//   final defaultCacheManager = DefaultCacheManager();

//   Future<String> cacheImage(String imagePath) async {
//     final Reference ref = _storage.ref().child(imagePath);

//     // Get your image url
//     final imageUrl = await ref.getDownloadURL();

//     // Check if the image file is not in the cache
//     if ((await defaultCacheManager.getFileFromCache(imageUrl))?.file == null) {
//       // Download your image data
//       final imageBytes = await ref.getData(10000000);

//       // Put the image file in the cache
//       await defaultCacheManager.putFile(
//         imageUrl,
//         imageBytes!,
//         fileExtension: "jpg",
//       );
//     }

//     // Return image download url
//     return imageUrl;
//   }
// }
