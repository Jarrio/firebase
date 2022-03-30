package firebase.web.auth;

import js.lib.Promise;

extern class ConfirmationResult {
	public var verificationId:String;
	public function confirm(verification_code:String):Promise<UserCredential>;
}
