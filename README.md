<div align="center">
  <img src="document/fig_dataset_characteristics.png" alt="PanTS" width=100%>
</div>

<h1 align="center" style="font-size: 60px; margin-bottom: 4px">PanTS: The Pancreatic Tumor Segmentation Dataset</h1>

<div align="center">


[![pants dataset](https://img.shields.io/badge/PanTS-Dataset-FF4040.svg)](https://github.com/MrGiovanni/PanTS?tab=readme-ov-file#pants-dataset)
[![pants benchmark](https://img.shields.io/badge/PanTS-Benchmark-FF4040.svg)](https://github.com/MrGiovanni/PanTS?tab=readme-ov-file#pants-benchmark)
[![pants model](https://img.shields.io/badge/PanTS-Model-FF4040.svg)](https://github.com/MrGiovanni/PanTS?tab=readme-ov-file#pants-model) <br/>
![visitors](https://visitor-badge.laobi.icu/badge?page_id=MrGiovanni/PanTS&left_color=%2363C7E6&right_color=%23CEE75F)
[![GitHub Repo stars](https://img.shields.io/github/stars/MrGiovanni/PanTS?style=social)](https://github.com/MrGiovanni/PanTS/stargazers) 
<a href="https://twitter.com/bodymaps317">
        <img src="https://img.shields.io/twitter/follow/BodyMaps?style=social" alt="Follow on Twitter" />
</a><br/>  

</div>


We present **PanTS** (The Pancreatic Tumor Segmentation Dataset) recently created by JHU. It is a large-scale, multi-institutional dataset, containing **36,390** three-dimensional CT volumes from **145** medical centers, with expert-validated, voxel-wise annotations of over **993,000** anatomical structures, covering pancreatic tumors, pancreas head, body, and tail, and 24 surrounding anatomical structures such as *vascular/skeletal structures and abdominal/thoracic organs*. 

As the largest and most comprehensive resource of its kind, PanTS offers a new benchmark for developing and evaluating AI models in pancreatic CT analysis.

# Paper

<b>PanTS: The Pancreatic Tumor Segmentation Dataset</b> <br/>
[Wenxuan Li](https://scholar.google.com/citations?hl=en&user=tpNZM2YAAAAJ), [Xinze Zhou](), [Qi Chen](), ..., [Alan Yuille](https://www.cs.jhu.edu/~ayuille/), [Zongwei Zhou](https://www.zongweiz.com/)<sup>★</sup> <br/>
Johns Hopkins University <br/>
NeurIPS 2025 <br/>

<a href='https://www.zongweiz.com/dataset'><img src='https://img.shields.io/badge/Project-Page-Green'></a> <a href='https://www.cs.jhu.edu/~zongwei/publication/li2025pants.pdf'><img src='https://img.shields.io/badge/Paper-PDF-purple'></a>

# PanTS Dataset

```shell
git clone https://github.com/MrGiovanni/PanTS.git
cd PanTS
bash download_PanTS_data.sh # It needs ~300GB storage
bash download_PanTS_label.sh http://www.cs.jhu.edu/~zongwei/dataset/PanTSMini_Label.tar.gz
```

#### Official training set
- PanTS-tr (*n*=9,000)

#### Official *in-distribution* test set 

- PanTS-te (*n*=901)

#### External *out-of-distribution* test set

> [!NOTE]
> To submit your model for evaluation, please email Dr. Zongwei Zhou (zzhou82@jh.edu) with:
> - Your model checkpoint
> - Testing script
> - A brief README with usage instructions
>
> The JHU Team will assess performance on three large out-of-distribution test sets and a RSNA Dataset, for which all pancreatic tumors have been re-annotated by our team.

- Proprietary **UCSF Pancreatic Dataset** (*n*=13,458)
- Proprietary **Polish Pancreatic Dataset** (*n*=5,259)
- Proprietary **Peking University Dataset** (*n*=3,066)
- RSNA **[Abdominal Trauma Detection Dataset](https://www.kaggle.com/competitions/rsna-2023-abdominal-trauma-detection/data)** (*n*=4,706)

# PanTS Benchmark (official in-distribution test set)

> [!NOTE]
> We are calling for more baseline methods. 

| model  | paper | github | P-Sen<sup>†</sup> | T-Sen<sup>‡</sup> | Spe | AUC | DSC |
|:---|:---|:---|:---:|:---:|:---:|:---:|:---:|
| nnU-Net | [![arXiv](https://img.shields.io/badge/arXiv-1809.10486-FF4040.svg)](https://arxiv.org/abs/1809.10486) | [![GitHub stars](https://img.shields.io/github/stars/MIC-DKFZ/nnUNet.svg?logo=github&label=Stars)](https://github.com/MIC-DKFZ/nnUNet)
| SuPreM | [![arXiv](https://img.shields.io/badge/arXiv-2501.11253-FF4040.svg)](https://arxiv.org/abs/2501.11253) | [![GitHub stars](https://img.shields.io/github/stars/MrGiovanni/SuPreM.svg?logo=github&label=Stars)](https://github.com/MrGiovanni/SuPreM)
| Models Genesis | [![arXiv](https://img.shields.io/badge/arXiv-2004.07882-FF4040.svg)](https://arxiv.org/abs/2004.07882) | [![GitHub stars](https://img.shields.io/github/stars/MrGiovanni/ModelsGenesis.svg?logo=github&label=Stars)](https://github.com/MrGiovanni/ModelsGenesis)
| Universal Model | [![arXiv](https://img.shields.io/badge/arXiv-2301.00785-FF4040.svg)](https://arxiv.org/abs/2301.00785) | [![GitHub stars](https://img.shields.io/github/stars/ljwztc/CLIP-Driven-Universal-Model.svg?logo=github&label=Stars)](https://github.com/ljwztc/CLIP-Driven-Universal-Model)
| UNet++ | [![arXiv](https://img.shields.io/badge/arXiv-1912.05074-FF4040.svg)](https://arxiv.org/abs/1912.05074) | [![GitHub stars](https://img.shields.io/github/stars/MrGiovanni/UNetPlusPlus.svg?logo=github&label=Stars)](https://github.com/MrGiovanni/UNetPlusPlus)
| TransUNet | [![arXiv](https://img.shields.io/badge/arXiv-2102.04306-FF4040.svg)](https://arxiv.org/abs/2102.04306) | [![GitHub stars](https://img.shields.io/github/stars/Beckschen/TransUNet.svg?logo=github&label=Stars)](https://github.com/Beckschen/TransUNet)
| MedNeXt | [![arXiv](https://img.shields.io/badge/arXiv-2303.09975-FF4040.svg)](https://arxiv.org/pdf/2303.09975) | [![GitHub stars](https://img.shields.io/github/stars/MIC-DKFZ/MedNeXt.svg?logo=github&label=Stars)](https://github.com/MIC-DKFZ/MedNeXt)
| MedFormer | [![arXiv](https://img.shields.io/badge/arXiv-2203.00131-FF4040.svg)](https://arxiv.org/abs/2203.00131) | [![GitHub stars](https://img.shields.io/github/stars/yhygao/CBIM-Medical-Image-Segmentation.svg?logo=github&label=Stars)](https://github.com/yhygao/CBIM-Medical-Image-Segmentation)
| UniSeg | [![arXiv](https://img.shields.io/badge/arXiv-2304.03493-FF4040.svg)](https://arxiv.org/abs/2304.03493) | [![GitHub stars](https://img.shields.io/github/stars/yeerwen/UniSeg.svg?logo=github&label=Stars)](https://github.com/yeerwen/UniSeg)
| LHU-Net | [![arXiv](https://img.shields.io/badge/arXiv-2404.05102-FF4040.svg)](https://arxiv.org/abs/2404.05102) | [![GitHub stars](https://img.shields.io/github/stars/xmindflow/LHUNet.svg?logo=github&label=Stars)](https://github.com/xmindflow/LHUNet)

<sup>†</sup> **Patient-wise sensitivity**: A case is considered a true positive if the model detects one or more tumors in a patient who has any tumor, regardless of whether the predicted location is accurate.  <br/>
<sup>‡</sup> **Tumor-wise sensitivity**: A tumor is considered a true positive only if it is correctly localized. Patients with multiple tumors can contribute multiple true positives.

# PanTS Model 

> [!NOTE]
> We will release more checkpoints as we receive permission from the respective authors. Stay tuned!

# Citation

```
@article{li2025pants,
  title={PanTS: The Pancreatic Tumor Segmentation Dataset},
  author={Li, Wenxuan and Zhou, Xinze and Chen, Qi and Lin, Tianyu and Bassi, Pedro RAS and Plotka, Szymon and Cwikla, Jaroslaw B and Chen, Xiaoxi and Ye, Chen and Zhu, Zheren and others},
  journal={arXiv preprint arXiv:2507.01291},
  year={2025},
  url={https://github.com/MrGiovanni/PanTS}
}
```

# Acknowledgement

This work was supported by the Lustgarten Foundation for Pancreatic Cancer Research, the Patrick J. McGovern Foundation Award, and the National Institutes of Health (NIH) under Award Number R01EB037669. We would like to thank the Johns Hopkins Research IT team in [IT@JH](https://researchit.jhu.edu/) for their support and infrastructure resources where some of these analyses were conducted; especially [DISCOVERY HPC](https://researchit.jhu.edu/research-hpc/). Paper content is covered by patents pending.
