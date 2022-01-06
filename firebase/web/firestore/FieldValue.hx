package firebase.web.firestore;

/**
 * Sentinel values that can be used when writing document fields with set() or update().
 */
extern class FieldValue {
	/**
	 * Compares FieldValues for equality.
	 * @param other 
	 * @return Bool
	 */
	public function isEqual(other:FieldValue):Bool;
}
