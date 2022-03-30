package firebase.web.auth;

import haxe.DynamicAccess;
import haxe.extern.EitherType;

extern class OAuthProvider extends AuthProvider {
	public var customParameters:DynamicAccess<Dynamic>;
	public function credential(params:OAuthCredentialOptions):OAuthCredential;
	public static function credentialFromError(error:Dynamic):OAuthCredential;
	public static function credentialFromJSON(json:EitherType<{}, String>):OAuthCredential;
	public static function credentialFromResult(user_credential:UserCredential):OAuthCredential;
}
