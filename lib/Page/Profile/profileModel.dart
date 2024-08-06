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
    profilepic = json['profilepic'];
    status = json['status'];
    message = json['message'];
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
  late final Null emailVerifiedAt;
  late final String phone;
  late final Null address;
  late final String otp;
  late final int otpVerified;
  late final int verified;
  late final Null url;
  late final Null profilePicture;
  late final String createdAt;
  late final String updatedAt;
  late final Null googleId;
  late final Null facebookId;
  late final String verificationCode;
  late final int userType;
  late final int isBlock;
  late final int isDeleted;
  late final int profilePhotoUrl;

  UserDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = null;
    phone = json['phone'];
    address = null;
    otp = json['otp'];
    otpVerified = json['otp_verified'];
    verified = json['verified'];
    url = null;
    profilePicture = null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    googleId = null;
    facebookId = null;
    verificationCode = json['verification_code'];
    userType = json['user_type'];
    isBlock = json['is_block'];
    isDeleted = json['is_deleted'];
    profilePhotoUrl = json['profile_photo_url'];
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
