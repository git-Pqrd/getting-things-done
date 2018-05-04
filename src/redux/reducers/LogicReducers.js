export const LOGIC = ( state={}, action) => {
	switch (action.type) {
		case 'SEARCH' :
			let newState = Object.assign(
				{} , 
				state  
			)
			newState.searching = action.payload
			return newState

		default : 
			return state
	
	
	}

}
