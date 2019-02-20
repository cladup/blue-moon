AFRAME.registerComponent('init-product', {
    init: function () {
        console.log("yoyo");
        this.el.addEventListener('model-loaded', function ( obj ) {
            console.log(obj.target.id + " has recentered.");
            let box = new THREE.Box3().setFromObject(obj.target.object3D);
            let pos = obj.target.object3D.position;
            const center = new THREE.Vector3();
            box.getCenter(center);
            obj.target.object3D.translateX(pos.x - center.x);
            obj.target.object3D.translateY(pos.y - center.y + (box.max.y - box.min.y)/2);
            obj.target.object3D.translateZ(pos.z - center.z);
        });
    }
  });