import store from './../store.js'

export const toggleMenuAction = () => {
	store.dispatch({type:'TOGGLE_MENU'})
}
