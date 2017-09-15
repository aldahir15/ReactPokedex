import { connect } from 'react-redux';
import TodoDetailView from './todo_detail_view';
import { removeTodo, deleteTodo } from '../../actions/todo_actions';
import { receiveSteps } from '../../actions/step_actions';



const mapDispatchToProps = dispatch => ({
  deleteTodo: (todo) => dispatch(deleteTodo(todo)),
  // removeTodo: (todo) => dispatch(removeTodo(todo)),

  receiveSteps: (step) => dispatch(receiveSteps(step))
});

export default connect(
  null,
  mapDispatchToProps
)(TodoDetailView);
