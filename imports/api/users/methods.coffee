import SimpleSchema from 'simpl-schema'

import { Validators } from '/imports/util/validators.coffee'

import { ProfileMethods } from './profile.coffee'
import { VacationMethods } from './vacation.coffee'
import { PermissionMethods } from './permissions.coffee'
import { AvailabilityMethods } from './availability.coffee'

export Methods =

	profile: ProfileMethods

	availability: AvailabilityMethods

	vacation: VacationMethods

	permissions: PermissionMethods

	picture: remove: new ValidatedMethod
		name: 'Meteor.users.methods.picture.remove'
		validate: ->
		run: -> Pictures.remove userId: Meteor.userId()

	remove: new ValidatedMethod
		name: 'Meteor.users.methods.remove'
		validate: ->
		run: (args) -> Meteor.users.remove Meteor.userId() if Meteor.isServer
