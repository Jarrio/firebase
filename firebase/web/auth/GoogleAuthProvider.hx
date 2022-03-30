package firebase.web.auth;

@:native('GoogleAuthProvider')
extern class GoogleAuthProvider extends OAuthProvider {
	public var scopes:Array<String>;
	public static final GOOGLE_SIGN_IN_METHOD:String;
	public static final PROVIDER_ID:ProviderId;

	public function new();
	public function addScope(scope:String):Void;
	public static function credential(?id_token:String, ?access_token:String):OAuthCredential;
}
