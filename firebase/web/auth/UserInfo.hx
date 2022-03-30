package firebase.web.auth;

/**
 * User profile information, visible only to the Firebase project's apps.
 */
extern class UserInfo {
	public var displayName:String;
	public var email:String;
	public var phoneNumber:String;
	public var photoURL:String;
	public var providerId:String;
	public var uid:String;
}
