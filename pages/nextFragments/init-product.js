AFRAME.registerComponent('init-product', {
  init: function () {
    this.el.addEventListener('model-loaded', function ( obj ) { 
      let box = new THREE.Box3().setFromObject(obj.target.object3D);
      let pos = obj.target.parentElement.object3D.position;
      let scale = obj.target.parentElement.object3D.scale;
      const center = new THREE.Vector3();
      box.getCenter(center);
      obj.target.object3D.applyMatrix( new THREE.Matrix4().makeTranslation(
        -(pos.x - center.x)/scale.x,
        (pos.y - center.y + (box.max.y - box.min.y)/2)/scale.y,
        -(pos.z - center.z)/scale.z)
      );
      console.log(obj.target.parentElement.id + " has recentered.");
    });
  }
});