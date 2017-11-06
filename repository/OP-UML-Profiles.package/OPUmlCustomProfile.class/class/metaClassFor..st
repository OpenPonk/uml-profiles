accessing
metaClassFor: anElement
	"
	metaClassMap := nil
	"

	metaClassMap
		ifNil: [ metaClassMap := (self profile ownedStereotype collect: [ :each | each name -> each ])
				asDictionary ].
	^ metaClassMap at: anElement umlClassName