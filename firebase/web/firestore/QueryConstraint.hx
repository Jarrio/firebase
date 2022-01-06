package firebase.web.firestore;

import firebase.web.firestore.identifiers.QueryConstraintType;

@:jsRequire('firebase/firestore')
extern class QueryConstraint {
	public var type:QueryConstraintType;
}
