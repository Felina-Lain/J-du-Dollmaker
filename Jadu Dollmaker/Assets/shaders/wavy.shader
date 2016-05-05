// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33242,y:32462,varname:node_3138,prsc:2|emission-4537-OUT,voffset-8970-OUT;n:type:ShaderForge.SFN_TexCoord,id:2514,x:31677,y:32585,varname:node_2514,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:2051,x:31887,y:32574,varname:node_2051,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-310-Y;n:type:ShaderForge.SFN_Lerp,id:4537,x:32754,y:32392,varname:node_4537,prsc:2|A-9134-RGB,B-7337-RGB,T-3923-OUT;n:type:ShaderForge.SFN_Color,id:7337,x:32546,y:32372,ptovrint:False,ptlb:node_7337,ptin:_node_7337,varname:node_7337,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8896551,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9134,x:32399,y:32360,ptovrint:False,ptlb:node_9134,ptin:_node_9134,varname:node_9134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Clamp01,id:3923,x:32852,y:32557,varname:node_3923,prsc:2|IN-9461-OUT;n:type:ShaderForge.SFN_Sin,id:1498,x:32526,y:32591,varname:node_1498,prsc:2|IN-6829-OUT;n:type:ShaderForge.SFN_Multiply,id:6829,x:32356,y:32591,varname:node_6829,prsc:2|A-4237-OUT,B-3724-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4237,x:32233,y:32482,ptovrint:False,ptlb:node_4237,ptin:_node_4237,varname:node_4237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:6;n:type:ShaderForge.SFN_Tau,id:2603,x:32113,y:32457,varname:node_2603,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9461,x:32691,y:32573,varname:node_9461,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1498-OUT;n:type:ShaderForge.SFN_Add,id:3724,x:32097,y:32595,varname:node_3724,prsc:2|A-2051-OUT,B-420-TTR;n:type:ShaderForge.SFN_Time,id:420,x:32001,y:32772,varname:node_420,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8970,x:32650,y:32849,varname:node_8970,prsc:2|A-3923-OUT,B-9877-OUT,C-1266-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9877,x:32271,y:32930,ptovrint:False,ptlb:node_9877,ptin:_node_9877,varname:node_9877,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.15;n:type:ShaderForge.SFN_NormalVector,id:1266,x:32271,y:32758,prsc:2,pt:False;n:type:ShaderForge.SFN_FragmentPosition,id:310,x:31677,y:32757,varname:node_310,prsc:2;proporder:7337-9134-4237-9877;pass:END;sub:END;*/

Shader "Shader Forge/NewShader3" {
    Properties {
        _node_7337 ("node_7337", Color) = (1,0.8896551,0,1)
        _node_9134 ("node_9134", Color) = (1,0,0,1)
        _node_4237 ("node_4237", Float ) = 6
        _node_9877 ("node_9877", Float ) = 0.15
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            uniform float4 _node_7337;
            uniform float4 _node_9134;
            uniform float _node_4237;
            uniform float _node_9877;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_420 = _Time + _TimeEditor;
                float node_3923 = saturate((sin((_node_4237*(mul(_Object2World, v.vertex).g.r+node_420.a)))*0.5+0.5));
                v.vertex.xyz += (node_3923*_node_9877*v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_420 = _Time + _TimeEditor;
                float node_3923 = saturate((sin((_node_4237*(i.posWorld.g.r+node_420.a)))*0.5+0.5));
                float3 emissive = lerp(_node_9134.rgb,_node_7337.rgb,node_3923);
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
            uniform float4 _TimeEditor;
            uniform float _node_4237;
            uniform float _node_9877;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_420 = _Time + _TimeEditor;
                float node_3923 = saturate((sin((_node_4237*(mul(_Object2World, v.vertex).g.r+node_420.a)))*0.5+0.5));
                v.vertex.xyz += (node_3923*_node_9877*v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
