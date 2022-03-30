package firebase.web.auth;

import js.lib.Promise;
import js.lib.Function;
import firebase.web.app.FirebaseApp;

@:jsRequire('firebase/auth')
extern class Auth {
	public var app:FirebaseApp;
	public var config:AuthConfig;
	public var currentUser:User;
	public var emulatorConfig:EmulatorConfig;
	public var languageCode:String;
	public var name:String;
	public var settings:AuthSettings;
	public var tenantId:String;

	/**
	 * Adds an observer for changes to the user's sign-in state.
	 */
	public function onAuthStateChanged(next_or_observer:NextOrObserver<User>, ?error:Function, ?completed:Function):Void->Void;

	/**
	 * Adds an observer for changes to the signed-in user's ID token.
	 * @param next_or_observer 
	 * @param error 
	 * @param completed 
	 */
	public function onIdTokenChanegd(next_or_observer:NextOrObserver<User>, ?error:Function, ?completed:Function):Void->Void;

	/**
	 * Changes the type of persistence on the Auth instance.
	 * @param persistence 
	 */
	public function setPersistance(persistence:Persistence):Promise<Void>;

	/**
	 * Signs out the current user.
	 */
	public function signOut():Promise<Void>;

	/**
	 * Asynchronously sets the provided user as Auth.currentUser on the Auth instance.
	 */
	public function updateCurrentUser(user:User):Promise<Void>;

	/**
	 * Sets the current language to the default device/browser preference.
	 */
	public function useDeviceLanguage():Void;

	/**
	 * Applies a verification code sent to the user by email or other out-of-band mechanism.
	 * @param auth 
	 * @param oob_code 
	 * @return Promise<Void>
	 */
	public static function applyActionCode(auth:Auth, oob_code:String):Promise<Void>;

	/**
	 * Applies a verification code sent to the user by email or other out-of-band mechanism.
	 * @param auth 
	 * @param oob_code 
	 * @return Promise<Void>
	 */
	public static function checkActionCode(auth:Auth, oob_code:String):Promise<ActionCodeInfo>;

	/**
	 * Completes the password reset process, given a confirmation code and new password.
	 * @param auth 
	 * @param oob_code 
	 * @param new_password 
	 * @return Promise<Void>
	 */
	public static function confirmPasswordReset(auth:Auth, oob_code:String, new_password:String):Promise<Void>;

	public static function connectAuthEmulator(auth:Auth, url:String, options:{disableWarnings:Bool}):Void;
	public static function createUserWithEmailAndPassword(auth:Auth, email:String, password:String):Promise<UserCredential>;
	public static function deleteUser(user:User):Promise<Void>;
	public static function fetchSignInMethodsForEmail(auth:Auth, email:String):Promise<Array<String>>;
	public static function getAdditionalUserInfo(user:UserCredential):AdditionalUserInfo;
	public static function getAuth(?app:FirebaseApp):Auth;

	/**
	 * Returns a JSON Web Token (JWT) used to identify the user to a Firebase service.
	 * Returns the current token if it has not expired or if it will not expire in the next five minutes. Otherwise, this will refresh the token and return a new one.
	 */
	public static function getIdToken(user:User, force_refresh:Bool):Promise<String>;

	/**
	 * Returns a JSON Web Token (JWT) used to identify the user to a Firebase service.
	 * Returns the current token if it has not expired or if it will not expire in the next five minutes. Otherwise, this will refresh the token and return a new one.
	 */
	public static function getIdTokenResult(user:User, force_refresh:Bool):Promise<IdTokenResult>;

	public static function getMultiFactorResolver(auth:Auth, error:Dynamic):Dynamic;
	public static function getReactNativePersistenc(storage:Dynamic):Persistence;

	/**
	 * https://firebase.google.com/docs/reference/js/auth.md?authuser=0#getredirectresult
	 * @param auth 
	 * @param resolver 
	 * @return Promise<UserCredential>
	 */
	public static function getRedirectResult(auth:Auth, ?resolver:Function):Promise<UserCredential>;

	public static function initializeAuth(app:FirebaseApp, ?deps:Dynamic):Auth;

	/**
	 * Checks if an incoming link is a sign-in with email link suitable for signInWithEmailLink().
	 * @param auth 
	 * @param email_link 
	 * @return Bool
	 */
	public static function isSignInWithEmailLink(auth:Auth, email_link:String):Bool;

	public static function linkWithCredential(user:User, credential:AuthCredential):Promise<UserCredential>;
	public static function linkWithPhoneNumber(user:User, phone_number:String, applicationVerifier:ApplicationVerifier):Promise<ConfirmationResult>;
	public static function linkWithPopup(user:User, provider:AuthProvider, ?resolver:Dynamic):Promise<UserCredential>;
	public static function linkWithRedirect(user:User, provider:AuthProvider, ?resolver:Dynamic):Promise<Void>;
	public static function multiFactor(user:User):Dynamic;
	public static function parseActionCodeURL(link:String):ActionCodeURL;
	public static function reauthenticateWithCredential(user:User, credential:AuthCredential):Promise<AuthCredential>;
	public static function reauthenticateWithPhoneNumber(user:User, phone_number:String, app_verifier:Dynamic):Promise<ConfirmationResult>;
	public static function reauthenticateWithPopup(user:User, phone_number:String, resolver:Dynamic):Promise<UserCredential>;
	public static function reauthenticateWithRedirect(user:User, phone_number:String, resolver:Dynamic):Promise<Void>;
	public static function reload(user:User):Promise<Void>;
	public static function sendEmailVerification(user:User, ?action_code_settions:ActionCodeSettings):Promise<Void>;
	public static function sendPasswordResetEmail(user:User, email:String, ?action_code_settions:ActionCodeSettings):Promise<Void>;
	public static function sendSignInLinkToEmail(user:User, email:String, action_code_settions:ActionCodeSettings):Promise<Void>;
	public static function signInAnonymously(auth:Auth):Promise<UserCredential>;
	public static function signInWithCredential(auth:Auth, credential:AuthCredential):Promise<UserCredential>;
	public static function signInWithCustomToken(auth:Auth, token:String):Promise<UserCredential>;
	public static function signInWithEmailAndPassword(auth:Auth, email:String, password:String):Promise<UserCredential>;
	public static function signInWithEmailLink(auth:Auth, email:String, email_link:String):Promise<UserCredential>;
	public static function signInWithPhoneNumber(auth:Auth, phone_number:String, applicationVerifier:ApplicationVerifier):Promise<ConfirmationResult>;
	public static function signInWithPopup(auth:Auth, provider:AuthProvider, ?resolver:Dynamic):Promise<UserCredential>;
	public static function signInWithRedirect(auth:Auth, provider:AuthProvider, ?resolver:Dynamic):Promise<Void>;
	public static function signOut(auth:Auth):Promise<Void>;
	public static function unlink(user:User, provider_id:ProviderId):Promise<User>;
	public static function updateCurrentUser(auth:Auth, user:User):Promise<Void>;
	public static function updateEmail(user:User, email:String):Promise<Void>;
	public static function updatePassword(user:User, password:String):Promise<Void>;
	public static function updatePhoneNumber(user:User, phone_credential:AuthCredential):Promise<Void>;
	public static function updateProfile(user:User, profile:{?displayName:String, ?photoURL:String}):Promise<Void>;
	public static function useDeviceLanguage(auth:Auth):Void;
	public static function verifyPasswordResetCode(auth:Auth, code:String):Promise<String>;
}

