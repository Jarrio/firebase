package firebase.web.auth;

extern class AuthCredential {
	public var providerId:ProviderId;
	public var signInMethod:SignInMethod;
	public function toJSON():{};
}

enum abstract SignInMethod(String) {
	var EMAIL_LINK = "emailLink";
	var EMAIL_PASSWORD = "password";
	var FACEBOOK = "facebook.com";
	var GITHUB = "github.com";
	var GOOGLE = "google.com";
	var PHONE = "phone";
	var TWITTER = "twitter.com";
}
