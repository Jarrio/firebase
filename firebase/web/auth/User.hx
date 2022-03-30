package firebase.web.auth;

import js.lib.Promise;

/**
 * A user account.
 */
extern class User extends UserInfo {
	/**
	 * Whether the email has been verified with sendEmailVerification() and applyActionCode().
	 */
	public var emailVerified:Bool;

	/**
	 * Whether the user is authenticated using the ProviderId.ANONYMOUS provider.
	 */
	public var isAnonymous:Bool;

	/**
	 * Additional metadata around user creation and sign-in times.
	 */
	public var metadata:UserMetadata;

	/**
	 * Additional per provider such as displayName and profile information.
	 */
	public var providerData:Array<UserInfo>;

	/**
	 * Refresh token used to reauthenticate the user. Avoid using this directly and prefer User.getIdToken() to refresh the ID token instead.
	 */
	public var refreshToken:String;

	/**
	 * The user's tenant ID.
	 */
	public var tenantId:String;

	/**
	 * Deletes and signs out the user.
	 * @return Promise<Void>
	 */
	public function delete():Promise<Void>;

	/**
	 * Returns a JSON Web Token (JWT) used to identify the user to a Firebase service.
	 * Returns the current token if it has not expired or if it will not expire in the next five minutes. Otherwise, this will refresh the token and return a new one.
	 * @param force_refresh 
	 * @return Promise<String>
	 */
	public function getIdToken(force_refresh:Bool):Promise<String>;

	/**
	 * Returns a JSON Web Token (JWT) used to identify the user to a Firebase service.
	 * Returns the current token if it has not expired or if it will not expire in the next five minutes. Otherwise, this will refresh the token and return a new one.
	 * @param force_refresh 
	 * @return Promise<String>
	 */
	public function getIdTokenResult(force_refresh:Bool):Promise<IdTokenResult>;

	public function reload():Promise<Void>;
	public function toJSON():{};
}

typedef UserMetadata = {
	var creationTime:String;
	var lastSignInTime:String;
}
