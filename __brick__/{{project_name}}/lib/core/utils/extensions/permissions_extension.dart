import 'package:{{project_name}}/core/utils/enums/permissions_enum.dart';
import 'package:permission_handler/permission_handler.dart';

extension PermissionsExtensionGranted on PermissionType {
  Future<bool> get granted async {
    switch (this) {
      case PermissionType.bluetooth:
        return await Permission.bluetooth.request() == PermissionStatus.granted;
      case PermissionType.calendar:
        return await Permission.calendar.request() == PermissionStatus.granted;
      case PermissionType.camera:
        return await Permission.camera.request() == PermissionStatus.granted;
      case PermissionType.contacts:
        return await Permission.contacts.request() == PermissionStatus.granted;
      case PermissionType.location:
        return await Permission.location.request() == PermissionStatus.granted;
      case PermissionType.microphone:
        return await Permission.microphone.request() ==
            PermissionStatus.granted;
      case PermissionType.notification:
        return await Permission.notification.request() ==
            PermissionStatus.granted;
      case PermissionType.photos:
        return await Permission.photos.request() == PermissionStatus.granted;
      case PermissionType.reminders:
        return await Permission.reminders.request() == PermissionStatus.granted;
      case PermissionType.storage:
        return await Permission.storage.request() == PermissionStatus.granted;
      default:
        return false;
    }
  }
}

// extension PermissionsExtensionStatus on PermissionType {
//   Permission get permission async {
//     switch (this) {
//       case PermissionType.bluetooth:
//         return Permission.bluetooth;
//       case PermissionType.calendar:
//         return await Permission.calendar.status;
//       case PermissionType.camera:
//         return await Permission.camera.status;
//       case PermissionType.contacts:
//         return await Permission.contacts.status;
//       case PermissionType.location:
//         return await Permission.location.status;
//       case PermissionType.microphone:
//         return await Permission.microphone.status;
//       case PermissionType.notification:
//         return await Permission.notification.status;
//       case PermissionType.photos:
//         return await Permission.photos.status;
//       case PermissionType.reminders:
//         return await Permission.reminders.status;
//       case PermissionType.storage:
//         return await Permission.storage.status;
//       default:
//         return Future<PermissionStatus>();
//     }
//   }
// }
