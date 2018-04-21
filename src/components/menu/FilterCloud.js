import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './FilterCloud.css';


const cloudLister = cloudOfCat => cloudOfCat.map( tag => 
	<li 
		className={styles.item}
		key={tag}
	>
		<div className={styles.item_content}>
	{tag} 
		</div>
	</li>
) 

class FilterCloud extends Component {
	render() {
		return (

			<ul className={styles.cloud}>
				{cloudLister(['hello', 'lr-physics' , 'spatiodata', '+'])}			
			
			</ul>
		);
	}
}

function mapStateToProps(state) {
	return {};
}

export default connect(mapStateToProps)(FilterCloud);
