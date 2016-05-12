// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33243,y:32425,varname:node_3138,prsc:2|diff-7546-OUT,clip-2888-A;n:type:ShaderForge.SFN_Blend,id:7546,x:32989,y:32459,varname:node_7546,prsc:2,blmd:1,clmp:True|SRC-1447-OUT,DST-1609-OUT;n:type:ShaderForge.SFN_Multiply,id:1447,x:32677,y:32325,varname:node_1447,prsc:2|A-7680-OUT,B-7231-RGB;n:type:ShaderForge.SFN_Add,id:1609,x:32778,y:32916,varname:node_1609,prsc:2|A-753-RGB,B-7231-RGB;n:type:ShaderForge.SFN_Tex2d,id:753,x:32543,y:33020,ptovrint:False,ptlb:value blend,ptin:_valueblend,varname:node_753,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:7231,x:32481,y:32649,ptovrint:False,ptlb:maincolor1,ptin:_maincolor1,varname:node_7231,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07586192,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Blend,id:7680,x:32386,y:32167,varname:node_7680,prsc:2,blmd:1,clmp:True|SRC-1497-OUT,DST-7739-RGB;n:type:ShaderForge.SFN_Blend,id:1497,x:32108,y:32096,varname:node_1497,prsc:2,blmd:10,clmp:True|SRC-2888-RGB,DST-3979-RGB;n:type:ShaderForge.SFN_Tex2d,id:2888,x:31804,y:32076,ptovrint:False,ptlb:cloud1,ptin:_cloud1,varname:node_2888,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a2166e0bbac5b3544888ba15f73e6eea,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3979,x:31804,y:32308,ptovrint:False,ptlb:cloud2,ptin:_cloud2,varname:node_3979,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Blend,id:8783,x:32323,y:32358,varname:node_8783,prsc:2,blmd:10,clmp:True|SRC-2888-A,DST-3979-A;n:type:ShaderForge.SFN_Blend,id:4935,x:32275,y:32584,varname:node_4935,prsc:2,blmd:1,clmp:True|SRC-8783-OUT,DST-7739-A;n:type:ShaderForge.SFN_Tex2d,id:7739,x:31825,y:32538,ptovrint:False,ptlb:cloud3,ptin:_cloud3,varname:node_7739,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;proporder:753-7231-2888-3979-7739;pass:END;sub:END;*/

Shader "Shader Forge/wings1" {
    Properties {
        _valueblend ("value blend", 2D) = "white" {}
        _maincolor1 ("maincolor1", Color) = (0.07586192,1,0,1)
        _cloud1 ("cloud1", 2D) = "white" {}
        _cloud2 ("cloud2", 2D) = "white" {}
        _cloud3 ("cloud3", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _valueblend; uniform float4 _valueblend_ST;
            uniform float4 _maincolor1;
            uniform sampler2D _cloud1; uniform float4 _cloud1_ST;
            uniform sampler2D _cloud2; uniform float4 _cloud2_ST;
            uniform sampler2D _cloud3; uniform float4 _cloud3_ST;
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
                float3 normalDirection = i.normalDir;
                float4 _cloud1_var = tex2D(_cloud1,TRANSFORM_TEX(i.uv0, _cloud1));
                clip(_cloud1_var.a - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _cloud2_var = tex2D(_cloud2,TRANSFORM_TEX(i.uv0, _cloud2));
                float4 _cloud3_var = tex2D(_cloud3,TRANSFORM_TEX(i.uv0, _cloud3));
                float4 _valueblend_var = tex2D(_valueblend,TRANSFORM_TEX(i.uv0, _valueblend));
                float3 diffuseColor = saturate(((saturate((saturate(( _cloud2_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_cloud2_var.rgb-0.5))*(1.0-_cloud1_var.rgb)) : (2.0*_cloud2_var.rgb*_cloud1_var.rgb) ))*_cloud3_var.rgb))*_maincolor1.rgb)*(_valueblend_var.rgb+_maincolor1.rgb)));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _valueblend; uniform float4 _valueblend_ST;
            uniform float4 _maincolor1;
            uniform sampler2D _cloud1; uniform float4 _cloud1_ST;
            uniform sampler2D _cloud2; uniform float4 _cloud2_ST;
            uniform sampler2D _cloud3; uniform float4 _cloud3_ST;
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
                float3 normalDirection = i.normalDir;
                float4 _cloud1_var = tex2D(_cloud1,TRANSFORM_TEX(i.uv0, _cloud1));
                clip(_cloud1_var.a - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _cloud2_var = tex2D(_cloud2,TRANSFORM_TEX(i.uv0, _cloud2));
                float4 _cloud3_var = tex2D(_cloud3,TRANSFORM_TEX(i.uv0, _cloud3));
                float4 _valueblend_var = tex2D(_valueblend,TRANSFORM_TEX(i.uv0, _valueblend));
                float3 diffuseColor = saturate(((saturate((saturate(( _cloud2_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_cloud2_var.rgb-0.5))*(1.0-_cloud1_var.rgb)) : (2.0*_cloud2_var.rgb*_cloud1_var.rgb) ))*_cloud3_var.rgb))*_maincolor1.rgb)*(_valueblend_var.rgb+_maincolor1.rgb)));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _cloud1; uniform float4 _cloud1_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _cloud1_var = tex2D(_cloud1,TRANSFORM_TEX(i.uv0, _cloud1));
                clip(_cloud1_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
