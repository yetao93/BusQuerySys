function tabs(id,trigger){
    var tabsBtn = document.getElementById(id).getElementsByTagName('h2')[0].getElementsByTagName('a');
    var tabsContent = document.getElementById(id).getElementsByTagName("div");
    
    for(var i = 0,len = tabsBtn.length; i < len; i++){
        tabsBtn[i].index = i;//???
        if(trigger == 'click'){
            tabsBtn[i].onclick = function(){
                clearClass();
                this.className = 'on';
                showContent(this.index);
            }
        }else if(trigger == 'mouseover'){
            tabsBtn[i].onmouseover = function(){
                clearClass();
                this.className = 'on';
                showContent(this.index);
            }
        }
    }
    
    function showContent(n){
        for(var i = 0,len = tabsBtn.length; i < len; i++){
            tabsContent[i].style.display = 'none';
        }
        tabsContent[n].style.display = 'block';
    }
    
    function clearClass(){
        for(var i = 0,len = tabsBtn.length; i < len; i++){
            tabsBtn[i].className = '';
        }
    }
}