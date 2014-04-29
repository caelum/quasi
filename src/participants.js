var participants = [
	{
		name: "Fulano da Silva",
		email: "fulano@quasi.com",
		website: "#",
		plus: "101434410922232158430",
		description: "Nam varius commodo est, nec pharetra mauris dictum ac. Aenean in ipsum tellus. Mauris euismod massa nec condimentum blandit. Aenean vitae fringilla libero. Vestibulum non tortor massa. Praesent suscipit mollis tellus, non pharetra leo suscipit imperdiet. Aenean nec purus arcu."
	},

	{
		name: "Cicrano do Santos",
		email: "cicrano@quasi.com",
		website: "#",
		plus: "101434410922232158430",
		description: "Nam varius commodo est, nec pharetra mauris dictum ac. Aenean in ipsum tellus. Mauris euismod massa nec condimentum blandit. Aenean vitae fringilla libero. Vestibulum non tortor massa. Praesent suscipit mollis tellus, non pharetra leo suscipit imperdiet. Aenean nec purus arcu."
	}
]

var crypto = require('crypto')

function gravatar_url_for(email){
	var md5sum = crypto.createHash('md5')
	md5sum.update(email)
	return 'http://gravatar.com/avatar/' + md5sum.digest('hex')
}

function parsedParticipants() {
	participants.forEach(function(person){
		person.img = gravatar_url_for(person.email)
		delete person.email
	}, participants)

	return participants
}

module.exports = parsedParticipants()
