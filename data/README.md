# File structure of PanTS

```
PanTS
├── metadata.xlsx
├── ImageTr
│   ├── PanTS_00000001/ct.npz
│   ├── PanTS_00000002/ct.npz
│   └── ...
├── ImageTe
│   ├── PanTS_00009001/ct.npz
│   ├── PanTS_00009002/ct.npz
│   └── ...
├── ReportTr
│   ├── PanTS_00000001/report.pdf
│   ├── PanTS_00000002/report.pdf
│   └── ...
├── ReportTe
│   ├── PanTS_00009001/report.pdf
│   ├── PanTS_00009002/report.pdf
│   └── ...
├── LabelTr
│   ├── PanTS_00000001/segmentations
│   │   ├── pancreatic_lesion.npz
│   │   ├── aorta.npz
│   │   ├── gall_bladder.npz
│   │   └── ...
│   ├── PanTS_00000002/segmentations
│   │   ├── pancreatic_lesion.npz
│   │   ├── aorta.npz
│   │   ├── gall_bladder.npz
│   │   └── ...
│   └── ...
├── LabelTe
│   ├── PanTS_00009001/segmentations
│   │   ├── pancreatic_lesion.npz
│   │   ├── aorta.npz
│   │   ├── gall_bladder.npz
│   │   └── ...
│   ├── PanTS_00009002/segmentations
│   │   ├── pancreatic_lesion.npz
│   │   ├── aorta.npz
│   │   ├── gall_bladder.npz
│   │   └── ...
│   └── ...
```