accessing
profile
	<script: 'self profile inspect'>
	^ profile ifNil: [ profile := self new createProfile ]