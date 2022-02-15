package firebase.web.firestore;

@:jsRequire('firebase/firestore', 'Timestamp')
extern class Timestamp {
	public var seconds:Float;
	public var nanoseconds:Float;
	function new();
	/**
	 * Returns true if this Timestamp is equal to the provided one.
	 * @param other 
	 * @return Bool
	 */
	public function isEqual(other:Timestamp):Bool;
	public function toDate():Date;
	public function toMillis():Float;
	public static function fromDate(date:Date):Timestamp;
	public static function now():Timestamp;
}