foo = "Dude, this is foo";

states = {
	walk:	new AI_walk(self),
	idle:	new AI_idle(self),
	run:	new AI_run(self),
	attack: new AI_attack(self)
}

stateMachine = new state_machine(states.idle);

