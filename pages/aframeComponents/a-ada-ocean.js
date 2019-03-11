/**
 * Based on https://github.com/mrdoob/three.js/blob/dev/examples/webgl_shaders_ocean.html
 * Requires:
 *
 *	'https://cdn.rawgit.com/mrdoob/three.js/82bd697ef06acf5c4173775abe053d7a499a6722/examples/js/Mirror.js',
 *	'https://cdn.rawgit.com/mrdoob/three.js/82bd697ef06acf5c4173775abe053d7a499a6722/examples/js/WaterShader.js'
 *
 */


// <a-ada-ocean position="0 0 0" src="#water-normal" opacity="0.6" width="1000" depth="1000"></a-ada-ocean>

function colorParse(str) {
	return (new THREE.Color(str)).getHex();
}

AFRAME.registerComponent('a-ada-ocean', {

	schema: {
		src: { type: 'src' },
		width: { default: 10000 },
		height: { default: 10000 },
		distortionScale: { default: 4 },
		opacity: {
			default: 1.0,
			min: 0.5, max: 1
		},
		srcHeight: { default: 512 },
		srcWidth: { default: 512 },
		sunDirection: {
			type: 'vec3',
     		default: { x: 1, y: 1, z: 1 }
		},
		sunColor: {
			default: '#ffffff',
			parse: colorParse
		},
		waterColor: {
			default: '#ffffff',
			parse: colorParse
		},
		oceanLight: {
			type: 'selector'
		}
	},

	init: function () {
		this.water = null;
	},

	update: function () {
		this.water = undefined;
		// this.el.setObject3D(null);
	},

	tick: function (time) {
		if (this.water) {
			this.water.material.uniforms.time.value += 1.0/300.0;
		} else if (
			this.el.sceneEl.renderer &&
			this.el.sceneEl.camera
		) {
			var waterGeometry = new THREE.PlaneBufferGeometry( this.data.width, this.data.height );

			water = new THREE.Water( waterGeometry, {
				textureWidth: this.data.srcHeight,
				textureHeight: this.data.srcWidth,
				waterNormals: new THREE.TextureLoader().load( '/static/resources/img/waternormals.jpg', function ( texture ) {
							texture.wrapS = texture.wrapT = THREE.RepeatWrapping;
				}),
				alpha: 	this.data.opacity,
				sunDirection: this.data.oceanLight.getAttribute('position').clone().normalize(),
				sunColor: this.data.sunColor,
				waterColor: this.data.waterColor,
				distortionScale: this.data.distortionScale,
				fog: true
			} );
			water.rotation.x = - Math.PI * 0.5;
			water.material.uniforms.size.value = 5;

			this.water = water;
			this.el.setObject3D('mesh', water);

			//Skybox
			var sky = new THREE.Sky();
			sky.scale.setScalar( 10000 );
			var test1 = document.createElement('a-entity');
			test1.setObject3D('mesh', sky);
			this.el.sceneEl.appendChild(test1);

			var skyUniforms = sky.material.uniforms;
			skyUniforms[ "turbidity" ].value = 10;
			skyUniforms[ "rayleigh" ].value = 2;
			skyUniforms[ "luminance" ].value = 1;
			skyUniforms[ "mieCoefficient" ].value = 0.005;
			skyUniforms[ "mieDirectionalG" ].value = 0.8;

			var parameters = {
					distance: 400,
					inclination: 0.1,
					azimuth: 0.4
			};

			var cubeCamera = new THREE.CubeCamera( 1, 20000, 256 );
			cubeCamera.renderTarget.texture.generateMipmaps = true;
			cubeCamera.renderTarget.texture.minFilter = THREE.LinearMipMapLinearFilter;

			var currLight = this.data.oceanLight;

			function updateSun() {
				var theta = Math.PI * ( parameters.inclination - 0.5 );
				var phi = 2 * Math.PI * ( parameters.azimuth - 0.5 );
				currLight.setAttribute('position', parameters.distance * Math.cos( phi ) + ' ' + parameters.distance * Math.sin( phi ) * Math.sin( theta ) + ' ' + parameters.distance * Math.sin( phi ) * Math.cos( theta ));
				sky.material.uniforms[ "sunPosition" ].value = currLight.getAttribute('position');
				water.material.uniforms[ "sunDirection" ].value.copy( currLight.getAttribute('position') ).normalize();
			}
			updateSun();
		}
	},

	remove: function () {
		this.water.remove();
		this.water = undefined;
	}
});

AFRAME.registerPrimitive('a-ada-ocean', {
	defaultComponents: {
		'a-ada-ocean': {}
	},
	mappings: {
		width: 'a-ada-ocean.width',
		depth: 'a-ada-ocean.depth',
		color: 'a-ada-ocean.color',
		opacity: 'a-ada-ocean.opacity',
		oceanlight: 'a-ada-ocean.oceanLight',
		src: 'a-ada-ocean.src',
		'src-height': 'a-ada-ocean.srcWidth',
		'src-width': 'a-ada-ocean.srcHeight'
	}
});