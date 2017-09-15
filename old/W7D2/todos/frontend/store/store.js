import { createStore, applyMiddleware } from 'redux';
import thunk from '../middleware/thunk';
import logger from 'redux-logger';

const configureStore = (rootReducer) => createStore(rootReducer, applyMiddleware(thunk, logger));

export default configureStore;
