// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33676,y:32688,varname:node_3138,prsc:2|emission-5107-OUT,clip-1114-OUT;n:type:ShaderForge.SFN_Color,id:4871,x:33003,y:32351,ptovrint:False,ptlb:node_4871,ptin:_node_4871,varname:node_4871,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.006896496,c4:1;n:type:ShaderForge.SFN_Color,id:1190,x:33137,y:32329,ptovrint:False,ptlb:node_1190,ptin:_node_1190,varname:node_1190,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:5107,x:33207,y:32658,varname:node_5107,prsc:2|A-1190-RGB,B-4871-RGB,T-8403-OUT;n:type:ShaderForge.SFN_TexCoord,id:4439,x:31785,y:32872,varname:node_4439,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:3621,x:32012,y:32872,varname:node_3621,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4439-UVOUT;n:type:ShaderForge.SFN_Slider,id:8403,x:32488,y:32592,ptovrint:False,ptlb:Health,ptin:_Health,varname:node_8403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Length,id:5088,x:32352,y:32863,varname:node_5088,prsc:2|IN-3621-OUT;n:type:ShaderForge.SFN_Floor,id:4305,x:32525,y:32981,varname:node_4305,prsc:2|IN-5088-OUT;n:type:ShaderForge.SFN_OneMinus,id:8433,x:32692,y:32981,varname:node_8433,prsc:2|IN-4305-OUT;n:type:ShaderForge.SFN_Add,id:7187,x:32601,y:32767,varname:node_7187,prsc:2|A-3159-OUT,B-5088-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3159,x:32433,y:32752,ptovrint:False,ptlb:Value,ptin:_Value,varname:node_3159,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Floor,id:2184,x:32756,y:32767,varname:node_2184,prsc:2|IN-7187-OUT;n:type:ShaderForge.SFN_Multiply,id:1114,x:32970,y:32767,varname:node_1114,prsc:2|A-2184-OUT,B-8433-OUT,C-3783-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6526,x:31875,y:32559,varname:node_6526,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3621-OUT;n:type:ShaderForge.SFN_ArcTan2,id:2671,x:32059,y:32559,varname:node_2671,prsc:2,attp:2|A-6526-G,B-6526-R;n:type:ShaderForge.SFN_Ceil,id:9859,x:32449,y:32395,varname:node_9859,prsc:2|IN-1671-OUT;n:type:ShaderForge.SFN_Subtract,id:1671,x:32282,y:32520,varname:node_1671,prsc:2|A-5047-OUT,B-8403-OUT;n:type:ShaderForge.SFN_OneMinus,id:3783,x:32619,y:32395,varname:node_3783,prsc:2|IN-9859-OUT;n:type:ShaderForge.SFN_OneMinus,id:5047,x:32080,y:32398,varname:node_5047,prsc:2|IN-2671-OUT;proporder:4871-1190-8403-3159;pass:END;sub:END;*/

Shader "Shader Forge/lifebar" {
    Properties {
        _node_4871 ("node_4871", Color) = (0,1,0.006896496,1)
        _node_1190 ("node_1190", Color) = (1,0,0,1)
        _Health ("Health", Range(0, 1)) = 1
        _Value ("Value", Float ) = 0.3
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
            uniform float4 _node_4871;
            uniform float4 _node_1190;
            uniform float _Health;
            uniform float _Value;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_3621 = (i.uv0*2.0+-1.0);
                float node_5088 = length(node_3621);
                float2 node_6526 = node_3621.rg;
                clip((floor((_Value+node_5088))*(1.0 - floor(node_5088))*(1.0 - ceil(((1.0 - ((atan2(node_6526.g,node_6526.r)/6.28318530718)+0.5))-_Health)))) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = lerp(_node_1190.rgb,_node_4871.rgb,_Health);
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
            uniform float _Health;
            uniform float _Value;
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
                float2 node_3621 = (i.uv0*2.0+-1.0);
                float node_5088 = length(node_3621);
                float2 node_6526 = node_3621.rg;
                clip((floor((_Value+node_5088))*(1.0 - floor(node_5088))*(1.0 - ceil(((1.0 - ((atan2(node_6526.g,node_6526.r)/6.28318530718)+0.5))-_Health)))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
