import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './List.css';

// SL is filtering the props to see if steps is in task fear will not be
// scalable tho
//
const StepLister = (task_steps, steps) => (  
	steps
		.filter( step => task_steps.includes(step.uuid) )
		.map( step => 
			<li
				className={styles.sub_component}
				key={step.uuid}			>
				{step.name}
			</li>
		)
)


// TL has 2 functions one is to lisr the task and the other is to send the data
// not in props to the SL 
const TaskList = props =>( 
	props.tasks
		.filter( task => task.name.toUpperCase().includes(props.searching.toUpperCase()))
		.map(task =>
		<li
			className={styles.component}
			key={task.uuid}>
			{task.name}
			<ul>
				{StepLister(task.steps , props.steps)}
			</ul>
		</li>
	)
)


//list simply create a list ... like just that ...
//booo list you not good list
//you. just. like. your. father.
//also pass the props
class List extends Component {
	render() {
		return (
			<ul className={styles.container}>
				{TaskList(this.props)}
			</ul>
		);
	}
}

function mapStateToProps(state) {
	return {
		tasks : state.DATA.tasks,
		searching : state.LOGIC.searching,
		steps : state.DATA.steps,

	};
}

export default connect(mapStateToProps)(List);
