AFRAME.registerComponent('enable-inspector-onload', {
    dependencies: ['inspector'],
    init: function () {
        // this.el.components.inspector.remove();
        console.log(this.el.components);
        this.el.components.inspector.openInspector();
    }
});

let intervalId = setInterval(tick, 1000);
function tick() {
    let aframeInspector = document.getElementById('aframeInspector');
    if(aframeInspector != null) {
        clearInterval(intervalId);

        document.body.classList.remove("aframe-inspector-opened");
        
        let sceneviewDiv = document.getElementById('sceneviewDiv');
        let inspectorContainer = document.getElementById('inspectorContainer');
        sceneviewDiv.appendChild(aframeInspector);
        inspectorContainer.setAttribute("style", "position: absolute;")

        document.getElementById('scenegraph').setAttribute("Hidden", true);
        document.getElementById('viewportHud').setAttribute("Hidden", true);
        document.getElementById('rightPanel').setAttribute("Hidden", true);
        
        let toggleEditElements = document.getElementsByClassName("toggle-edit");
        for (let index = 0; index < toggleEditElements.length; index++) {
            if(toggleEditElements[index].innerHTML == "Back to Scene") {
                toggleEditElements[index].setAttribute("Hidden", true);
                break;
            }
        }
 
        let localTransformElements = document.getElementsByClassName("local-transform");
        for (let index = 0; index < localTransformElements.length; index++) {
            localTransformElements[index].setAttribute("Hidden", true);
        }
        
    }
}