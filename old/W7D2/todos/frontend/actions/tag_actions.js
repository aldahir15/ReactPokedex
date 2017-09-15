export const RECEIVE_TAGS = 'RECEIVE_TAGS';
export const RECEIVE_TAG = 'RECEIVE_TAG';
export const REMOVE_TAG = 'REMOVE_TAG';
// import * as APIUtil from '../util/tag_api_util';
import APIUtil from '../util/todo_api_util';
import { receiveErrors, clearErrors } from './error_actions';


export const receiveTags = (tags) =>  ({
  type: RECEIVE_TAGS,
  tags
});

export const receiveTag = (tag) =>  ({
  type: RECEIVE_TAG,
  tag
});

export const removeTag = (tag) =>  ({
  type: REMOVE_TAG,
  tag
});

export const getTagsByTodoId = todo => dispatch => (
  APIUtil.getTagsByTodoId(todo).then(
    successfulTags =>  {
      // console.log(tagNames);
      let tagNames =  successfulTags.map(tag=> tag.name);
      return dispatch(receiveTags(tagNames));
    }

  )
);
