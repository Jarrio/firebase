package firebase.web.auth;

extern class ActionCodeURL {
	var apiKey:String;
	var code:String;
	var continueUrl:String;
	var languageCode:String;
	var operation:String;
	var tenantId:String;
	public static function parseLink(link:String):ActionCodeURL;
}
