// Bỏ qua các vấn đề từ các lints thường được sử dụng trong tệp này.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'vi';
  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("Giới thiệu"),
        "addToFavorites":
            MessageLookupByLibrary.simpleMessage("Thêm vào mục yêu thích"),
        "addToQueue": MessageLookupByLibrary.simpleMessage("Thêm vào hàng đợi"),
        "appearence": MessageLookupByLibrary.simpleMessage("Giao diện"),
        "bugReport": MessageLookupByLibrary.simpleMessage("Báo cáo lỗi"),
        "buyMeACoffee":
            MessageLookupByLibrary.simpleMessage("Mua cho tôi một ly cà phê"),
        "cancel": MessageLookupByLibrary.simpleMessage("Hủy"),
        "clearPlaybackCache":
            MessageLookupByLibrary.simpleMessage("Xóa bộ nhớ đệm phát lại"),
        "clearPlaybackCacheDialogText": MessageLookupByLibrary.simpleMessage(
            "Bạn có chắc chắn muốn xóa bộ nhớ đệm phát lại không."),
        "confirm": MessageLookupByLibrary.simpleMessage("Xác nhận"),
        "contributors": MessageLookupByLibrary.simpleMessage("Người đóng góp"),
        "country": MessageLookupByLibrary.simpleMessage("Quốc gia"),
        "date": MessageLookupByLibrary.simpleMessage("Ngày"),
        "delete": MessageLookupByLibrary.simpleMessage("Xóa"),
        "deletePlaybackHistory":
            MessageLookupByLibrary.simpleMessage("Xóa lịch sử phát lại"),
        "deletePlaybackHistoryDialogText": MessageLookupByLibrary.simpleMessage(
            "Bạn có chắc chắn muốn xóa Lịch sử phát lại không."),
        "deletePlaybackHistoryText": MessageLookupByLibrary.simpleMessage(
            "Các đề xuất dựa trên Lịch sử phát lại"),
        "deleteSearchHistory":
            MessageLookupByLibrary.simpleMessage("Xóa lịch sử tìm kiếm"),
        "deleteSearchHistoryDialogText": MessageLookupByLibrary.simpleMessage(
            "Bạn có chắc chắn muốn xóa Lịch sử tìm kiếm không."),
        "developer": MessageLookupByLibrary.simpleMessage("Nhà phát triển"),
        "donate": MessageLookupByLibrary.simpleMessage("Ủng hộ"),
        "donateSubtitle":
            MessageLookupByLibrary.simpleMessage("Hỗ trợ phát triển Gyawun"),
        "done": MessageLookupByLibrary.simpleMessage("Xong"),
        "download": MessageLookupByLibrary.simpleMessage("Tải xuống"),
        "downloadQuality":
            MessageLookupByLibrary.simpleMessage("Chất lượng tải xuống"),
        "downloads": MessageLookupByLibrary.simpleMessage("Tải xuống"),
        "enableEqualizer":
            MessageLookupByLibrary.simpleMessage("Bật Bộ cân bằng"),
        "enablePlaybackCache":
            MessageLookupByLibrary.simpleMessage("Bật bộ nhớ đệm phát lại"),
        "enablePlaybackHistory":
            MessageLookupByLibrary.simpleMessage("Bật lịch sử phát lại"),
        "enablePlaybackHistoryText": MessageLookupByLibrary.simpleMessage(
            "Các đề xuất dựa trên Lịch sử phát lại"),
        "enableSearchHistory":
            MessageLookupByLibrary.simpleMessage("Bật lịch sử tìm kiếm"),
        "equalizer": MessageLookupByLibrary.simpleMessage("Bộ cân bằng"),
        "favorites": MessageLookupByLibrary.simpleMessage("Yêu thích"),
        "featureRequest":
            MessageLookupByLibrary.simpleMessage("Yêu cầu tính năng"),
        "gyawun": MessageLookupByLibrary.simpleMessage("Gyawun"),
        "high": MessageLookupByLibrary.simpleMessage("Cao"),
        "history": MessageLookupByLibrary.simpleMessage("Lịch sử"),
        "home": MessageLookupByLibrary.simpleMessage("Trang chủ"),
        "homescreenProvider":
            MessageLookupByLibrary.simpleMessage("Nhà cung cấp màn hình chính"),
        "jhelumCorp": MessageLookupByLibrary.simpleMessage("Jhelum Corp"),
        "languages": MessageLookupByLibrary.simpleMessage("Ngôn ngữ"),
        "loudnessAndEqualizer":
            MessageLookupByLibrary.simpleMessage("Âm lượng và Bộ cân bằng"),
        "loudnessEnhancer":
            MessageLookupByLibrary.simpleMessage("Bộ tăng cường âm lượng"),
        "low": MessageLookupByLibrary.simpleMessage("Thấp"),
        "madeInKashmir":
            MessageLookupByLibrary.simpleMessage("Sản xuất tại Kashmir"),
        "materialColors": MessageLookupByLibrary.simpleMessage("Màu vật liệu"),
        "medium": MessageLookupByLibrary.simpleMessage("Trung bình"),
        "musicAndPlayback":
            MessageLookupByLibrary.simpleMessage("Âm nhạc và Phát lại"),
        "name": MessageLookupByLibrary.simpleMessage("Tên"),
        "no": MessageLookupByLibrary.simpleMessage("Không"),
        "nothingInHere":
            MessageLookupByLibrary.simpleMessage("Không có gì ở đây"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "organisation": MessageLookupByLibrary.simpleMessage("Tổ chức"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Phương thức thanh toán"),
        "pitchBlack": MessageLookupByLibrary.simpleMessage("Đen tuyền"),
        "playAll": MessageLookupByLibrary.simpleMessage("Phát tất cả"),
        "playNext": MessageLookupByLibrary.simpleMessage("Phát tiếp theo"),
        "playlists": MessageLookupByLibrary.simpleMessage("Danh sách phát"),
        "primaryColor": MessageLookupByLibrary.simpleMessage("Màu chính"),
        "recentlyPlayed": MessageLookupByLibrary.simpleMessage("Phát gần đây"),
        "recommended": MessageLookupByLibrary.simpleMessage("Đề xuất"),
        "removeFromFavorites":
            MessageLookupByLibrary.simpleMessage("Xóa khỏi mục yêu thích"),
        "rightToLeft": MessageLookupByLibrary.simpleMessage("Phải sang trái"),
        "saved": MessageLookupByLibrary.simpleMessage("Đã lưu"),
        "searchGyawun": MessageLookupByLibrary.simpleMessage("Tìm kiếm Gyawun"),
        "searchProvider":
            MessageLookupByLibrary.simpleMessage("Nhà cung cấp tìm kiếm"),
        "searchSettings":
            MessageLookupByLibrary.simpleMessage("Cài đặt tìm kiếm"),
        "select": MessageLookupByLibrary.simpleMessage("Chọn"),
        "selectLanguage": MessageLookupByLibrary.simpleMessage("Chọn ngôn ngữ"),
        "serviceProviders":
            MessageLookupByLibrary.simpleMessage("Nhà cung cấp dịch vụ"),
        "settings": MessageLookupByLibrary.simpleMessage("Cài đặt"),
        "sheikhhaziq": MessageLookupByLibrary.simpleMessage("Sheikh Haziq"),
        "sleepTimer": MessageLookupByLibrary.simpleMessage("Hẹn giờ tắt"),
        "songs": MessageLookupByLibrary.simpleMessage("bài hát"),
        "sourceCode": MessageLookupByLibrary.simpleMessage("Mã nguồn"),
        "streamingQuality":
            MessageLookupByLibrary.simpleMessage("Chất lượng phát trực tuyến"),
        "supportMeOnKofi":
            MessageLookupByLibrary.simpleMessage("Ủng hộ tôi trên Ko-fi"),
        "telegram": MessageLookupByLibrary.simpleMessage("Telegram"),
        "themeMode": MessageLookupByLibrary.simpleMessage("Chế độ chủ đề"),
        "title": MessageLookupByLibrary.simpleMessage("Tiêu đề"),
        "version": MessageLookupByLibrary.simpleMessage("Phiên bản"),
        "yes": MessageLookupByLibrary.simpleMessage("Có"),
        "youtubeDownloadQuality": MessageLookupByLibrary.simpleMessage(
            "Chất lượng tải xuống YouTube"),
        "youtubeStreamingQuality": MessageLookupByLibrary.simpleMessage(
            "Chất lượng phát trực tuyến YouTube")
      };
}
