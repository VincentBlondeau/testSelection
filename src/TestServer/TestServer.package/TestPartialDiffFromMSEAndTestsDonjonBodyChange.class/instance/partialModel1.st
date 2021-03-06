as yet unclassified
partialModel1
^'(
	(FAMIX.Inheritance (id: 1)
		(subclass (ref: 116))
		(superclass (ref: 168)))
	(FAMIX.Method (id: 2)
		(name ''getTalker'')
		(declaredType (ref: 98))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 135))
		(signature ''getTalker()''))
	(FAMIX.Class (id: 3)
		(name ''AutoCloseable'')
		(container (ref: 149))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Method (id: 4)
		(name ''Action'')
		(isStub true)
		(kind ''constructor'')
		(modifiers ''public'')
		(parentType (ref: 164))
		(signature ''Action(java.lang.String, game.Game)''))
	(FAMIX.Namespace (id: 5)
		(name ''util'')
		(isStub true)
		(parentScope (ref: 66)))
	(FAMIX.Invocation (id: 6)
		(candidates (ref: 111))
		(sender (ref: 147))
		(signature ''this.game.getCurrentRoom().addItem(new GoldPurse("Bourse de " + target.getName(),target.getGold()))''))
	(FAMIX.Inheritance (id: 7)
		(subclass (ref: 43))
		(superclass (ref: 42)))
	(FAMIX.Inheritance (id: 8)
		(subclass (ref: 116))
		(superclass (ref: 42)))
	(FAMIX.Invocation (id: 9)
		(candidates (ref: 97))
		(sender (ref: 120))
		(signature ''game.getCurrentRoom().hasMonsters()''))
	(FAMIX.ParameterizedType (id: 10)
		(name ''List<Monster>'')
		(arguments (ref: 53))
		(container (ref: 5))
		(isStub true)
		(modifiers ''public'')
		(parameterizableClass (ref: 51)))
	(FAMIX.Method (id: 11)
		(name ''getStrengthPoints'')
		(declaredType (ref: 28))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 35))
		(signature ''getStrengthPoints()''))
	(FAMIX.LocalVariable (id: 12)
		(name ''targetStr'')
		(declaredType (ref: 28))
		(isStub true)
		(parentBehaviouralEntity (ref: 147)))
	(FAMIX.Class (id: 13)
		(name ''Attack'')
		(container (ref: 129))
		(modifiers ''public'')
		(sourceAnchor (ref: 142)))
	(FAMIX.JavaSourceLanguage (id: 14))
	(FAMIX.Invocation (id: 15)
		(candidates (ref: 37))
		(sender (ref: 147))
		(signature ''target.addHealthPoints(-playerStr)''))
	(FAMIX.FileAnchor (id: 16)
		(element (ref: 125))
		(endLine 77)
		(fileName ''D:/ProjectsOO/projetEtudiant/src/action/Attack.java'')
		(startLine 69))
	(FAMIX.Method (id: 17)
		(name ''getGame'')
		(declaredType (ref: 135))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 164))
		(signature ''getGame()''))
	(FAMIX.PrimitiveType (id: 18)
		(name ''boolean'')
		(container (ref: 160))
		(isStub true)
		(modifiers ''package''))
	(FAMIX.Inheritance (id: 19)
		(subclass (ref: 164))
		(superclass (ref: 42)))
	(FAMIX.Namespace (id: 20)
		(name ''room'')
		(isStub true))
	(FAMIX.Invocation (id: 21)
		(candidates (ref: 75))
		(receiver (ref: 58))
		(sender (ref: 147))
		(signature ''game.getCurrentRoom()''))
	(FAMIX.Inheritance (id: 22)
		(subclass (ref: 63))
		(superclass (ref: 150)))
	(FAMIX.Parameter (id: 23)
		(name ''o'')
		(declaredType (ref: 42))
		(parentBehaviouralEntity (ref: 125)))
	(FAMIX.Access (id: 24)
		(accessor (ref: 147))
		(variable (ref: 58)))
	(FAMIX.Invocation (id: 25)
		(candidates (ref: 37))
		(sender (ref: 147))
		(signature ''player.addHealthPoints(-targetStr)''))
	(FAMIX.Invocation (id: 26)
		(candidates (ref: 139))
		(sender (ref: 147))
		(signature ''target.getName()''))
	(FAMIX.ParameterizedType (id: 27)
		(name ''Iterable<E>'')
		(arguments (ref: 115))
		(container (ref: 149))
		(isStub true)
		(modifiers ''public'')
		(parameterizableClass (ref: 94)))
	(FAMIX.PrimitiveType (id: 28)
		(name ''int'')
		(container (ref: 160))
		(isStub true)
		(modifiers ''package''))
	(FAMIX.Invocation (id: 29)
		(candidates (ref: 11))
		(sender (ref: 147))
		(signature ''player.getStrengthPoints()''))
	(FAMIX.Invocation (id: 30)
		(candidates (ref: 59))
		(sender (ref: 147))
		(signature ''player.isDead()''))
	(FAMIX.Class (id: 31)
		(name ''Closeable'')
		(container (ref: 96))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Invocation (id: 32)
		(candidates (ref: 49))
		(sender (ref: 147))
		(signature ''System.out.println(talker.monsterHitTxt(target.getName(),playerStr))''))
	(FAMIX.Invocation (id: 33)
		(candidates (ref: 139))
		(sender (ref: 147))
		(signature ''target.getName()''))
	(FAMIX.Access (id: 34)
		(accessor (ref: 120))
		(variable (ref: 58)))
	(FAMIX.Class (id: 35)
		(name ''GameCharacter'')
		(container (ref: 118))
		(isStub true)
		(modifiers ''public'' ''abstract''))
	(FAMIX.Method (id: 36)
		(name ''getPlayer'')
		(declaredType (ref: 70))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 135))
		(signature ''getPlayer()''))
	(FAMIX.Method (id: 37)
		(name ''addHealthPoints'')
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 35))
		(signature ''addHealthPoints(int)''))
	(FAMIX.Inheritance (id: 38)
		(subclass (ref: 110))
		(superclass (ref: 42)))
	(FAMIX.Parameter (id: 39)
		(name ''pName'')
		(declaredType (ref: 116))
		(parentBehaviouralEntity (ref: 165)))
	(FAMIX.Class (id: 40)
		(name ''Flushable'')
		(container (ref: 96))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Class (id: 41)
		(name ''Appendable'')
		(container (ref: 149))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Class (id: 42)
		(name ''Object'')
		(container (ref: 149))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Class (id: 43)
		(name ''Item'')
		(container (ref: 141))
		(isStub true)
		(modifiers ''public'' ''abstract''))
	(FAMIX.Inheritance (id: 44)
		(subclass (ref: 63))
		(superclass (ref: 41)))
	(FAMIX.Invocation (id: 45)
		(candidates (ref: 156))
		(sender (ref: 147))
		(signature ''new GoldPurse("Bourse de " + target.getName(),target.getGold())''))
	(FAMIX.Invocation (id: 46)
		(candidates (ref: 62))
		(sender (ref: 147))
		(signature ''talker.monsterHitTxt(target.getName(),playerStr)''))
	(FAMIX.Class (id: 47)
		(name ''GoldPurse'')
		(container (ref: 141))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Method (id: 48)
		(name ''askTargetTxt'')
		(declaredType (ref: 116))
		(isStub true)
		(modifiers ''public'' ''abstract'')
		(parentType (ref: 98))
		(signature ''askTargetTxt()''))
	(FAMIX.Method (id: 49)
		(name ''println'')
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 63))
		(signature ''println(java.lang.String)''))
	(FAMIX.Invocation (id: 50)
		(candidates (ref: 126))
		(receiver (ref: 58))
		(sender (ref: 147))
		(signature ''game.getPlayerChoice(talker.askTargetTxt(),game.getCurrentRoom().getMonsters(),true)''))
	(FAMIX.ParameterizableClass (id: 51)
		(name ''List'')
		(container (ref: 5))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Comment (id: 52)
		(container (ref: 120))
		(content ''/** 
 * @return boolean - Return true if it is possible to attack
 */
''))
	(FAMIX.Class (id: 53)
		(name ''Monster'')
		(container (ref: 118))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Access (id: 54)
		(accessor (ref: 147))
		(variable (ref: 119)))
	(FAMIX.FileAnchor (id: 55)
		(element (ref: 120))
		(endLine 32)
		(fileName ''D:/ProjectsOO/projetEtudiant/src/action/Attack.java'')
		(startLine 27))
	(FAMIX.ParameterizedType (id: 56)
		(name ''Iterable<Monster>'')
		(arguments (ref: 53))
		(container (ref: 149))
		(isStub true)
		(modifiers ''public'')
		(parameterizableClass (ref: 94)))
	(FAMIX.Invocation (id: 57)
		(candidates (ref: 49))
		(sender (ref: 147))
		(signature ''System.out.println(talker.playerDeadTxt())''))
	(FAMIX.Attribute (id: 58)
		(name ''game'')
		(declaredType (ref: 135))
		(parentType (ref: 164)))
	(FAMIX.Method (id: 59)
		(name ''isDead'')
		(declaredType (ref: 18))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 35))
		(signature ''isDead()''))
	(FAMIX.ParameterizedType (id: 60)
		(name ''Collection<Monster>'')
		(arguments (ref: 53))
		(container (ref: 5))
		(isStub true)
		(modifiers ''public'')
		(parameterizableClass (ref: 117)))
	(FAMIX.Invocation (id: 61)
		(candidates (ref: 139))
		(sender (ref: 147))
		(signature ''target.getName()''))
	(FAMIX.Method (id: 62)
		(name ''monsterHitTxt'')
		(declaredType (ref: 116))
		(isStub true)
		(modifiers ''public'' ''abstract'')
		(parentType (ref: 98))
		(signature ''monsterHitTxt(java.lang.String, int)''))
	(FAMIX.Class (id: 63)
		(name ''PrintStream'')
		(container (ref: 96))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Inheritance (id: 64)
		(subclass (ref: 116))
		(superclass (ref: 102)))
	(FAMIX.Invocation (id: 65)
		(candidates (ref: 49))
		(sender (ref: 147))
		(signature ''System.out.println(talker.monsterAttackTxt(target.getName(),player.getName(),targetStr))''))
	(FAMIX.Namespace (id: 66)
		(name ''java'')
		(isStub true))
	(FAMIX.FileAnchor (id: 67)
		(element (ref: 165))
		(endLine 25)
		(fileName ''D:/ProjectsOO/projetEtudiant/src/action/Attack.java'')
		(startLine 15))
	(FAMIX.Comment (id: 68)
		(container (ref: 125))
		(content ''/** 
 * @see action.Action#equals(Object)
 */
''))
	(FAMIX.LocalVariable (id: 69)
		(name ''target'')
		(declaredType (ref: 35))
		(isStub true)
		(parentBehaviouralEntity (ref: 147)))
	(FAMIX.Class (id: 70)
		(name ''Player'')
		(container (ref: 118))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Invocation (id: 71)
		(candidates (ref: 11))
		(sender (ref: 147))
		(signature ''target.getStrengthPoints()''))
	(FAMIX.Invocation (id: 72)
		(candidates (ref: 49))
		(sender (ref: 147))
		(signature ''System.out.println(talker.monsterDeadTxt(target.getName()))''))
	(FAMIX.Inheritance (id: 73)
		(subclass (ref: 133))
		(superclass (ref: 42)))
	(FAMIX.Comment (id: 74)
		(container (ref: 147))
		(content ''/** 
 * Asks the player which monster he wants to attack (among those in the room), plays the attack of the player, and the monster''''s response (if it''''s not dead). If the monster dies, he drops his gold.
 * @see action.Action#execute()
 */
''))
	(FAMIX.Method (id: 75)
		(name ''getCurrentRoom'')
		(declaredType (ref: 146))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 135))
		(signature ''getCurrentRoom()''))
	(FAMIX.Namespace (id: 76)
		(name ''game'')
		(isStub true))
	(FAMIX.Inheritance (id: 77)
		(subclass (ref: 150))
		(superclass (ref: 110)))
	(FAMIX.Invocation (id: 78)
		(candidates (ref: 84))
		(sender (ref: 147))
		(signature ''talker.monsterDeadTxt(target.getName())''))
	(FAMIX.Inheritance (id: 79)
		(subclass (ref: 70))
		(superclass (ref: 35)))
	(FAMIX.Invocation (id: 80)
		(candidates (ref: 59))
		(sender (ref: 147))
		(signature ''target.isDead()''))
	(FAMIX.Access (id: 81)
		(accessor (ref: 147))
		(variable (ref: 58)))
	(FAMIX.Comment (id: 82)
		(container (ref: 13))
		(content ''/** 
 * Attacking a character decreases his number of health points by the number of strength points of the attacker. It is possible for the player only if there is at least one (living) monster in the room.
 */
''))
	(FAMIX.Invocation (id: 83)
		(candidates (ref: 17))
		(sender (ref: 125))
		(signature ''this.getGame()''))
	(FAMIX.Method (id: 84)
		(name ''monsterDeadTxt'')
		(declaredType (ref: 116))
		(isStub true)
		(modifiers ''public'' ''abstract'')
		(parentType (ref: 98))
		(signature ''monsterDeadTxt(java.lang.String)''))
	(FAMIX.Invocation (id: 85)
		(candidates (ref: 139))
		(sender (ref: 147))
		(signature ''player.getName()''))
	(FAMIX.Access (id: 86)
		(accessor (ref: 147))
		(variable (ref: 58)))
	(FAMIX.Invocation (id: 87)
		(candidates (ref: 75))
		(receiver (ref: 58))
		(sender (ref: 120))
		(signature ''game.getCurrentRoom()''))
	(FAMIX.Invocation (id: 88)
		(candidates (ref: 36))
		(receiver (ref: 58))
		(sender (ref: 147))
		(signature ''game.getPlayer()''))
	(FAMIX.Invocation (id: 89)
		(candidates (ref: 104))
		(sender (ref: 147))
		(signature ''game.getCurrentRoom().getMonsters()''))
	(FAMIX.Comment (id: 90)
		(container (ref: 165))
		(content ''/** 
 * Constructor of the Action Attack
 * @param pName - The name of the action
 * @param pGame - The game associated to the action
 */
''))
	(FAMIX.Invocation (id: 91)
		(candidates (ref: 100))
		(sender (ref: 147))
		(signature ''target.getGold()''))
	(FAMIX.Inheritance (id: 92)
		(subclass (ref: 117))
		(superclass (ref: 27)))
	(FAMIX.LocalVariable (id: 93)
		(name ''talker'')
		(declaredType (ref: 98))
		(isStub true)
		(parentBehaviouralEntity (ref: 147)))
	(FAMIX.ParameterizableClass (id: 94)
		(name ''Iterable'')
		(container (ref: 149))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Access (id: 95)
		(accessor (ref: 165))
		(variable (ref: 105)))
	(FAMIX.Namespace (id: 96)
		(name ''io'')
		(isStub true)
		(parentScope (ref: 66)))
	(FAMIX.Method (id: 97)
		(name ''hasMonsters'')
		(declaredType (ref: 18))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 146))
		(signature ''hasMonsters()''))
	(FAMIX.Class (id: 98)
		(name ''Talker'')
		(container (ref: 122))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Invocation (id: 99)
		(candidates (ref: 2))
		(receiver (ref: 58))
		(sender (ref: 147))
		(signature ''game.getTalker()''))
	(FAMIX.Method (id: 100)
		(name ''getGold'')
		(declaredType (ref: 28))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 35))
		(signature ''getGold()''))
	(FAMIX.Access (id: 101)
		(accessor (ref: 147))
		(variable (ref: 58)))
	(FAMIX.ParameterizedType (id: 102)
		(name ''Comparable<String>'')
		(arguments (ref: 116))
		(container (ref: 149))
		(isStub true)
		(modifiers ''public'')
		(parameterizableClass (ref: 145)))
	(FAMIX.Invocation (id: 103)
		(candidates (ref: 4))
		(sender (ref: 165))
		(signature ''super(pName,pGame);''))
	(FAMIX.Method (id: 104)
		(name ''getMonsters'')
		(declaredType (ref: 10))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 146))
		(signature ''getMonsters()''))
	(FAMIX.Parameter (id: 105)
		(name ''pGame'')
		(declaredType (ref: 135))
		(parentBehaviouralEntity (ref: 165)))
	(FAMIX.Inheritance (id: 106)
		(subclass (ref: 146))
		(superclass (ref: 42)))
	(FAMIX.Inheritance (id: 107)
		(subclass (ref: 51))
		(superclass (ref: 131)))
	(FAMIX.Method (id: 108)
		(name ''monsterAttackTxt'')
		(declaredType (ref: 116))
		(isStub true)
		(modifiers ''public'' ''abstract'')
		(parentType (ref: 98))
		(signature ''monsterAttackTxt(java.lang.String, java.lang.String, int)''))
	(FAMIX.Inheritance (id: 109)
		(subclass (ref: 116))
		(superclass (ref: 136)))
	(FAMIX.Class (id: 110)
		(name ''OutputStream'')
		(container (ref: 96))
		(isStub true)
		(modifiers ''public'' ''abstract''))
	(FAMIX.Method (id: 111)
		(name ''addItem'')
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 146))
		(signature ''addItem(item.Item)''))
	(FAMIX.Inheritance (id: 112)
		(subclass (ref: 131))
		(superclass (ref: 27)))
	(FAMIX.Invocation (id: 113)
		(candidates (ref: 143))
		(sender (ref: 147))
		(signature ''talker.playerDeadTxt()''))
	(FAMIX.Invocation (id: 114)
		(candidates (ref: 75))
		(sender (ref: 147))
		(signature ''this.game.getCurrentRoom()''))
	(FAMIX.Class (id: 115)
		(name ''E'')
		(container (ref: 117))
		(isStub true)
		(modifiers ''package''))
	(FAMIX.Class (id: 116)
		(name ''String'')
		(container (ref: 149))
		(isStub true)
		(modifiers ''public'' ''final''))
	(FAMIX.ParameterizableClass (id: 117)
		(name ''Collection'')
		(container (ref: 5))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Namespace (id: 118)
		(name ''gameCharacter'')
		(isStub true))
	(FAMIX.Attribute (id: 119)
		(name ''out'')
		(declaredType (ref: 63))
		(parentType (ref: 133)))
	(FAMIX.Method (id: 120)
		(name ''isPossible'')
		(bodyHash ''24f684bbfc0983cf366354d9b1237de0'')
		(declaredType (ref: 18))
		(modifiers ''public'')
		(parentType (ref: 13))
		(signature ''isPossible()'')
		(sourceAnchor (ref: 55)))
	(FAMIX.Inheritance (id: 121)
		(subclass (ref: 135))
		(superclass (ref: 42)))
	(FAMIX.Namespace (id: 122)
		(name ''talker'')
		(isStub true))
	(FAMIX.Invocation (id: 123)
		(candidates (ref: 17))
		(sender (ref: 125))
		(signature ''((Attack)o).getGame()''))
	(FAMIX.Access (id: 124)
		(accessor (ref: 147))
		(variable (ref: 58)))
	(FAMIX.Method (id: 125)
		(name ''equals'')
		(bodyHash ''7f7e413bde939d7ec5bd7bb164396b07'')
		(declaredType (ref: 18))
		(modifiers ''public'')
		(parentType (ref: 13))
		(signature ''equals(java.lang.Object)'')
		(sourceAnchor (ref: 16)))
	(FAMIX.Method (id: 126)
		(name ''getPlayerChoice'')
		(declaredType (ref: 127))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 135))
		(signature ''getPlayerChoice(java.lang.String, java.util.List<T>, boolean)''))
	(FAMIX.Class (id: 127)
		(name ''T'')
		(container (ref: 160))
		(isStub true)
		(modifiers ''package''))
	(FAMIX.Invocation (id: 128)
		(candidates (ref: 48))
		(sender (ref: 147))
		(signature ''talker.askTargetTxt()''))
	(FAMIX.Namespace (id: 129)
		(name ''action''))
	(FAMIX.Access (id: 130)
		(accessor (ref: 147))
		(variable (ref: 119)))
	(FAMIX.ParameterizedType (id: 131)
		(name ''Collection<E>'')
		(arguments (ref: 115))
		(container (ref: 5))
		(isStub true)
		(modifiers ''public'')
		(parameterizableClass (ref: 117)))
	(FAMIX.Inheritance (id: 132)
		(subclass (ref: 53))
		(superclass (ref: 35)))
	(FAMIX.Class (id: 133)
		(name ''System'')
		(container (ref: 149))
		(isStub true)
		(modifiers ''public'' ''final''))
	(FAMIX.Inheritance (id: 134)
		(subclass (ref: 47))
		(superclass (ref: 43)))
	(FAMIX.Class (id: 135)
		(name ''Game'')
		(container (ref: 76))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Class (id: 136)
		(name ''CharSequence'')
		(container (ref: 149))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Invocation (id: 137)
		(candidates (ref: 139))
		(sender (ref: 147))
		(signature ''target.getName()''))
	(FAMIX.FileAnchor (id: 138)
		(element (ref: 147))
		(endLine 67)
		(fileName ''D:/ProjectsOO/projetEtudiant/src/action/Attack.java'')
		(startLine 34))
	(FAMIX.Method (id: 139)
		(name ''getName'')
		(declaredType (ref: 116))
		(isStub true)
		(modifiers ''public'')
		(parentType (ref: 35))
		(signature ''getName()''))
	(FAMIX.Inheritance (id: 140)
		(subclass (ref: 63))
		(superclass (ref: 31)))
	(FAMIX.Namespace (id: 141)
		(name ''item'')
		(isStub true))
	(FAMIX.FileAnchor (id: 142)
		(element (ref: 13))
		(endLine 79)
		(fileName ''D:/ProjectsOO/projetEtudiant/src/action/Attack.java'')
		(startLine 8))
	(FAMIX.Method (id: 143)
		(name ''playerDeadTxt'')
		(declaredType (ref: 116))
		(isStub true)
		(modifiers ''public'' ''abstract'')
		(parentType (ref: 98))
		(signature ''playerDeadTxt()''))
	(FAMIX.Inheritance (id: 144)
		(subclass (ref: 35))
		(superclass (ref: 42)))
	(FAMIX.ParameterizableClass (id: 145)
		(name ''Comparable'')
		(container (ref: 149))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Class (id: 146)
		(name ''Room'')
		(container (ref: 20))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Method (id: 147)
		(name ''execute'')
		(bodyHash ''058051ee78f93dd1416f1c2aaef66e65'')
		(modifiers ''public'')
		(parentType (ref: 13))
		(signature ''execute()'')
		(sourceAnchor (ref: 138)))
	(FAMIX.Invocation (id: 148)
		(candidates (ref: 59))
		(sender (ref: 147))
		(signature ''target.isDead()''))
	(FAMIX.Namespace (id: 149)
		(name ''lang'')
		(isStub true)
		(parentScope (ref: 66)))
	(FAMIX.Class (id: 150)
		(name ''FilterOutputStream'')
		(container (ref: 96))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Access (id: 151)
		(accessor (ref: 147))
		(variable (ref: 119)))
	(FAMIX.LocalVariable (id: 152)
		(name ''playerStr'')
		(declaredType (ref: 28))
		(isStub true)
		(parentBehaviouralEntity (ref: 147)))
	(FAMIX.Inheritance (id: 153)
		(subclass (ref: 31))
		(superclass (ref: 3)))
	(FAMIX.Invocation (id: 154)
		(candidates (ref: 108))
		(sender (ref: 147))
		(signature ''talker.monsterAttackTxt(target.getName(),player.getName(),targetStr)''))
	(FAMIX.Inheritance (id: 155)
		(subclass (ref: 127))
		(superclass (ref: 42)))
	(FAMIX.Method (id: 156)
		(name ''GoldPurse'')
		(isStub true)
		(kind ''constructor'')
		(modifiers ''public'')
		(parentType (ref: 47))
		(signature ''GoldPurse(java.lang.String, int)''))
	(FAMIX.Inheritance (id: 157)
		(subclass (ref: 110))
		(superclass (ref: 40)))
	(FAMIX.Invocation (id: 158)
		(candidates (ref: 100))
		(sender (ref: 147))
		(signature ''target.getGold()''))
	(FAMIX.Invocation (id: 159)
		(candidates (ref: 59))
		(sender (ref: 147))
		(signature ''player.isDead()''))
	(FAMIX.Namespace (id: 160)
		(name ''__UNKNOWN__'')
		(isStub true))
	(FAMIX.Inheritance (id: 161)
		(subclass (ref: 13))
		(superclass (ref: 164)))
	(FAMIX.Inheritance (id: 162)
		(subclass (ref: 115))
		(superclass (ref: 42)))
	(FAMIX.Inheritance (id: 163)
		(subclass (ref: 110))
		(superclass (ref: 31)))
	(FAMIX.Class (id: 164)
		(name ''Action'')
		(container (ref: 129))
		(isStub true)
		(modifiers ''public'' ''abstract''))
	(FAMIX.Method (id: 165)
		(name ''Attack'')
		(bodyHash ''2feda4d8355429a41e18eb231d55e8a0'')
		(kind ''constructor'')
		(modifiers ''public'')
		(parentType (ref: 13))
		(signature ''Attack(java.lang.String, game.Game)'')
		(sourceAnchor (ref: 67)))
	(FAMIX.Access (id: 166)
		(accessor (ref: 147))
		(variable (ref: 119)))
	(FAMIX.Access (id: 167)
		(accessor (ref: 165))
		(variable (ref: 39)))
	(FAMIX.Class (id: 168)
		(name ''Serializable'')
		(container (ref: 96))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Inheritance (id: 169)
		(subclass (ref: 60))
		(superclass (ref: 56)))
	(FAMIX.LocalVariable (id: 170)
		(name ''player'')
		(declaredType (ref: 35))
		(isStub true)
		(parentBehaviouralEntity (ref: 147)))
	(FAMIX.Inheritance (id: 171)
		(subclass (ref: 10))
		(superclass (ref: 60))))'