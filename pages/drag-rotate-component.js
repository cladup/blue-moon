AFRAME.registerComponent('drag-rotate-component', {
    schema : { speed : {default:1}},
    init : function() {
        this.ifMouseDown = false;
        this.x_cord = 0;
        this.y_cord = 0;
        document.addEventListener('mousedown',this.OnDocumentMouseDown.bind(this));
        document.addEventListener('mouseup',this.OnDocumentMouseUp.bind(this));
        document.addEventListener('mousemove',this.OnDocumentMouseMove.bind(this));
    },
    OnDocumentMouseDown : function(event) {
        if(event.clientX == undefined) return;  // i don't know why, but this gets called 3 times per click
        this.ifMouseDown = true;
        this.x_cord = event.clientX;
        this.y_cord = event.clientY;
        // console.log(this.el.id);
        console.log('id: '+this.el.id+', x: '+event.clientX+", y: "+event.clientY);
    },
    OnDocumentMouseUp : function() {
        this.ifMouseDown = false;
    },
    OnDocumentMouseMove : function(event) {
        if(this.ifMouseDown) {
            var temp_x = event.clientX-this.x_cord;
            var temp_y = event.clientY-this.y_cord;
            // if(Math.abs(temp_y)<Math.abs(temp_x)) {
            //     this.el.object3D.rotateY(temp_x*this.data.speed/1000);
            // }
            // else {
            //     this.el.object3D.rotateX(temp_y*this.data.speed/1000);
            // }
            // this.x_cord = event.clientX;
            // this.y_cord = event.clientY;
        }
    }
});