import { RECEIVE_TAGS, RECEIVE_TAG, REMOVE_TAG } from '../actions/tag_actions';
import merge from 'lodash/merge';

const tagsReducer = (state = [], action) => {
  Object.freeze(state);
  let newState;
  switch(action.type) {
    case RECEIVE_TAGS:
      newState = action.tags;
      return newState;
    case RECEIVE_TAG:
      newState = [...state, action.tag];
      return newState;
    // case REMOVE_TAG:
    //   newState = [...state];
    //   delete newState[action.tag.id];
    //   return newState;
    default:
      return state;
  }
};
export default tagsReducer;
