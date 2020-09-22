package laya.ui {
	import laya.ui.UIComponent;
	import laya.ui.Button;
	import laya.ui.List;
	import laya.ui.VScrollBar;
	import laya.events.Event;
	import laya.utils.Handler;

	/**
	 * 当用户更改 <code>ComboBox</code> 组件中的选定内容时调度。
	 * @eventType laya.events.Event
	 */

	/**
	 * <code>ComboBox</code> 组件包含一个下拉列表，用户可以从该列表中选择单个值。
	 * @example <caption>以下示例代码，创建了一个 <code>ComboBox</code> 实例。</caption>
	 * @example Laya.init(640, 800);//设置游戏画布宽高。
	 * @example import ComboBox = laya.ui.ComboBox;
	 */
	public class ComboBox extends UIComponent {

		/**
		 * @private 
		 */
		protected var _visibleNum:Number;

		/**
		 * @private 
		 */
		protected var _button:Button;

		/**
		 * @private 
		 */
		protected var _list:List;

		/**
		 * @private 
		 */
		protected var _isOpen:Boolean;

		/**
		 * @private 
		 */
		protected var _itemColors:Array;

		/**
		 * @private 
		 */
		protected var _itemSize:Number;

		/**
		 * @private 
		 */
		protected var _labels:Array;

		/**
		 * @private 
		 */
		protected var _selectedIndex:Number;

		/**
		 * @private 
		 */
		protected var _selectHandler:Handler;

		/**
		 * @private 
		 */
		protected var _itemHeight:Number;

		/**
		 * @private 
		 */
		protected var _listHeight:Number;

		/**
		 * @private 
		 */
		protected var _listChanged:Boolean;

		/**
		 * @private 
		 */
		protected var _itemChanged:Boolean;

		/**
		 * @private 
		 */
		protected var _scrollBarSkin:String;

		/**
		 * @private 
		 */
		protected var _isCustomList:Boolean;

		/**
		 * 渲染项，用来显示下拉列表展示对象
		 */
		public var itemRender:*;

		/**
		 * 创建一个新的 <code>ComboBox</code> 组件实例。
		 * @param skin 皮肤资源地址。
		 * @param labels 下拉列表的标签集字符串。以逗号做分割，如"item0,item1,item2,item3,item4,item5"。
		 */

		public function ComboBox(skin:String = undefined,labels:String = undefined){}

		/**
		 * @inheritDoc 
		 * @override 
		 */
		override public function destroy(destroyChild:Boolean = null):void{}

		/**
		 * @inheritDoc 
		 * @override 
		 */
		override protected function createChildren():void{}
		private var _createList:*;
		private var _setListEvent:*;

		/**
		 * @private 
		 */
		private var onListDown:*;
		private var onScrollBarDown:*;
		private var onButtonMouseDown:*;

		/**
		 * @copy laya.ui.Button#skin
		 */
		public function get skin():String{return null;}
		public function set skin(value:String):void{}

		/**
		 * @inheritDoc 
		 * @override 
		 */
		override protected function measureWidth():Number{
			return null;
		}

		/**
		 * @inheritDoc 
		 * @override 
		 */
		override protected function measureHeight():Number{
			return null;
		}

		/**
		 * @private 
		 */
		protected function changeList():void{}

		/**
		 * @private 下拉列表的鼠标事件响应函数。
		 */
		protected function onlistItemMouse(e:Event,index:Number):void{}

		/**
		 * @private 
		 */
		private var switchTo:*;

		/**
		 * 更改下拉列表的打开状态。
		 */
		protected function changeOpen():void{}

		/**
		 * @inheritDoc 
		 * @override 
		 */
		override public function set width(value:Number):void{}

		/**
		 * @inheritDoc 
		 * @override 
		 */
		override public function get width():Number{return null;}

		/**
		 * @inheritDoc 
		 * @override 
		 */
		override public function set height(value:Number):void{}

		/**
		 * @inheritDoc 
		 * @override 
		 */
		override public function get height():Number{return null;}

		/**
		 * 标签集合字符串。
		 */
		public function get labels():String{return null;}
		public function set labels(value:String):void{}

		/**
		 * 更改下拉列表。
		 */
		protected function changeItem():void{}

		/**
		 * 表示选择的下拉列表项的索引。
		 */
		public function get selectedIndex():Number{return null;}
		public function set selectedIndex(value:Number):void{}
		private var changeSelected:*;

		/**
		 * 改变下拉列表的选择项时执行的处理器(默认返回参数index:int)。
		 */
		public function get selectHandler():Handler{return null;}
		public function set selectHandler(value:Handler):void{}

		/**
		 * 表示选择的下拉列表项的的标签。
		 */
		public function get selectedLabel():String{return null;}
		public function set selectedLabel(value:String):void{}

		/**
		 * 获取或设置没有滚动条的下拉列表中可显示的最大行数。
		 */
		public function get visibleNum():Number{return null;}
		public function set visibleNum(value:Number):void{}

		/**
		 * 下拉列表项颜色。
		 * <p><b>格式：</b>"悬停或被选中时背景颜色,悬停或被选中时标签颜色,标签颜色,边框颜色,背景颜色"</p>
		 */
		public function get itemColors():String{return null;}
		public function set itemColors(value:String):void{}

		/**
		 * 下拉列表项标签的字体大小。
		 */
		public function get itemSize():Number{return null;}
		public function set itemSize(value:Number):void{}

		/**
		 * 表示下拉列表的打开状态。
		 */
		public function get isOpen():Boolean{return null;}
		public function set isOpen(value:Boolean):void{}
		private var _onStageMouseWheel:*;

		/**
		 * 关闭下拉列表。
		 */
		protected function removeList(e:Event):void{}

		/**
		 * 滚动条皮肤。
		 */
		public function get scrollBarSkin():String{return null;}
		public function set scrollBarSkin(value:String):void{}

		/**
		 * <p>当前实例的位图 <code>AutoImage</code> 实例的有效缩放网格数据。</p>
		 * <p>数据格式："上边距,右边距,下边距,左边距,是否重复填充(值为0：不重复填充，1：重复填充)"，以逗号分隔。
		 * <ul><li>例如："4,4,4,4,1"</li></ul></p>
		 * @see laya.ui.AutoBitmap.sizeGrid
		 */
		public function get sizeGrid():String{return null;}
		public function set sizeGrid(value:String):void{}

		/**
		 * 获取对 <code>ComboBox</code> 组件所包含的 <code>VScrollBar</code> 滚动条组件的引用。
		 */
		public function get scrollBar():VScrollBar{return null;}

		/**
		 * 获取对 <code>ComboBox</code> 组件所包含的 <code>Button</code> 组件的引用。
		 */
		public function get button():Button{return null;}

		/**
		 * 获取对 <code>ComboBox</code> 组件所包含的 <code>List</code> 列表组件的引用。
		 */
		public function get list():List{return null;}
		public function set list(value:List):void{}

		/**
		 * @inheritDoc 
		 * @override 
		 */
		override public function set dataSource(value:*):void{}

		/**
		 * @inheritDoc 
		 * @override 
		 */
		override public function get dataSource():*{return null;}

		/**
		 * 获取或设置对 <code>ComboBox</code> 组件所包含的 <code>Button</code> 组件的文本标签颜色。
		 * <p><b>格式：</b>upColor,overColor,downColor,disableColor</p>
		 */
		public function get labelColors():String{return null;}
		public function set labelColors(value:String):void{}

		/**
		 * 获取或设置对 <code>ComboBox</code> 组件所包含的 <code>Button</code> 组件的文本边距。
		 * <p><b>格式：</b>上边距,右边距,下边距,左边距</p>
		 */
		public function get labelPadding():String{return null;}
		public function set labelPadding(value:String):void{}

		/**
		 * 获取或设置对 <code>ComboBox</code> 组件所包含的 <code>Button</code> 组件的标签字体大小。
		 */
		public function get labelSize():Number{return null;}
		public function set labelSize(value:Number):void{}

		/**
		 * 表示按钮文本标签是否为粗体字。
		 * @see laya.display.Text#bold
		 */
		public function get labelBold():Boolean{return null;}
		public function set labelBold(value:Boolean):void{}

		/**
		 * 表示按钮文本标签的字体名称，以字符串形式表示。
		 * @see laya.display.Text#font
		 */
		public function get labelFont():String{return null;}
		public function set labelFont(value:String):void{}

		/**
		 * 表示按钮的状态值。
		 * @see laya.ui.Button#stateNum
		 */
		public function get stateNum():Number{return null;}
		public function set stateNum(value:Number):void{}
	}

}