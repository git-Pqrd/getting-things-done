import thunk from 'redux-thunk';
import groupedReducers from './reducers';
import {
  applyMiddleware,
  compose,
  createStore,
} from 'redux';


const InitialState = {
	LOGIC : {
		searching : '',
		language : 'en', 
	},
	UI: {
		menuOpen		: true  ,
		searchModalOpen : false ,
		addModalOpen	: true ,
	
	},
	DATA: {
	tasks : [{
			uuid : '1',
			name : 'Do the Dish',
			steps : ['a' , 'b']},
		{
			uuid : '2',
			name : 'Dish',
			steps : ['c' , 'b']
		}] ,
	steps : [{
			uuid : 'a',
			name : 'steps 1'
		},{
			uuid : 'b',
			name : 'step task 2'
		},{
			uuid : 'c',
			name : 'steps do the dish'
		},{
			uuid : 'd',
			name : 'steps do the dish'
		}] 
	}

}
 

const store = createStore(groupedReducers, InitialState, compose(
  applyMiddleware(thunk),
  window.devToolsExtension ? window.devToolsExtension() : f => f
))

export default store
