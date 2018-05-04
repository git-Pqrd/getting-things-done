import { combineReducers } from 'redux'
import { LOGIC} from './LogicReducers.js'
import { UI} from './UIReducers.js'
import { DATA} from './DataReducers.js'



export default combineReducers ({
	UI ,
	DATA ,
	LOGIC 
}) 
