# SRR + T-patch flex sensor — KiCad export

Generated from `.../Model/Parameters.json` and `.../Model/3D/ModelHistory.json`
inside the CST project (the .cst itself is a binary container; there were no
.dsx files in the project — these JSON companions carry the same parametric
geometry, so they were used instead).

## Files
- `gen_footprint.py` — single source of truth, regenerate both outputs from here.
- `SRR_Tpatch_FlexSensor.kicad_mod` — standalone footprint (drop into a KiCad footprint library).
- `SRR_Tpatch_FlexSensor.kicad_pcb` — full board with the footprint placed, board outline, and a documented 3-copper-layer flex stackup.

## Layer mapping (flat, rectangular 44.2 x 44.2 mm board — not wrapped)
| KiCad layer | CST shape | Geometry |
|---|---|---|
| F.Cu | `SRR_Circle` | split ring, outer r=16.6mm, inner r=14.1mm, 1.6mm gap |
| In1.Cu | `Microstrip_horizontal` + `Microstrip_vertical` | T-shaped feed: 16x4mm crossbar + 1.6x20mm stem |
| B.Cu | `GND` | full ground plane |
| pad 1 | `needle` (probe/feed pin) | through-hole pad at board center (22.1, 22.1), isolated from GND |

## Material recommendation for JLCPCB
Your CST model uses Galinstan (liquid metal) traces in PDMS — not fabricable
by JLCPCB. For a bendable board that JLCPCB *can* build, use their standard
flex process:

- **Substrate**: Polyimide (PI) core, ~25µm (1 mil) per dielectric layer
- **Conductor**: Rolled annealed (RA) copper, 1oz (35µm) — RA copper has far
  better flex fatigue life than electrodeposited (ED) copper; specify this
  explicitly in the JLC order notes
- **Coverlay**: PI + adhesive coverlay top and bottom (not solder mask) for
  the two outer copper layers
- **No stiffener** — you want it to keep bending, so skip stiffener regions
  entirely unless you need a rigid zone for a connector

**Caveat on layer count**: JLCPCB's instant-quote flex catalog only lists
1- and 2-layer FPC. A true 3-copper-layer flex board (what this footprint
represents) falls under their multilayer/rigid-flex process, which needs a
custom quote (upload the Gerbers and request a manual quote, or contact
support) — expect higher cost and longer lead time than catalog FPC. If
that's not acceptable, the practical fallback is two bonded 2-layer flex
boards (SRR+feed on one, GND on the other laminated back-to-back), or
dropping to 2 layers by moving GND to a via-stitched copper fill on the same
layer as the feed line.

## Next steps
1. Open `SRR_Tpatch_FlexSensor.kicad_pcb` in KiCad 7/8, review layers/DRC.
2. In DRC, replace the `fp_rect` GND plane with a proper zone (copper pour)
   on B.Cu so KiCad automatically clears it around the feed pad.
3. Export Gerbers (File > Fabrication Outputs > Gerbers) and drill file for
   JLCPCB upload, or send for the multilayer-flex custom quote as noted above.
