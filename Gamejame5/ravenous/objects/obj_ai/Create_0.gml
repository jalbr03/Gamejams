states = {
	walk:	new AI_walk(),
	idle:	new AI_idle(),
	run:	new AI_run(),
	attack: new AI_attack()
}

stateMachine = new state_machine(states.idle);