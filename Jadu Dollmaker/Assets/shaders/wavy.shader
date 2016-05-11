// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33242,y:32462,varname:node_3138,prsc:2|emission-4537-OUT,clip-6275-A;n:type:ShaderForge.SFN_TexCoord,id:2514,x:31677,y:32585,varname:node_2514,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:2051,x:31887,y:32574,varname:node_2051,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-310-Y;n:type:ShaderForge.SFN_Lerp,id:4537,x:32896,y:32251,varname:node_4537,prsc:2|A-4212-OUT,B-5020-OUT,T-3923-OUT;n:type:ShaderForge.SFN_Color,id:7337,x:32412,y:32386,ptovrint:False,ptlb:maincolor2,ptin:_maincolor2,varname:node_7337,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8896551,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9134,x:32408,y:32016,ptovrint:False,ptlb:maincolor1,ptin:_maincolor1,varname:node_9134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Clamp01,id:3923,x:32852,y:32557,varname:node_3923,prsc:2|IN-9461-OUT;n:type:ShaderForge.SFN_Sin,id:1498,x:32526,y:32591,varname:node_1498,prsc:2|IN-6829-OUT;n:type:ShaderForge.SFN_Multiply,id:6829,x:32356,y:32591,varname:node_6829,prsc:2|A-4237-OUT,B-3724-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4237,x:32233,y:32482,ptovrint:False,ptlb:node_4237,ptin:_node_4237,varname:node_4237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_Tau,id:2603,x:32113,y:32457,varname:node_2603,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9461,x:32691,y:32573,varname:node_9461,prsc:2,frmn:-1,frmx:1,tomn:-2,tomx:1|IN-1498-OUT;n:type:ShaderForge.SFN_Add,id:3724,x:32097,y:32595,varname:node_3724,prsc:2|A-2051-OUT,B-420-T,C-2985-T;n:type:ShaderForge.SFN_Time,id:420,x:31861,y:32784,varname:node_420,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8970,x:32650,y:32849,varname:node_8970,prsc:2|A-3923-OUT,B-9877-OUT,C-1266-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9877,x:32271,y:32930,ptovrint:False,ptlb:node_9877,ptin:_node_9877,varname:node_9877,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_NormalVector,id:1266,x:32271,y:32758,prsc:2,pt:False;n:type:ShaderForge.SFN_FragmentPosition,id:310,x:31677,y:32757,varname:node_310,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4212,x:32602,y:32168,varname:node_4212,prsc:2|A-9134-RGB,B-6275-RGB;n:type:ShaderForge.SFN_Tex2d,id:6275,x:32252,y:32188,ptovrint:False,ptlb:node_6275,ptin:_node_6275,varname:node_6275,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4a2124fd66210ad4aa17228335a85979,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5020,x:32624,y:32330,varname:node_5020,prsc:2|A-6275-RGB,B-7337-RGB;n:type:ShaderForge.SFN_Time,id:2985,x:31845,y:32951,varname:node_2985,prsc:2;proporder:7337-9134-4237-9877-6275;pass:END;sub:END;*/

Shader "Shader Forge/wavy" {
    Properties {
        _maincolor2 ("maincolor2", Color) = (1,0.8896551,0,1)
        _maincolor1 ("maincolor1", Color) = (1,0,0,1)
        _node_4237 ("node_4237", Float ) = 8
        _node_9877 ("node_9877", Float ) = 2
        _node_6275 ("node_6275", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _maincolor2;
            uniform float4 _maincolor1;
            uniform float _node_4237;
            uniform sampler2D _node_6275; uniform float4 _node_6275_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _node_6275_var = tex2D(_node_6275,TRANSFORM_TEX(i.uv0, _node_6275));
                clip(_node_6275_var.a - 0.5);
////// Lighting:
////// Emissive:
                float4 node_420 = _Time + _TimeEditor;
                float4 node_2985 = _Time + _TimeEditor;
                float node_3923 = saturate((sin((_node_4237*(i.posWorld.g.r+node_420.g+node_2985.g)))*1.5+-0.5));
                float3 emissive = lerp((_maincolor1.rgb*_node_6275_var.rgb),(_node_6275_var.rgb*_maincolor2.rgb),node_3923);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
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
            uniform sampler2D _node_6275; uniform float4 _node_6275_ST;
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
                float4 _node_6275_var = tex2D(_node_6275,TRANSFORM_TEX(i.uv0, _node_6275));
                clip(_node_6275_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
