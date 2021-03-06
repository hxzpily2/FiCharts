package com.fiCharts.charts.legend.view.itemRender
{
	import com.fiCharts.charts.chart2D.core.columnRender.ColumnRender;
	import com.fiCharts.charts.common.ChartColorManager;
	import com.fiCharts.utils.XMLConfigKit.style.IStyleStatesUI;
	import com.fiCharts.utils.XMLConfigKit.style.IStyleUI;
	import com.fiCharts.utils.XMLConfigKit.style.States;
	import com.fiCharts.utils.XMLConfigKit.style.StatesControl;
	import com.fiCharts.utils.XMLConfigKit.style.Style;
	import com.fiCharts.utils.graphic.StyleManager;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.filters.ColorMatrixFilter;
	import flash.filters.GlowFilter;
	
	/**
	 */	
	public class RecItemRender extends Sprite implements IStyleStatesUI
	{
		/**
		 * @param color
		 */		
		public function RecItemRender()
		{
			super();
			
			statesControl = new StatesControl(this);
		}
		
		/**
		 */		
		public function toHover():void
		{
			this.statesControl.toHover();
		}
		
		/**
		 */		
		public function toNormal():void
		{
			this.statesControl.toNormal();
		}
		
		/**
		 */		
		public function downHandler():void
		{
			
		}
		
		/**
		 */		
		public function hoverHandler():void
		{
			
		}
		
		/**
		 */		
		public function normalHandler():void
		{
			
		}
		
		/**
		 */		
		private var _metaData:Object;

		/**
		 */
		public function get metaData():Object
		{
			return _metaData;
		}

		/**
		 * @private
		 */
		public function set metaData(value:Object):void
		{
			_metaData = value;
		}

		/**
		 */		
		private var _style:Style;

		/**
		 */
		public function get style():Style
		{
			return _style;
		}

		/**
		 * @private
		 */
		public function set style(value:Style):void
		{
			_style = value;
		}
		
		/**
		 */		
		private var _states:States;

		/**
		 */
		public function get states():States
		{
			return _states;
		}

		/**
		 * @private
		 */
		public function set states(value:States):void
		{
			_states = value;
			statesControl.states = _states;
		}

		/**
		 */		
		public function render():void
		{
			StyleManager.drawRect(this, style, metaData);
		}
		
		/**
		 */		
		private var statesControl:StatesControl;
		
	}
}