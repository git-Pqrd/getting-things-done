

export const groupedReducers = (state=[] , action) => {
	switch (action.type) {
		case 'TOGGLE_MENU' :
			let newMenuOpen = !state.menuOpen;
			let newState = Object.assign(
				{} , 
				state ,
				state.menuOpen = newMenuOpen
			)
			return newState
			
		default : 
			return state

	
	} 
}




