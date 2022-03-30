package firebase.web.auth;

import tink.hxx.StringAt;

extern class OAuthCredential extends AuthCredential {
	public var accessToken:StringAt;
	public var idToken:String;
	public var secret:String;

	public function toJSON():{};
}
