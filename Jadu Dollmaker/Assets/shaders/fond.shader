// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33560,y:31730,varname:node_3138,prsc:2|diff-6636-OUT,spec-8417-OUT,alpha-2884-OUT;n:type:ShaderForge.SFN_Tex2d,id:2870,x:33119,y:32385,varname:node_2870,prsc:2,tex:857a8e9195b715848abbbbb790d378b1,ntxv:0,isnm:False|UVIN-8719-OUT,MIP-4268-OUT,TEX-342-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:342,x:32785,y:32496,ptovrint:False,ptlb:node_342,ptin:_node_342,varname:_node_342,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:857a8e9195b715848abbbbb790d378b1,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Append,id:8719,x:32890,y:32278,varname:node_8719,prsc:2|A-4268-OUT,B-5342-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5342,x:32629,y:32292,ptovrint:False,ptlb:node_5342,ptin:_node_5342,varname:_node_5342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Tex2d,id:7160,x:32187,y:32658,ptovrint:False,ptlb:node_7160,ptin:_node_7160,varname:_node_7160,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:6418,x:31681,y:32421,ptovrint:False,ptlb:slider,ptin:_slider,varname:_slider,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:7426,x:32366,y:32582,varname:node_7426,prsc:2|A-9848-OUT,B-7160-R;n:type:ShaderForge.SFN_RemapRange,id:9848,x:32198,y:32462,varname:node_9848,prsc:2,frmn:0,frmx:1,tomn:-0.7,tomx:0.5|IN-237-OUT;n:type:ShaderForge.SFN_OneMinus,id:237,x:32025,y:32462,varname:node_237,prsc:2|IN-6418-OUT;n:type:ShaderForge.SFN_RemapRange,id:4268,x:32568,y:32521,varname:node_4268,prsc:2,frmn:0,frmx:1,tomn:-5,tomx:4|IN-7426-OUT;n:type:ShaderForge.SFN_Tex2d,id:8505,x:32701,y:31447,ptovrint:False,ptlb:node_8505,ptin:_node_8505,varname:_node_8505,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:42fcd0f77ad6f5847bc1fc0e469ad1aa,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:8417,x:33582,y:32326,ptovrint:False,ptlb:node_8417,ptin:_node_8417,varname:_node_8417,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_RemapRange,id:7345,x:32466,y:31787,varname:node_7345,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9878-OUT;n:type:ShaderForge.SFN_Multiply,id:8649,x:33008,y:31632,varname:node_8649,prsc:2|A-8505-RGB,B-9013-OUT;n:type:ShaderForge.SFN_Color,id:8257,x:32488,y:31389,ptovrint:False,ptlb:color1,ptin:_color1,varname:_color1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5809,x:32466,y:31600,ptovrint:False,ptlb:color2,ptin:_color2,varname:_color2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1586208,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:9013,x:32701,y:31624,varname:node_9013,prsc:2|A-8257-RGB,B-5809-RGB,T-7345-OUT;n:type:ShaderForge.SFN_Multiply,id:6636,x:33185,y:31741,varname:node_6636,prsc:2|A-8649-OUT,B-2870-RGB;n:type:ShaderForge.SFN_Slider,id:9878,x:32051,y:31771,ptovrint:False,ptlb:slider2,ptin:_slider2,varname:_slider_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:2,max:2;n:type:ShaderForge.SFN_Slider,id:8252,x:32692,y:32057,ptovrint:False,ptlb:slider3,ptin:_slider3,varname:node_8252,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:2884,x:33152,y:31945,varname:node_2884,prsc:2|A-6619-R,B-8252-OUT;n:type:ShaderForge.SFN_Tex2d,id:6619,x:32760,y:31850,ptovrint:False,ptlb:node_6619,ptin:_node_6619,varname:node_6619,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;proporder:342-5342-7160-6418-8505-8417-8257-5809-9878-8252-6619;pass:END;sub:END;*/

Shader "Shader Forge/fond" {
    Properties {
        _node_342 ("node_342", 2D) = "black" {}
        _node_5342 ("node_5342", Float ) = 2
        _node_7160 ("node_7160", 2D) = "white" {}
        _slider ("slider", Range(-0.5, 1)) = 1
        _node_8505 ("node_8505", 2D) = "white" {}
        _node_8417 ("node_8417", Float ) = 0.5
        _color1 ("color1", Color) = (1,0,0,1)
        _color2 ("color2", Color) = (0.1586208,0,1,1)
        _slider2 ("slider2", Range(-1, 2)) = 2
        _slider3 ("slider3", Range(0, 1)) = 1
        _node_6619 ("node_6619", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _node_342; uniform float4 _node_342_ST;
            uniform float _node_5342;
            uniform sampler2D _node_7160; uniform float4 _node_7160_ST;
            uniform float _slider;
            uniform sampler2D _node_8505; uniform float4 _node_8505_ST;
            uniform float _node_8417;
            uniform float4 _color1;
            uniform float4 _color2;
            uniform float _slider2;
            uniform float _slider3;
            uniform sampler2D _node_6619; uniform float4 _node_6619_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _node_8505_var = tex2D(_node_8505,TRANSFORM_TEX(i.uv0, _node_8505));
                float4 _node_7160_var = tex2D(_node_7160,TRANSFORM_TEX(i.uv0, _node_7160));
                float node_4268 = ((((1.0 - _slider)*1.2+-0.7)+_node_7160_var.r)*9.0+-5.0);
                float2 node_8719 = float2(node_4268,_node_5342);
                float4 node_2870 = tex2Dlod(_node_342,float4(TRANSFORM_TEX(node_8719, _node_342),0.0,node_4268));
                float3 diffuseColor = ((_node_8505_var.rgb*lerp(_color1.rgb,_color2.rgb,(_slider2*2.0+-1.0)))*node_2870.rgb); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, _node_8417, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float4 _node_6619_var = tex2D(_node_6619,TRANSFORM_TEX(i.uv0, _node_6619));
                return fixed4(finalColor,(_node_6619_var.r*_slider3));
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _node_342; uniform float4 _node_342_ST;
            uniform float _node_5342;
            uniform sampler2D _node_7160; uniform float4 _node_7160_ST;
            uniform float _slider;
            uniform sampler2D _node_8505; uniform float4 _node_8505_ST;
            uniform float _node_8417;
            uniform float4 _color1;
            uniform float4 _color2;
            uniform float _slider2;
            uniform float _slider3;
            uniform sampler2D _node_6619; uniform float4 _node_6619_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _node_8505_var = tex2D(_node_8505,TRANSFORM_TEX(i.uv0, _node_8505));
                float4 _node_7160_var = tex2D(_node_7160,TRANSFORM_TEX(i.uv0, _node_7160));
                float node_4268 = ((((1.0 - _slider)*1.2+-0.7)+_node_7160_var.r)*9.0+-5.0);
                float2 node_8719 = float2(node_4268,_node_5342);
                float4 node_2870 = tex2Dlod(_node_342,float4(TRANSFORM_TEX(node_8719, _node_342),0.0,node_4268));
                float3 diffuseColor = ((_node_8505_var.rgb*lerp(_color1.rgb,_color2.rgb,(_slider2*2.0+-1.0)))*node_2870.rgb); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, _node_8417, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float4 _node_6619_var = tex2D(_node_6619,TRANSFORM_TEX(i.uv0, _node_6619));
                return fixed4(finalColor * (_node_6619_var.r*_slider3),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
