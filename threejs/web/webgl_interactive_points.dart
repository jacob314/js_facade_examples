import 'package:threejs/three.dart' as THREE;
import 'package:js/js_util.dart' as js_util;
import 'dart:html';
import "dart:typed_data";

var renderer;
THREE.Scene scene;
THREE.PerspectiveCamera camera;

THREE.Points particles;
var uniforms;

var PARTICLE_SIZE = 20.0;

THREE.Raycaster raycaster;
List<Intersection> intersects;
var mouse;
int INTERSECTED;

init() {
  var container = document.getElementById('container');

  scene = new THREE.Scene();

  camera = new THREE.PerspectiveCamera(
      45, window.innerWidth / window.innerHeight, 1, 10000);
  camera.position.z = 250;

  //

  var geometry1 = new THREE.BoxGeometry(200, 200, 200, 16, 16, 16);
  var vertices = geometry1.vertices;

  var positions = new Float32List(vertices.length * 3);
  var colors = new Float32List(vertices.length * 3);
  var sizes = new Float32List(vertices.length);

  var vertex;
  var color = new THREE.Color();

  for (var i = 0, l = vertices.length; i < l; i++) {
    vertex = vertices[i];
    vertex.toArray(positions, i * 3);

    color
      ..setHSL(0.01 + 0.1 * (i / l), 1.0, 0.5)
      ..toArray(colors, i * 3);

    sizes[i] = PARTICLE_SIZE * 0.5;
  }

  var geometry = new THREE.BufferGeometry();
  geometry.addAttribute('position', new THREE.BufferAttribute(positions, 3));
  geometry.addAttribute('customColor', new THREE.BufferAttribute(colors, 3));
  geometry.addAttribute('size', new THREE.BufferAttribute(sizes, 1));

  //

  var material = new THREE.ShaderMaterial(new THREE.ShaderMaterialParameters(
      uniforms: js_util.jsify({
        'color': new THREE.IUniform(value: new THREE.Color(0xffffff)),
        'texture': new THREE.IUniform(
            value: new THREE.TextureLoader().load("textures/sprites/disc.png"))
      }),
      vertexShader: document.getElementById('vertexshader').text,
      fragmentShader: document.getElementById('fragmentshader').text,
      alphaTest: 0.9));

  //

  particles = new THREE.Points(geometry, material);
  scene.add(particles);

  //

  renderer = new THREE.WebGLRenderer()
    ..setPixelRatio(window.devicePixelRatio)
    ..setSize(window.innerWidth, window.innerHeight);
  container.append(renderer.domElement);

  //

  raycaster = new THREE.Raycaster();
  mouse = new THREE.Vector2();

  window.onResize.listen(onWindowResize);
  document.onMouseMove.listen(onDocumentMouseMove);
}

onDocumentMouseMove(MouseEvent event) {
  event.preventDefault();

  mouse.x = (event.client.x / window.innerWidth) * 2 - 1;
  mouse.y = -(event.client.y / window.innerHeight) * 2 + 1;
}

onWindowResize([_]) {
  camera.aspect = window.innerWidth / window.innerHeight;
  camera.updateProjectionMatrix();

  renderer.setSize(window.innerWidth, window.innerHeight);
}

animate([_]) {
  window.requestAnimationFrame(animate);

  render();
}

render() {
  particles.rotation.x += 0.0005;
  particles.rotation.y += 0.001;

  var geometry = particles.geometry;
  var attributes = geometry.attributes;

  raycaster.setFromCamera(mouse, camera);

  intersects = raycaster.intersectObject(particles);

  if (intersects.length > 0) {
    if (INTERSECTED != intersects[0].index) {
      if (INTERSECTED != null) {
        attributes.size.array[INTERSECTED] = PARTICLE_SIZE;
      }

      INTERSECTED = intersects[0].index;

      attributes.size.array[INTERSECTED ?? 0] = PARTICLE_SIZE * 1.25;
      attributes.size.needsUpdate = true;
    }
  } else if (INTERSECTED != null) {
    attributes.size.array[INTERSECTED] = PARTICLE_SIZE;
    attributes.size.needsUpdate = true;
    INTERSECTED = null;
  }

  renderer.render(scene, camera);
}

void main() {
  init();
  animate();
}
