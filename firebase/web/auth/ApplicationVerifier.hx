package firebase.web.auth;

import js.lib.Promise;

extern class ApplicationVerifier {
	public var type:String;
	public function verify():Promise<Void>;
}
