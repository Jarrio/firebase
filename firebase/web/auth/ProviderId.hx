package firebase.web.auth;

enum abstract ProviderId(String) {
	var FACEBOOK = "facebook.com";
	var GITHUB = "github.com";
	var GOOGLE = "google.com";
	var PASSWORD = "password";
	var PHONE = "phone";
	var TWITTER = "twitter.com";
}
