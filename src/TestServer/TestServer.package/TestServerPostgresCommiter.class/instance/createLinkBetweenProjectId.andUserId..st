inserting
createLinkBetweenProjectId: eclipseProjectId andUserId: userId
	^ self
		findOrCreateSelectQuery:
			'SELECT users_id FROM users_eclipse_projects WHERE users_id = ''' , userId asString , ''' AND eclipse_projects_id = '''
				, eclipseProjectId asString , ''''
		insertQuery:
			'INSERT INTO users_eclipse_projects (users_id,eclipse_projects_id) VALUES (''' , userId asString , ''',''' , eclipseProjectId asString
				, ''') returning users_id'