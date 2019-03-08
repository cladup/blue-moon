AFRAME.registerComponent('disable-inspector', {
    dependencies: ['inspector'],
    init: function () {
        this.el.components.inspector.remove();
    }
  });