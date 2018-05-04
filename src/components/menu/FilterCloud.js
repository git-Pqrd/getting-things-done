import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './FilterCloud.css';

let primaryStyleContainer = {
	color : '#D7DDFF',
}

let primaryStyleComponent = {
	backgroundColor : '#2790CA',
	color : '#D7DDFF',
	borderColor : '#ddd',
	fontFamily : 'Raleway, sans-serif'
}

const cloudLister = cloudOfCat => cloudOfCat.map( tag => 
	<li 
		className={styles.item}
		style={primaryStyleComponent}
		key={tag}
	>
	<div
		className={styles.item_content}>
		{tag} 
	</div>

	</li>
) 

class FilterCloud extends Component {
	constructor () {
		super()
		this.state = {
			filterOpen : false
		}
	}


	toggleContainer () {
		this.setState({
			filterOpen : !this.state.filterOpen
		})
	
	}
	killTheDragGhost(e) {
		var canvas = document.createElementNS("http://www.w3.org/1999/xhtml","canvas");
		e.dataTransfer.setDragImage(canvas ,  1, 1);
		//if i did that is to make sure the dragEvent don't show a ghost of
		//element
		this.containerMStart(e)
	}


	getClientY (e) {
		var YPosition = e.clientY
		if ( e.clientY == null) {
			// if on mobile e.cleintX will return null so see if not ok
			YPosition = e.nativeEvent.changedTouches[0].clientY
		}
			
	
		return YPosition
	}


	
	containerMStart =  e  => { 
		this.initM = this.getClientY(e) 
	}	

	containerMEnd =  e  => {
		this.endM = this.getClientY(e)
		this.delta = (this.initM - this.endM)
		if ((this.delta**2)**0.5 < 20 ) {
			console.log('the delta is too low');
			return  ; // return if delta too small
		} else if ((this.delta) > 0 ) {
			if (this.state.filterOpen) {
				console.log('delta enough and up');
				this.toggleContainer()
			} // close if open	
		}else {
			if (!this.state.filterOpen) {
				console.log('delta enough and down');
				this.toggleContainer()
			} //  open if close
		}
		// if the 'swipe' is of a minimum delta call toggle function if usefull
		// so if open and swipe left for example 
	}	

	

	render() {
		return (
			<div 
				style={primaryStyleContainer} className={
				[styles.container,  
				this.state.filterOpen ? styles.open : styles.close 
				].join(' ')}>

				<ul 
					draggable
					onDragStart={(e) => this.killTheDragGhost(e)}
					onTouchStart={(e) => this.containerMStart(e)}

					onDragEnd={(e) => this.containerMEnd(e)}
					onTouchEnd={(e) => this.containerMEnd(e)}
					className={styles.cloud}>
				{cloudLister(['haello', 'lr-aaaphysics' ,'ahello', 'lar-physics' ,'helddlo', 'lr-physics' , 'aspatiodata', '+'])}			
			
			</ul>
			
<div style={primaryStyleComponent}	className={styles.separator}>

</div>

			
			</div>);
	}
}

function mapStateToProps(state) {
	return {};
}

export default connect(mapStateToProps)(FilterCloud);
