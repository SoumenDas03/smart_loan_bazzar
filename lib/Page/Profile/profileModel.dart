class ProfileDetailsModel {
  ProfileDetailsModel({
    required this.userDetails,
    required this.profilepic,
    required this.status,
    required this.message,
  });

  late final UserDetails userDetails;
  late final String profilepic;
  late final int status;
  late final String message;

  ProfileDetailsModel.fromJson(Map<String, dynamic> json) {
    userDetails = UserDetails.fromJson(json['userDetails']);
    profilepic =
        json['profilepic'] ?? ''; // Provide a default empty string if null
    status = json['status'] ?? 0; // Provide a default value if null
    message = json['message'] ?? ''; // Provide a default empty string if null
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userDetails'] = userDetails.toJson();
    _data['profilepic'] = profilepic;
    _data['status'] = status;
    _data['message'] = message;
    return _data;
  }
}

class UserDetails {
  UserDetails({
    required this.id,
    required this.name,
    required this.email,
    this.emailVerifiedAt,
    required this.phone,
    this.address,
    required this.otp,
    required this.otpVerified,
    required this.verified,
    this.url,
    this.profilePicture,
    required this.createdAt,
    required this.updatedAt,
    this.googleId,
    this.facebookId,
    required this.verificationCode,
    required this.userType,
    required this.isBlock,
    required this.isDeleted,
    required this.profilePhotoUrl,
  });

  late final int id;
  late final String name;
  late final String email;
  late final String? emailVerifiedAt;
  late final String phone;
  late final String? address;
  late final String otp;
  late final int otpVerified;
  late final int verified;
  late final String? url;
  late final String? profilePicture;
  late final String createdAt;
  late final String updatedAt;
  late final String? googleId;
  late final String? facebookId;
  late final String verificationCode;
  late final int userType;
  late final int isBlock;
  late final int isDeleted;
  late final String profilePhotoUrl;

  UserDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0; // Default int value
    name = json['name'] ?? ''; // Default String value
    email = json['email'] ?? ''; // Default String value
    emailVerifiedAt = json['email_verified_at'];
    phone = json['phone'] ?? ''; // Default String value
    address = json['address'];
    otp = json['otp'] ?? ''; // Default String value
    otpVerified = json['otp_verified'] ?? 0; // Default int value
    verified = json['verified'] ?? 0; // Default int value
    url = json['url'];
    profilePicture = json['profile_picture'];
    createdAt = json['created_at'] ?? ''; // Default String value
    updatedAt = json['updated_at'] ?? ''; // Default String value
    googleId = json['google_id'];
    facebookId = json['facebook_id'];
    verificationCode = json['verification_code'] ?? ''; // Default String value
    userType = json['user_type'] ?? 0; // Default int value
    isBlock = json['is_block'] ?? 0; // Default int value
    isDeleted = json['is_deleted'] ?? 0; // Default int value
    profilePhotoUrl = json['profile_photo_url'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['email_verified_at'] = emailVerifiedAt;
    _data['phone'] = phone;
    _data['address'] = address;
    _data['otp'] = otp;
    _data['otp_verified'] = otpVerified;
    _data['verified'] = verified;
    _data['url'] = url;
    _data['profile_picture'] = profilePicture;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['google_id'] = googleId;
    _data['facebook_id'] = facebookId;
    _data['verification_code'] = verificationCode;
    _data['user_type'] = userType;
    _data['is_block'] = isBlock;
    _data['is_deleted'] = isDeleted;
    _data['profile_photo_url'] = profilePhotoUrl;
    return _data;
  }
}
