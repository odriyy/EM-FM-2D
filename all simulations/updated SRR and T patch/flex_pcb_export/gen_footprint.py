import math, os

r_SRR, w_ch, g_slot, Z_mid = 16.6, 2.5, 0.8, 22.1
W_sub = L_sub = 44.2
L1, L2, L3, L4 = 20.0, 1.6, 4.0, 16.0

cx, cy = W_sub / 2, Z_mid
r_out, r_in = r_SRR, r_SRR - w_ch
half_ang = math.degrees(math.asin(g_slot / r_SRR))
gap_start, gap_end = 90 - half_ang, 90 + half_ang


def pt(r, deg):
    a = math.radians(deg)
    return (round(cx + r * math.cos(a), 4), round(cy + r * math.sin(a), 4))


srr_pts = []
deg, step = gap_end, 5
while deg <= gap_start + 360:
    srr_pts.append(pt(r_out, deg))
    deg += step
srr_pts.append(pt(r_out, gap_start + 360))
srr_pts.append(pt(r_in, gap_start + 360))
deg = gap_start + 360
while deg >= gap_end:
    srr_pts.append(pt(r_in, deg))
    deg -= step
srr_pts.append(pt(r_in, gap_end))

z0 = Z_mid - r_SRR + w_ch / 2 - L3 / 2
bar = [(cx - L4 / 2, z0), (cx + L4 / 2, z0), (cx + L4 / 2, z0 + L3), (cx - L4 / 2, z0 + L3)]
stem = [(cx - L2 / 2, z0 + L3), (cx + L2 / 2, z0 + L3), (cx + L2 / 2, z0 + L3 + L1), (cx - L2 / 2, z0 + L3 + L1)]
feed = (cx, cy)


def poly_pts(pts):
    return "\n".join(f'\t\t\t(xy {x} {y})' for x, y in pts)


fp = f'''(footprint "SRR_Tpatch_FlexSensor" (version 20221018) (generator pcbnew)
  (layer "F.Cu")
  (attr smd)
  (descr "3-layer flex sensor: F.Cu=SRR ring, In1.Cu=T-patch feed, B.Cu=GND. Derived from CST project parameters (r_SRR=16.6mm, w_channel=2.5mm, g_slot=0.8mm, L1=20mm, L2=1.6mm, L3=4mm, L4=16mm).")
  (fp_text reference "REF**" (at {cx} -2) (layer "F.SilkS") (effects (font (size 1 1) (thickness 0.15))))
  (fp_text value "SRR_Tpatch_FlexSensor" (at {cx} {L_sub + 2}) (layer "F.Fab") (effects (font (size 1 1) (thickness 0.15))))

  (fp_poly
    (pts
{poly_pts(srr_pts)}
    )
    (layer "F.Cu") (width 0) (fill solid)
  )

  (fp_poly
    (pts
{poly_pts(bar)}
    )
    (layer "In1.Cu") (width 0) (fill solid)
  )
  (fp_poly
    (pts
{poly_pts(stem)}
    )
    (layer "In1.Cu") (width 0) (fill solid)
  )

  (fp_rect (start 0 0) (end {W_sub} {L_sub}) (layer "B.Cu") (width 0) (fill solid))

  (fp_rect (start 0 0) (end {W_sub} {L_sub}) (layer "Edge.Cuts") (width 0.1))

  (pad "1" thru_hole circle (at {feed[0]} {feed[1]}) (size 1.2 1.2) (drill 0.6)
    (layers "*.Cu")
    (clearance 0.5)
    (zone_connect 0)
  )
)
'''

out_dir = os.path.dirname(os.path.abspath(__file__))
with open(os.path.join(out_dir, "SRR_Tpatch_FlexSensor.kicad_mod"), "w") as f:
    f.write(fp)

pcb = f'''(kicad_pcb (version 20221018) (generator pcbnew)

  (general
    (thickness 0.135)
  )

  (paper "A4")

  (layers
    (0 "F.Cu" signal)
    (1 "In1.Cu" signal)
    (2 "B.Cu" signal)
    (9 "F.Adhes" user)
    (11 "F.SilkS" user)
    (13 "F.Fab" user)
    (44 "Edge.Cuts" user)
  )

  (setup
    (stackup
      (layer "F.SilkS" (type "Top Silk Screen"))
      (layer "F.Cu" (type "copper") (thickness 0.035) (material "Rolled Annealed Copper (RA)"))
      (layer "dielectric 1" (type "core") (thickness 0.025) (material "Polyimide (PI)") (epsilon_r 3.4) (loss_tangent 0.002))
      (layer "In1.Cu" (type "copper") (thickness 0.035) (material "Rolled Annealed Copper (RA)"))
      (layer "dielectric 2" (type "core") (thickness 0.025) (material "Polyimide (PI)") (epsilon_r 3.4) (loss_tangent 0.002))
      (layer "B.Cu" (type "copper") (thickness 0.035) (material "Rolled Annealed Copper (RA)"))
      (copper_finish "ENIG")
      (dielectric_constraints no)
    )
    (pad_to_mask_clearance 0)
  )

  (net 0 "")

  (footprint "SRR_Tpatch_FlexSensor" (layer "F.Cu")
    (at 0 0)
    (descr "3-layer flex sensor: F.Cu=SRR ring, In1.Cu=T-patch feed, B.Cu=GND plane. Geometry from CST Parameters.json (r_SRR=16.6, w_channel=2.5, g_slot=0.8, L1=20, L2=1.6, L3=4, L4=16).")
    (attr smd)
    (fp_text reference "REF**" (at {cx} -2) (layer "F.SilkS") (effects (font (size 1 1) (thickness 0.15))))
    (fp_text value "SRR_Tpatch_FlexSensor" (at {cx} {L_sub + 2}) (layer "F.Fab") (effects (font (size 1 1) (thickness 0.15))))

    (fp_poly
      (pts
{poly_pts(srr_pts)}
      )
      (layer "F.Cu") (width 0) (fill solid)
    )

    (fp_poly
      (pts
{poly_pts(bar)}
      )
      (layer "In1.Cu") (width 0) (fill solid)
    )
    (fp_poly
      (pts
{poly_pts(stem)}
      )
      (layer "In1.Cu") (width 0) (fill solid)
    )

    (fp_rect (start 0 0) (end {W_sub} {L_sub}) (layer "B.Cu") (width 0) (fill solid))
    (fp_rect (start 0 0) (end {W_sub} {L_sub}) (layer "Edge.Cuts") (width 0.1))

    (pad "1" thru_hole circle (at {feed[0]} {feed[1]}) (size 1.2 1.2) (drill 0.6)
      (layers "*.Cu")
      (clearance 0.5)
    )
  )

  (gr_rect (start 0 0) (end {W_sub} {L_sub}) (layer "Edge.Cuts") (width 0.1))
)
'''

with open(os.path.join(out_dir, "SRR_Tpatch_FlexSensor.kicad_pcb"), "w") as f:
    f.write(pcb)

print("wrote footprint, SRR pts:", len(srr_pts))
print("bar", bar)
print("stem", stem)
print("feed", feed)
