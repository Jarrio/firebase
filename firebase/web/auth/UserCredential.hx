package firebase.web.auth;

typedef UserCredential = {
	var operationType:Dynamic;
	var providerId:String;
	var user:User;
}

enum abstract OperationType(String) {
	var LINK;
	var REAUTHENTICATE;
	var SIGN_IN;
}
