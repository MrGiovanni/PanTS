# File structure of PanTS

```
PanTS
├── metadata.xlsx
├── ImageTr
│   ├── PanTS_00000001/ct.nii.gz
│   ├── PanTS_00000002/ct.nii.gz
│   └── ...
├── ImageTe
│   ├── PanTS_00009001/ct.nii.gz
│   ├── PanTS_00009002/ct.nii.gz
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
│   │   ├── pancreatic_lesion.nii.gz
│   │   ├── aorta.nii.gz
│   │   ├── gall_bladder.nii.gz
│   │   └── ...
│   ├── PanTS_00000002/segmentations
│   │   ├── pancreatic_lesion.nii.gz
│   │   ├── aorta.nii.gz
│   │   ├── gall_bladder.nii.gz
│   │   └── ...
│   └── ...
├── LabelTe
│   ├── PanTS_00009001/segmentations
│   │   ├── pancreatic_lesion.nii.gz
│   │   ├── aorta.nii.gz
│   │   ├── gall_bladder.nii.gz
│   │   └── ...
│   ├── PanTS_00009002/segmentations
│   │   ├── pancreatic_lesion.nii.gz
│   │   ├── aorta.nii.gz
│   │   ├── gall_bladder.nii.gz
│   │   └── ...
│   └── ...
```
