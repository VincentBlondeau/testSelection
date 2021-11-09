inserting
createExecution: aDictionary withUserId: userId
	| preparedStatement |
	preparedStatement := self
		prepare:
			'INSERT INTO execution (start_date, end_date, type, people_id, execution_attributes, scope, idename, isselectionpluginused, governor) VALUES  (?,?,?,?,?,?,?,?,?) RETURNING id'.
	preparedStatement addBinding: (aDictionary ensureMandatoryFieldAt: #startDate).
	preparedStatement addBinding: (aDictionary ensureMandatoryFieldAt: #endDate).
	preparedStatement addBinding: (aDictionary ensureMandatoryFieldAt: #type).
	preparedStatement addBinding: userId.
	preparedStatement
		addBinding: (aDictionary at: #executionAttributes ifPresent: [ :val | val at: 'mavenAttributes' ifAbsent: [ nil ] ] ifAbsent: [ nil ]) asJsonString.
	preparedStatement addBinding: (aDictionary at: #scope ifAbsent: #'').
	preparedStatement addBinding: (aDictionary at: #ideName ifAbsent: [ #'' ]) asPostgresEscapedSql.
	preparedStatement addBinding: (aDictionary at: #isSelectionPluginUsed ifAbsent: [ false ]).
	preparedStatement addBinding: (aDictionary at: #governor ifAbsent: [ #'' ]) asPostgresEscapedSql.
	^ preparedStatement execute first data first