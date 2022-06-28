<%--
  Created by IntelliJ IDEA.
  User: Jimmy
  Date: 2022/6/28
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>操作表单元素</title>
  <meta charset="UTF-8"/>
  <!--
      js操作多选框、单选框
          被选中状态下在js中checked属性值为true,未选中状态为false;
      js操作下拉框：
          被选择的option对象在js中selected属性值为true，未选中为false
  -->
  <!--声明js代码域-->
  <script type="text/javascript">
    //多选框操作
    function testCheckBox(){
      //获取所有的多选元素对象数组
      var favs=document.getElementsByName("fav");
      //遍历数组
      for(var i=0;i<favs.length;i++){
        if(favs[i].checked){
          alert(favs[i].value+":"+favs[i].checked);
        }
      }
    }
    //全选
    function testCheckBox2(){
      var favs=document.getElementsByName("fav");
      for(var i=0;i<favs.length;i++){
        favs[i].checked=true;
      }
    }
    //反选
    function testCheckBox3(){
      var favs=document.getElementsByName("fav");
      for(var i=0;i<favs.length;i++){
        favs[i].checked=!favs[i].checked;
      }
    }
    //操作下拉框
    function testSel(){
      //获取下拉框对象
      var sel=document.getElementById("address");
      //alert(sel.value);
      //获取option对象集合
      var os=sel.options;
      for(var i=0;i<os.length;i++){
        if(os[i].selected){

          alert(os[i].value+":"+os[i].text);
        }
      }
    }



  </script>
</head>
<body>
<h3>操作表单元素</h3>
<hr />
<b>操作多选框</b><br /><br />
<input type="checkbox" name="fav" id="fav" value="1" />远走高飞<br />
<input type="checkbox" name="fav" id="fav" value="2" />当<br />
<input type="checkbox" name="fav" id="fav" value="3" />李白<br />
<input type="checkbox" name="fav" id="fav" value="4" />杜甫<br />
<input type="checkbox" name="fav" id="fav" value="5" />see you again<br />
<input type="checkbox" name="fav" id="fav" value="6" />fade<br /><br /><br />
<input type="button" name="" id="" value="播放" onclick="testCheckBox()"/>
<input type="button" name="" id="" value="全选" onclick="testCheckBox2()"/>
<input type="button" name="" id="" value="反选" onclick="testCheckBox3()"/>
<hr />
<select name="" id="address" onchange="testSel()">
  <option value="0">--请选择--</option>
  <option value="1" >北京</option>
  <option value="2">上海</option>
  <option value="3">广州</option>
</select>



</body>
</html>
