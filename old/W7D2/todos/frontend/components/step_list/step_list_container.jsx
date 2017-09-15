import { connect } from 'react-redux';
import StepList from './step_list';
import { stepsByTodoId } from '../../reducers/selectors';
import { receiveStep, removeStep, getStepsByTodoId } from '../../actions/step_actions';
import { getTagsByTodoId } from '../../actions/tag_actions';

const mapStateToProps = (state, {todo_id}) => ({
  tags: state.tags,
  steps: stepsByTodoId(state, todo_id),
  todo_id
});

const mapDispatchToProps = dispatch => ({
  receiveStep: (step) => dispatch(receiveStep(step)),
  removeStep: (step) => dispatch(removeStep(step)),
  getTagsByTodoId: (todoId) => dispatch(getTagsByTodoId(todoId)),
  receiveSteps: (todoId) => dispatch(getStepsByTodoId(todoId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StepList);
