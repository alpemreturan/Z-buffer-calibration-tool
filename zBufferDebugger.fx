/*
    ============================================================
    Z-Buffer Calibration TOOL (zBufferDebugger.fx): Universal Z-Buffer Calibration & Masking Tool
    ============================================================
    Developed by: alpemreturan
    Technical Art Tool for ReShade
    ============================================================
    Purpose: Precise depth map visualization and sky-threshold calibration.
    Amacı: Hassas derinlik haritası görselleştirme ve gökyüzü eşiği kalibrasyonu.
    ============================================================
*/

#include "ReShade.fxh"

// --- UI CONTROLS ---
uniform float Depth_Sensitivity < 
    ui_type = "slider"; 
    ui_min = 0.0; ui_max = 1.0; 
    ui_label = "Depth Sensitivity"; 
> = 0.01;

uniform bool Show_Depth_Visualizer < 
    ui_label = "Visualizer Mode (B&W)"; 
> = false;

uniform bool Enable_Mask_Overlay < 
    ui_label = "Show Mask Overlay (Magenta)"; 
> = true;

// --- VERTEX SHADER ---
void zBufferVS(in uint id : SV_VertexID, out float4 pos : SV_Position, out float2 texcoord : TexCoord) {
    texcoord.x = (id == 2) ? 2.0 : 0.0;
    texcoord.y = (id == 1) ? 2.0 : 0.0;
    pos = float4(texcoord * float2(2.0, -2.0) + float2(-1.0, 1.0), 0.0, 1.0);
}

// --- PIXEL SHADER ---
float3 zBufferPS(float4 pos : SV_Position, float2 texcoord : TexCoord) : SV_Target {
    float depth = ReShade::GetLinearizedDepth(texcoord);
    
    if (Show_Depth_Visualizer) return float3(depth, depth, depth);

    float skyMask = smoothstep(1.0 - Depth_Sensitivity, 1.0, depth);
    float3 color = tex2D(ReShade::BackBuffer, texcoord).rgb;

    if (Enable_Mask_Overlay) {
        return lerp(color, float3(1.0, 0.0, 1.0), skyMask * 0.7);
    }

    return color;
}

technique Z_Buffer_Calibration_Tool {
    pass {
        VertexShader = zBufferVS;
        PixelShader = zBufferPS;
    }
}