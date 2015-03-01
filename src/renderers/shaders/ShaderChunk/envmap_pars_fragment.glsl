#ifdef USE_ENVMAP

	uniform float reflectivity;

	#ifdef ENVMAP_TYPE_CUBE
		uniform samplerCube envMap;
	#else
		uniform sampler2D envMap;
	#endif

	#ifdef USE_PARALLAX_CORRECTION
		uniform vec3 cubeSize;
		uniform vec3 cubePos; 
	#endif

	uniform float flipEnvMap;

	#if defined( USE_BUMPMAP ) || defined( USE_NORMALMAP ) || defined( PHONG )

		uniform float refractionRatio;

	#else

		varying vec3 vReflect;

	#endif

#endif
