//Maya ASCII 2014 scene
//Name: cham_lighting.ma
//Last modified: Fri, Dec 23, 2016 11:36:35 AM
//Codeset: 1258
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
requires "ngSkinTools" "1.0.960";
requires "Mayatomr" "2012.0m - 3.9.1.36 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -n "lightingSetup";
createNode transform -n "areaLight2" -p "lightingSetup";
	setAttr ".t" -type "double3" -2833.5608099247343 6642.4173850429779 6641.2685950769919 ;
	setAttr ".r" -type "double3" -43.331641457402647 -26.570116467411626 11.54442908765686 ;
	setAttr ".s" -type "double3" 3441.6411155861942 3441.6411155861942 3441.6411155861947 ;
	setAttr ".rp" -type "double3" 5.7314838135306033e-013 9.5524730225510064e-014 0 ;
	setAttr ".rpt" -type "double3" -5.6080257497455608e-014 8.1010390442812257e-014 
		1.9773706682196806e-013 ;
	setAttr ".sp" -type "double3" 1.6653345369377348e-016 2.7755575615628914e-017 0 ;
	setAttr ".spt" -type "double3" 5.7298184789936656e-013 9.5496974649894435e-014 0 ;
createNode areaLight -n "areaLightShape2" -p "areaLight2";
	addAttr -ci true -sn "rsEmitCausticPhotons" -ln "rsEmitCausticPhotons" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsEmitGIPhotons" -ln "rsEmitGIPhotons" -min 0 -max 1 -at "bool";
	addAttr -ci true -uac -sn "rsPhotonColor" -ln "rsPhotonColor" -at "float3" -nc 3;
	addAttr -ci true -sn "rsPhotonColorR" -ln "rsPhotonColorR" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonColorG" -ln "rsPhotonColorG" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonColorB" -ln "rsPhotonColorB" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonIntensity" -ln "rsPhotonIntensity" -dv 1 -min 0 -max 
		1.7976931348623157e+308 -at "double";
	addAttr -ci true -sn "rsCausticPhotons" -ln "rsCausticPhotons" -dv 10000 -min 0 
		-max 2147483647 -at "long";
	addAttr -ci true -sn "rsGIPhotons" -ln "rsGIPhotons" -dv 10000 -min 0 -max 2147483647 
		-at "long";
	addAttr -ci true -sn "rsLightShader" -ln "rsLightShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsAreaShape" -ln "rsAreaShape" -min 0 -max 3 -en "Rectangle:Disc:Sphere:Cylinder" 
		-at "enum";
	addAttr -ci true -sn "rsAreaVisible" -ln "rsAreaVisible" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rsAreaSamples" -ln "rsAreaSamples" -dv 16 -min 1 -max 2147483647 
		-smx 256 -at "long";
	setAttr -k off ".v";
	setAttr ".rdl" 1;
	setAttr ".col" 33.795301003684038;
	setAttr ".phi" 8000;
	setAttr ".algt" yes;
	setAttr ".atyp" 1;
createNode discLightLocator -n "_areaLight1_mrLoc" -p "areaLight2";
	setAttr -k off ".v";
createNode transform -n "renderCam" -p "lightingSetup";
	setAttr ".t" -type "double3" 457.98845339780854 218.71725585699778 772.90017815312535 ;
	setAttr ".r" -type "double3" -4.2000000000000171 33.999999999996845 0 ;
	setAttr ".s" -type "double3" 314.8260610995751 314.8260610995751 314.8260610995751 ;
	setAttr ".rp" -type "double3" -1.747635708923973e-014 0 0 ;
	setAttr ".rpt" -type "double3" 2.987800430870794e-015 2.9582283945787943e-031 9.7726548628227359e-015 ;
	setAttr ".sp" -type "double3" -5.5511151231257827e-017 0 0 ;
	setAttr ".spt" -type "double3" -1.7420845938008472e-014 0 0 ;
createNode camera -n "renderCamShape" -p "renderCam";
	addAttr -ci true -sn "rsCameraType" -ln "rsCameraType" -min 0 -max 4 -en "Standard:Fisheye=2:Spherical:Cylindrical" 
		-at "enum";
	addAttr -ci true -sn "rsFisheyeScaleX" -ln "rsFisheyeScaleX" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsFisheyeScaleY" -ln "rsFisheyeScaleY" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsCylindricalIsOrtho" -ln "rsCylindricalIsOrtho" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsCylindricalFovH" -ln "rsCylindricalFovH" -dv 360 -min 0 
		-max 360 -at "double";
	addAttr -ci true -sn "rsCylindricalFovV" -ln "rsCylindricalFovV" -dv 180 -min 0 
		-max 180 -at "double";
	addAttr -ci true -sn "rsCylindricalOrthoHeight" -ln "rsCylindricalOrthoHeight" -dv 
		100 -min 0 -max 3.4028234663852886e+038 -smn 1 -smx 500 -at "double";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsLensShader" -ln "rsLensShader" -at "message";
	addAttr -ci true -m -sn "rsLensShaderList" -ln "rsLensShaderList" -at "message";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".coi" 3.1222946236596516;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" -2.6653669177123156 12.532028292596664 10.965560014821788 ;
	setAttr ".dr" yes;
