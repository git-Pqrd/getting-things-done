import React, { Component} from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import styles from './FilterCloud.css';

class FilterCloud extends Component {
	static propTypes = {
		children: PropTypes.node,
		className: PropTypes.string,
		dispatch: PropTypes.func.isRequired,
	};

	constructor(props) {
		super(props);
	}

	render() {
		return (
			<div className={styles.base}>
				
			</div>
		);
	}
}

function mapStateToProps(state) {
	return {};
}

export default connect(mapStateToProps)(FilterCloud);
