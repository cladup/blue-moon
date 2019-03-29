AFRAME.registerComponent('enable-inspector-onload', {
    dependencies: ['inspector'],
    init: function () {
        // console.log(this.el.components);
        // this.el.components.inspector.remove();
        this.el.components.inspector.openInspector();
    }
});

// let intervalId = setInterval(checkAframeInspector, 1000);
function checkAframeInspector() {
    let aframeInspector = document.getElementById('aframeInspector');
    if(aframeInspector == null) return;

    // stop checking for aframe inspector
    clearInterval(intervalId);

    // following class (default by inspector) distorts the body css
    document.body.classList.remove("aframe-inspector-opened");
    
    // set node position (size) of the inspector
    // let inspectorContainer = document.getElementById('inspectorContainer');
    let inspectorContainer = aframeInspector.children[0].children.inspectorContainer;
    let sceneviewDiv = document.getElementById('sceneviewDiv');
    sceneviewDiv.appendChild(aframeInspector);
    inspectorContainer.setAttribute("style", "position: absolute;")

    // hide unnecessary components from default inspector
    inspectorContainer.children.viewportBar.children.viewportHud.setAttribute("Hidden", true);
    inspectorContainer.children.rightPanel.setAttribute("Hidden", true);
    let scenegraph = inspectorContainer.children.scenegraph
    for(let index = 0; index < scenegraph.childElementCount; index++) {
        if(scenegraph.children[index].classList.value == "scenegraph-toolbar") {
            scenegraph.children[index].setAttribute("Hidden", true);
            break;
        }
    }
    scenegraph.setAttribute("Hidden", true);
    
    // hide inspector on/off toggle button
    let toggleEditElements = document.getElementsByClassName("toggle-edit");
    for (let index = 0; index < toggleEditElements.length; index++) {
        if(toggleEditElements[index].innerHTML == "Back to Scene") {
            toggleEditElements[index].setAttribute("Hidden", true);
            break;
        }
    }

    // hide local/global(world) toggle button
    let localTransformElements = document.getElementsByClassName("local-transform");
    for (let index = 0; index < localTransformElements.length; index++) {
        localTransformElements[index].setAttribute("Hidden", true);
    }
    
    // auto-play the scene
    // this breaks entity highlighting
    // document.getElementById("playPauseScene").click();
}