typedef AuthConfig = {
	var apiHost:String;
	var apiKey:String;
	var apiScheme:String;
	var apiDomain:String;
	var sdkClientVersion:String;
	var tokenApiHost:String;
}

typedef EmulatorConfig = {
	var host:String;
	var options:{
		final disableWarnings:Bool;
	}
	var port:Int;
	var protocol:String;
}

typedef AuthSettings = {
	/**
	 * When set, this property disables app verification for the purpose of testing phone authentication. For this property to take effect, it needs to be set before rendering a reCAPTCHA app verifier. When this is disabled, a mock reCAPTCHA is rendered instead. This is useful for manual testing during development or for automated integration tests.In order to use this feature, you will need to whitelist your phone number via the Firebase Console.The default value is false (app verification is enabled).
	 */
	var appVerificationDisabledForTesting:Bool;
}

typedef Persistence = {
	var type:PersistenceType;
}

typedef ActionCodeInfo = {
	var data:{
		var email:String;
		var previousEmail:String;
		var multiFactorInfo:MultiFactorInfo;
	};
	var operation:ActionCodeOperation;
}

typedef MultiFactorInfo = {
	var displayName:String;
	var enrollmentId:String;
	var factorId:Dynamic;
	var uid:String;
}

typedef ActionCodeSettings = {
	var android:{
		@:optional var installApp:Bool;
		@:optional var minimumVersion:String;
		var packageName:String;
	}
	var dynamicLinkDomain:String;
	var handleCodeInApp:Bool;
	var iOS:{
		var bundleId:String;
	}
	var url:String;
}

enum abstract ActionCodeOperation(String) {
	var EMAIL_SIGNIN;
	var PASSWORD_RESET;
	var RECOVER_EMAIL;
	var REVERT_SECOND_FACTOR_ADDITION;
	var VERIFY_AND_CHANGE_EMAIL;
	var VERIFY_EMAIL;
}

enum abstract PersistenceType(String) {
	/**
	 * Used for in-memory, or no persistence.
	 */
	var NONE;

	/**
	 * Used for long term persistence such as localStorage
	 */
	var LOCAL;

	/**
	 * Used for temporary persistence such as
	 */
	var SESSION;
}
