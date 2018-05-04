import store from './../store.js'

export const toggleMenuAction = () => {
	store.dispatch({type:'TOGGLE_MENU'})
}

export const toggleSearchModal = () => {
	store.dispatch({type:'TOGGLE_SEARCH_MODAL'})
}

export const toggleAddModal = () => {
	store.dispatch({type:'TOGGLE_ADD_MODAL'})
}

export const toggleSearching = textToSearch => {
	store.dispatch({
		type:'SEARCH',
		payload : textToSearch
	})
}
