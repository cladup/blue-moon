var isVRMode = false;
var pictureTrigger = false;
var prevTargetObjPos = new THREE.Vector3();
var prevTargetObjRot = new THREE.Vector3();
var toRadian = function(degree) { return degree * Math.PI/180; }
var player;
var target;
var targetObj;
var targetObjAnim;

window.addEventListener("orientationchange", function() {
  if(isVRMode && window.innerHeight > window.innerWidth) {
    document.querySelector("a-scene").exitVR();
    isVRMode = false;
  }
}, false);

// AFRAME.registerComponent('click-product', {
//   init: function () {
//     this.el.addEventListener('click touchstart', function ( obj ) {
//       console.log("test123");
//     });
//   }
// });

$(document).ready(function(){
  $("#enter_vr").on("click", function() {
    if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
      if (!isVRMode) {
        if (window.innerHeight > window.innerWidth) {
          alert("Please use Landscape!");
        } else {
          document.querySelector("a-scene").enterVR();
          isVRMode = true;  
        }
        
      } else {
        document.querySelector("a-scene").exitVR();
        isVRMode = false;
      }
    } else {
      if (!isVRMode) {
        document.querySelector("a-scene").enterVR();
        isVRMode = true;
      } else {
        document.querySelector("a-scene").exitVR();
        isVRMode = false;
      }
    }
      
  });

  $(".3d-sample-section").on('click touchstart', function(object) {
    event.preventDefault();

    target = object.target;
    player = document.querySelector('#player');

    let pos = player.getAttribute('position');
    let rot = player.getAttribute('rotation');

    let currentObj3D = object.target;

    // if (isVRMode) {
    //     document.getElementById("detail-panel").innerHTML = '<a-plane id="detail-panel-temp" geometry="primitive: circle; radius: 0.7" src="/resources/img/Panel/Panel1-ring.png" position="' 
    //     + (pos.x + 1.5 * Math.sin(toRadian(rot.y+180))) + ' ' 
    //     + (pos.y + 1.5 * Math.tan(toRadian(rot.x))) + ' ' 
    //     + (pos.z + 1.5 * Math.cos(toRadian(rot.y+180)))
    //     + '" rotation="' 
    //     + rot.x + ' '
    //     + rot.y + ' '
    //     + rot.z
    //     + '"><a-image src="/resources/img/Panel/Panel1-table.png" width="1.3" height="0.36" position="0 0.9 0"><a-text value="HelloBoutique" position="-0.5 0.07 0.01" color="darkblue" wrap-count="25" width="0.8" font="roboto"></a-text><a-text value="Small Zip Across Flat Bag" position="-0.5 -0.06 0.01" color="black" wrap-count="30" width="1.3" font="roboto"></a-text></a-image><a-image id="detail-panel-img" geometry="primitive: circle; radius: 0.63"  src="#bag-sample-picture" width="1.5" height="1.5" position="0 0 0.01" rotation="0 0 0"></a-image><a-image id="close-button" onclick="cancel()" src="/resources/img/Panel/cancel-1.png" width="0.3" height="0.3" position="0 -0.73 0.02" rotation="0 0 0"></a-image><a-image id="detail-panel-link" src="/resources/img/Panel/info.png" width="0.3" height="0.3" rotation="0 0 0" position="-0.52 -0.52 0.02" onclick="location.href=\'https://www.helloboutique.com/2339-0-Small-Zip-Across-Flat-Bag-by-M0851\'"></a-image></a-plane>"';
    // } else { }
      
      $('.cd-popup').addClass('is-visible');
      $('#detail-panel-menu').show();
      $('#menu').hide();

      createPanel();
      var objScale = 0;

      console.log("selected object: " + object.target.id);
      currentObj3D.getObject3D('mesh').traverse( function (child) {
        if (child instanceof THREE.Mesh) {
          child.geometry.computeBoundingBox();
          let bb = child.geometry.boundingBox;
          objScale = Math.max(bb.max.x - bb.min.x, bb.max.y - bb.min.y, bb.max.z - bb.min.z);  
        }
      });

      targetObj = document.createElement('a-obj-model');
      targetObj.setAttribute('id', 'targetObj');
      //use below if the pivot of 3D model is on the bottom. yMid = child.geometry.boundingBox.max.x - child.geometry.boundingBox.min.x
      //targetObj.setAttribute('position', '0 ' + (-yMid/2 * (1/(1.5*objScale))) + ' -1');
      targetObj.setAttribute('position', '0 0 -1');
      targetObj.setAttribute('rotation', '0 0 0');
      targetObj.setAttribute('scale', '' + (1/(1.5*objScale)) + ' ' + (1/(1.5*objScale)) + ' ' + (1/(1.5*objScale)));
      if (currentObj3D.getAttribute('src') != null) {
        targetObj.setAttribute('src', currentObj3D.getAttribute('src'));
        if (currentObj3D.getAttribute('mtl') != null) {
          targetObj.setAttribute('mtl', currentObj3D.getAttribute('mtl'));
        }
      } else if (currentObj3D.getAttribute('gltf-model') != null) {
        targetObj.setAttribute('gltf-model', currentObj3D.getAttribute('gltf-model'));
      }
      targetObj.setAttribute('onclick', 'targetObjClicked()');
      targetObj.setAttribute('animation', 'property: rotation; to: 0 360 0; loop:true; dur:10000; easing: linear;')
      document.querySelector("#cd-popup-object").appendChild(targetObj);

      // targetObjAnim = document.createElement('a-animation');
      // targetObjAnim.setAttribute('id', 'viewObjectAnim');
      // targetObjAnim.setAttribute('attribute', 'rotation');
      // targetObjAnim.setAttribute('dur', '10000');
      // targetObjAnim.setAttribute('to', '0 360 0');
      // targetObjAnim.setAttribute('repeat', 'indefinite');
      // targetObjAnim.setAttribute('easing', 'linear');
      // targetObj.appendChild(targetObjAnim);
      
      //recenter the pivot, just in case for geometry vertices are offset from the origin
      //to-do, if there are multiple meshes, need to find other way to center it.
      targetObj.addEventListener('model-loaded', function () {
        console.log("Is target object (" + targetObj.id + ") loaded: " + targetObj.hasLoaded);

        let box = new THREE.Box3().setFromObject(targetObj.object3D);
        let pos = targetObj.object3D.position;
        const center = new THREE.Vector3();
        let centerPlayer = player.object3D.worldToLocal(box.getCenter(center));
        targetObj.object3D.translateY(pos.y - (centerPlayer.y));
      }, false);
    
    testRaycaster();

    console.log("Detail Panel created");
  });

  //close the detail panel
  $('.cd-popup').on('click', function(event){
    closePanel(event);
  });

  //close the detail panel when clicking the esc keyboard button
  $(document).keyup(function(event){
      if(event.which=='27'){ closePanel(); }
    });

  //show Image
  $('#picture-button').on('click', function(){

    $('.displayImg').css('content', 'url(' + target.dataset.productImage + ')');
    pictureTrigger = pictureTrigger == true ? false : true;
    $('.wrap, #picture-button').toggleClass('active');
  });

  //add
  $('#cd-popup-add').on('click', function(){
    alert("Feature is coming soon!");
  });
});

