import thunk from 'redux-thunk';
import {groupedReducers} from './reducers';
import {
  applyMiddleware,
  compose,
  createStore,
} from 'redux';


const InitialState = {
		menuOpen : true ,
		language : 'fr', 
}

 

const store = createStore(groupedReducers, InitialState, compose(
  applyMiddleware(thunk),
  window.devToolsExtension ? window.devToolsExtension() : f => f
))

export default store