createNode transform -n "areaLight1" -p "lightingSetup";
	setAttr ".t" -type "double3" 3530.1946655066604 4943.9444816844671 4378.3548502914791 ;
	setAttr ".r" -type "double3" -30.715429684760956 50.59927462650095 16.379138454339152 ;
	setAttr ".s" -type "double3" 3441.6411155861952 3441.6411155861947 3441.6411155861942 ;
	setAttr ".rp" -type "double3" -3.3433655578928534e-013 1.0746532150369884e-013 -1.528395683608161e-012 ;
	setAttr ".rpt" -type "double3" -6.9001645084725569e-013 -1.1259335701104561e-012 
		9.1786604639997764e-013 ;
	setAttr ".sp" -type "double3" -9.7144514654701197e-017 3.1225022567582528e-017 -4.4408920985006262e-016 ;
	setAttr ".spt" -type "double3" -3.3423941127463064e-013 1.0743409648113126e-013 
		-1.527951594398311e-012 ;
createNode areaLight -n "areaLightShape1" -p "areaLight1";
	addAttr -ci true -sn "rsEmitCausticPhotons" -ln "rsEmitCausticPhotons" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsEmitGIPhotons" -ln "rsEmitGIPhotons" -min 0 -max 1 -at "bool";
	addAttr -ci true -uac -sn "rsPhotonColor" -ln "rsPhotonColor" -at "float3" -nc 3;
	addAttr -ci true -sn "rsPhotonColorR" -ln "rsPhotonColorR" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonColorG" -ln "rsPhotonColorG" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonColorB" -ln "rsPhotonColorB" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonIntensity" -ln "rsPhotonIntensity" -dv 1 -min 0 -max 
		1.7976931348623157e+308 -at "double";
	addAttr -ci true -sn "rsCausticPhotons" -ln "rsCausticPhotons" -dv 10000 -min 0 
		-max 2147483647 -at "long";
	addAttr -ci true -sn "rsGIPhotons" -ln "rsGIPhotons" -dv 10000 -min 0 -max 2147483647 
		-at "long";
	addAttr -ci true -sn "rsLightShader" -ln "rsLightShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsAreaShape" -ln "rsAreaShape" -min 0 -max 3 -en "Rectangle:Disc:Sphere:Cylinder" 
		-at "enum";
	addAttr -ci true -sn "rsAreaVisible" -ln "rsAreaVisible" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rsAreaSamples" -ln "rsAreaSamples" -dv 16 -min 1 -max 2147483647 
		-smx 256 -at "long";
	setAttr -k off ".v";
	setAttr ".rdl" 1;
	setAttr ".col" 21.046482138138433;
	setAttr ".phi" 8000;
	setAttr ".algt" yes;
	setAttr ".atyp" 1;
createNode discLightLocator -n "_areaLight1_mrLoc" -p "areaLight1";
	setAttr -k off ".v";
createNode mib_blackbody -n "mib_blackbody3";
	setAttr ".S01" 1.5;
createNode mia_exposure_simple -n "ox_lighting_mia_exposure_simple1";
	setAttr ".S02" 1;
	setAttr ".S03" 0;
createNode mib_blackbody -n "mib_blackbody1";
	setAttr ".S00" 5500;
	setAttr ".S01" 2;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 23 ".st";
select -ne :initialShadingGroup;
	addAttr -ci true -sn "rsSurfaceShader" -ln "rsSurfaceShader" -at "message";
	addAttr -ci true -sn "rsShadowShader" -ln "rsShadowShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsBumpmapShader" -ln "rsBumpmapShader" -at "message";
	addAttr -ci true -sn "rsDisplacementShader" -ln "rsDisplacementShader" -at "message";
	addAttr -ci true -sn "rsMaterialId" -ln "rsMaterialId" -min 0 -max 2147483647 -smn 
		0 -smx 100 -at "long";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	addAttr -ci true -sn "rsSurfaceShader" -ln "rsSurfaceShader" -at "message";
	addAttr -ci true -sn "rsShadowShader" -ln "rsShadowShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsBumpmapShader" -ln "rsBumpmapShader" -at "message";
	addAttr -ci true -sn "rsDisplacementShader" -ln "rsDisplacementShader" -at "message";
	addAttr -ci true -sn "rsMaterialId" -ln "rsMaterialId" -min 0 -max 2147483647 -smn 
		0 -smx 100 -at "long";
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 18 ".s";
select -ne :defaultTextureList1;
	setAttr -s 29 ".tx";
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 39 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "redshift";
	setAttr ".ep" 1;
select -ne :defaultResolution;
	setAttr ".w" 1280;
	setAttr ".h" 720;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultLightSet;
	setAttr -s 2 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".vac" 2;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "mib_blackbody3.S02" "areaLightShape2.cl";
connectAttr "ox_lighting_mia_exposure_simple1.msg" "renderCamShape.mils";
connectAttr "mib_blackbody1.S02" "areaLightShape1.cl";
connectAttr "areaLightShape2.ltd" ":lightList1.l" -na;
connectAttr "areaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "mib_blackbody3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "|lightingSetup|areaLight2|_areaLight1_mrLoc.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ox_lighting_mia_exposure_simple1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "|lightingSetup|areaLight1|_areaLight1_mrLoc.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "mib_blackbody1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "areaLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "areaLight1.iog" ":defaultLightSet.dsm" -na;
// End of cham_lighting.ma
