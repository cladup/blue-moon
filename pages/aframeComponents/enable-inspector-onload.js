AFRAME.registerComponent('enable-inspector-onload', {
    dependencies: ['inspector'],
    init: function () {
        // this.el.components.inspector.remove();
        this.el.components.inspector.openInspector();
    }
});

let intervalId = setInterval(tick, 1000);
function tick() {
    let aframeInspector = document.getElementById('aframeInspector');
    if(aframeInspector != null) {
        console.log(aframeInspector);
        clearInterval(intervalId);

        document.body.classList.remove("aframe-inspector-opened");
        
        // document.getElementById('scenegraph').classList.add("hidden");
        // document.getElementById('viewportHud').classList.add("hidden");
        // document.getElementById('rightPanel').classList.add("hidden");

        document.getElementById('scenegraph').setAttribute("Hidden", true)
        document.getElementById('viewportHud').setAttribute("Hidden", true)
        document.getElementById('rightPanel').setAttribute("Hidden", true)
        // document.getElementById('inspectorContainer').setAttribute("Hidden", true)
        
        
    }
}