//create panel
function createPanel() {
  let panel = document.createElement('a-image');
  panel.setAttribute('geometry', 'primitive: circle; radius: 2;');
  panel.setAttribute('opacity', '0.8');
  panel.setAttribute('src', '#panel-background');
  panel.setAttribute('width', '1.5');
  panel.setAttribute('height', '1.5');
  panel.setAttribute('position', '0 0 -1.5');
  panel.setAttribute('rotation', '0 0 0');
  document.querySelector("#cd-popup-object").appendChild(panel);

  let brandName = document.createElement("P");
  let brandNameText = document.createTextNode(target.dataset.brandName);
  brandName.appendChild(brandNameText);
  document.querySelector(".cd-popup-info-container").appendChild(brandName);  
  let productName = document.createElement("P");
  let productNameText = document.createTextNode(target.dataset.productName);
  productName.appendChild(productNameText);
  document.querySelector(".cd-popup-info-container").appendChild(productName);  
}

//close the detail panel
function closePanel(event) {
  //var obj = document.getElementById("detail-panel").innerHTML = "";
  if( $(event.target).is('.cd-popup-close') || $(event.target).is('#cd-popup-close')) { 
    // || $(event.target).is('.cd-popup')
    event.preventDefault();
    $(event.currentTarget).removeClass('is-visible');

    $('#cd-popup-object').empty();
    $('.cd-popup-info-container').empty();
    if (pictureTrigger) {
      $('.wrap, #picture-button').toggleClass('active');
      pictureTrigger = false;
    }
    $('#detail-panel-menu').hide();
    $('#menu').show();
    console.log("Detail Panel closed");
  }
}

function targetObjClicked() {
  console.log("target objected is clicked!!!!");
}

function testRaycaster() {
  let raycasterEl = AFRAME.scenes[0].querySelector('[raycaster]');
  let origin = raycasterEl.components.raycaster.raycaster.ray.origin;
  console.log(raycasterEl.components.raycaster.intersectedEls);
  console.log(raycasterEl.components.raycaster.objects);

}

//refreshing the raycaster.
function refreshRaycaster() {
  //To-do, need to use above raycaster.objects to manually add/remove objects, otherwise raycaster will not work properly
  let raycasterEl = AFRAME.scenes[0].querySelector('[raycaster]');
  raycasterEl.components.raycaster.refreshObjects();
}

//repositioning object
function repositionObject(object) {
  //Use following if repositioning "object"
  targetObj = document.querySelector("#" + object.target.id);
  prevTargetObjPos = targetObj.getAttribute('position');
  prevTargetObjRot = targetObj.getAttribute('rotation');
  targetObj.setAttribute('position', '0 -0.3 -1');
  targetObj.setAttribute('rotation', '-90 0 0');
  targetObj.setAttribute('scale', '0.5 0.5 0.5');
  document.querySelector("#cd-popup-object").appendChild(targetObj);
}

function loadObjectThree(path) {
  //load 3d object by THREE.js
  let loader = new THREE.OBJLoader();
  loader.load(path instanceof String, function (tempObject) {
    console.log(tempObject);
    tempObject.traverse( function ( child ) {
        if ( child instanceof THREE.Mesh ) {
            // child.geometry.computeBoundingBox();
            // var bb = child.geometry.boundingBox;
            // yOffSet = bb.max.y - bb.min.y;

            // targetObj.addEventListener('loaded', function () {
            //   console.log("View Object is loaded");
            // });
        }
    });
    scene.add(tempObject);
  });
}