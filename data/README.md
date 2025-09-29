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

# Class map of PanTS

```python
class_map_abdomenatlas_pants = {
    1: 'adrenal_gland_left',
    2: 'adrenal_gland_right',
    3: 'aorta',
    4: 'bladder',
    5: 'celiac_artery',
    6: 'colon',
    7: 'common_bile_duct',
    8: 'duodenum',
    9: 'femur_left',
    10: 'femur_right',
    11: 'gall_bladder',
    12: 'kidney_left',
    13: 'kidney_right',
    14: 'liver',
    15: 'lung_left',
    16: 'lung_right',
    17: 'pancreas',
    18: 'pancreas_body',
    19: 'pancreas_head',
    20: 'pancreas_tail',
    21: 'pancreatic_duct',
    22: 'postcava',
    23: 'prostate',
    24: 'spleen',
    25: 'stomach',
    26: 'superior_mesenteric_artery',
    27: 'veins',
    28: 'pancreatic_lesion'
}
```
