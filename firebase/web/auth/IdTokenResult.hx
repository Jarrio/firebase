package firebase.web.auth;

typedef IdTokenResult = {
	var authTime:String;
	var claims:ParsedToken;
	var expirationTime:String;
	var issuedAtTime:String;
	var signInProvider:String;
	var signInSecondFactor:String;
	var token:String;
}

typedef ParsedToken = {
	var auth_time:String;
	var exp:String;
	var firebase:{
		var sign_in_provider:String;
		var sign_in_second_factor:String;
	};
	var iat:String;
	var sub:String;
}
