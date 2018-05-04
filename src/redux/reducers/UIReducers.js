export const UI = (state={} , action) => {
	switch (action.type) {
		case 'TOGGLE_MENU' :
			let newMenuOpen = !state.menuOpen;
			let newStateTM = Object.assign(
				{} , 
				state ,
				state.menuOpen = newMenuOpen
			)
			return newStateTM
			
		case 'TOGGLE_SEARCH_MODAL' :
			let newSearchModal = !state.searchModalOpen;
			let newStateTSM = Object.assign(
				{} , 
				state ,
				state.searchModalOpen = newSearchModal
			)
			return newStateTSM
		
		case 'TOGGLE_ADD_MODAL' :
			let newAddModal = !state.addModalOpen;
			let newStateTAM = Object.assign(
				{} , 
				state ,
				state.addModalOpen = newAddModal
			)
			return newStateTAM
		
		
		
		default : 
			return state

	
	} 
}
