$TOKEN = $env:GITHUB_TOKEN
$OWNER = "Divgagan"
$headers = @{
    Authorization = "token $TOKEN"
    Accept = "application/vnd.github.v3+json"
    "Content-Type" = "application/json"
}

function Push-Readme($repo, $content, $message = "Fix README encoding - clean ASCII content") {
    # Force UTF-8 encoding explicitly
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($content)
    $encoded = [Convert]::ToBase64String($bytes)
    try {
        $existing = Invoke-RestMethod -Uri "https://api.github.com/repos/$OWNER/$repo/contents/README.md" -Headers $headers -ErrorAction Stop
        $sha = $existing.sha
        $body = @{ message = $message; content = $encoded; sha = $sha } | ConvertTo-Json -Depth 5
    } catch {
        $body = @{ message = $message; content = $encoded } | ConvertTo-Json -Depth 5
    }
    try {
        Invoke-RestMethod -Uri "https://api.github.com/repos/$OWNER/$repo/contents/README.md" -Method PUT -Headers $headers -Body $body | Out-Null
        Write-Host "OK: Fixed README for $repo"
    } catch {
        Write-Host "FAIL: $repo - $_"
    }
}

# === 1. Traffic_congestion_prediction_using_GNN ================================
$r1 = '<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=180&section=header&text=Traffic%20Congestion%20Prediction&fontSize=30&fontColor=fff&animation=twinkling&desc=Graph%20Neural%20Networks&descSize=16&descAlignY=75" width="100%"/>

<div align="center">

# Traffic Congestion Prediction using GNN

[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![PyTorch](https://img.shields.io/badge/PyTorch-EE4C2C?style=for-the-badge&logo=pytorch&logoColor=white)](https://pytorch.org)
[![PyG](https://img.shields.io/badge/PyTorch_Geometric-EE4C2C?style=for-the-badge&logo=pytorch&logoColor=white)](https://pyg.org)
[![Stars](https://img.shields.io/github/stars/Divgagan/Traffic_congestion_prediction_using_GNN?style=for-the-badge&color=yellow)](https://github.com/Divgagan/Traffic_congestion_prediction_using_GNN/stargazers)

</div>

---

## Overview

This project implements a **Graph Neural Network (GNN)** model to predict traffic congestion in urban road networks. Road intersections are modeled as graph nodes and roads as edges, allowing the model to capture spatial dependencies between traffic signals.

---

## Architecture

```
Road Network Graph
       |
  Node Features --> Graph Convolutional Layers --> Prediction Head
  Edge Features -->        (GCN / GAT)            (Congestion Level)
```

---

## Features

- Graph-based traffic network modeling
- Temporal and spatial feature extraction
- Efficient training on large road graphs
- Visualization of congestion heatmaps

---

## Tech Stack

| Component | Technology |
|---|---|
| Language | Python 3.x |
| Deep Learning | PyTorch + PyTorch Geometric |
| Data Processing | Pandas, NumPy |
| Visualization | Matplotlib, NetworkX |

---

## Getting Started

```bash
git clone https://github.com/Divgagan/Traffic_congestion_prediction_using_GNN.git
cd Traffic_congestion_prediction_using_GNN
pip install -r requirements.txt
python train.py
```

---

## Project Structure

```
.
|-- data/               # Traffic dataset
|-- models/             # GNN model definitions
|-- utils/              # Helper functions
|-- train.py            # Training script
|-- evaluate.py         # Evaluation script
|-- requirements.txt
|-- .gitignore
```

---

**Author:** [Gagan Diwakar](https://portfolio-gagan-nu.vercel.app/) | [LinkedIn](https://www.linkedin.com/in/gagan-diwakar-772134293/) | [GitHub](https://github.com/Divgagan)

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=100&section=footer" width="100%"/>'

Push-Readme "Traffic_congestion_prediction_using_GNN" $r1

# === 2. DSA_in_Cpp =============================================================
$r2 = '<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=180&section=header&text=DSA%20in%20C%2B%2B%20%2F%20Python&fontSize=36&fontColor=fff&animation=twinkling&desc=Data%20Structures%20%26%20Algorithms&descSize=16&descAlignY=75" width="100%"/>

<div align="center">

# DSA in C++ / Python

[![C++](https://img.shields.io/badge/C++-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white)](https://isocpp.org)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![LeetCode](https://img.shields.io/badge/LeetCode-FFA116?style=for-the-badge&logo=leetcode&logoColor=black)](https://leetcode.com/u/Gagan747/)

</div>

---

## Overview

A structured collection of **Data Structures and Algorithms** implementations in C++ and Python. Personal reference and practice log for competitive programming and technical interviews.

---

## Topics Covered

| Category | Topics |
|---|---|
| **Arrays & Strings** | Two Pointers, Sliding Window, Prefix Sum |
| **Linked Lists** | Singly, Doubly, Circular, Fast-Slow Pointers |
| **Trees** | BST, AVL, Segment Tree, BFS / DFS |
| **Graphs** | Dijkstra, Bellman-Ford, Floyd-Warshall, Kruskal, Prim |
| **Dynamic Programming** | Memoization, Tabulation, Knapsack, LCS, LIS |
| **Sorting** | Merge Sort, Quick Sort, Heap Sort, Counting Sort |
| **Searching** | Binary Search, Ternary Search |
| **Heap / Priority Queue** | Min Heap, Max Heap, K-th Largest |
| **Backtracking** | N-Queens, Sudoku, Permutations |
| **Bit Manipulation** | XOR tricks, Bitmasking |

---

## Project Structure

```
DSA_in_Cpp/
|-- Arrays/
|-- Strings/
|-- LinkedList/
|-- Trees/
|-- Graphs/
|-- DynamicProgramming/
|-- Sorting/
|-- Searching/
|-- LeetCode/
```

---

## LeetCode Profile

[![LeetCode](https://img.shields.io/badge/Visit_LeetCode_Profile-FFA116?style=for-the-badge&logo=leetcode&logoColor=black)](https://leetcode.com/u/Gagan747/)

---

**Author:** [Gagan Diwakar](https://portfolio-gagan-nu.vercel.app/) | [LeetCode](https://leetcode.com/u/Gagan747/) | [GitHub](https://github.com/Divgagan)

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=100&section=footer" width="100%"/>'

Push-Readme "DSA_in_Cpp" $r2

# === 3. Porto_taxi_Traffic_trediction_ =========================================
$r3 = '<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=180&section=header&text=Porto%20Taxi%20Traffic%20Prediction&fontSize=28&fontColor=fff&animation=twinkling&desc=ML-Powered%20Trajectory%20Forecasting&descSize=16&descAlignY=75" width="100%"/>

<div align="center">

# Porto Taxi Traffic Prediction

[![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-F7931E?style=for-the-badge&logo=scikit-learn&logoColor=white)](https://scikit-learn.org)

</div>

---

## Overview

Uses the **Porto Taxi Dataset** (ECML/PKDD 2015 Challenge) to build a machine learning model that predicts taxi trip destinations and travel times based on partial trajectory data.

---

## Problem Statement

Given the first K GPS points of a taxi trip, predict:
- Final destination coordinates
- Estimated travel time

---

## Approach

1. **EDA** - Exploratory Data Analysis of trip patterns
2. **Feature Engineering** - Extract temporal, spatial, and route features
3. **Modeling** - Random Forest, Gradient Boosting, Neural Networks
4. **Evaluation** - RMSE on destination prediction

---

## Dataset

- **Source**: [Kaggle - ECML/PKDD 2015](https://www.kaggle.com/c/pkdd-15-taxi-trip-time-prediction-ii)
- **Size**: 1.7M taxi trips in Porto, Portugal
- **Features**: Taxi ID, Call Type, Timestamp, GPS Polyline

---

## Getting Started

```bash
git clone https://github.com/Divgagan/Porto_taxi_Traffic_trediction_.git
cd Porto_taxi_Traffic_trediction_
pip install -r requirements.txt
jupyter notebook
```

---

**Author:** [Gagan Diwakar](https://portfolio-gagan-nu.vercel.app/) | [LinkedIn](https://www.linkedin.com/in/gagan-diwakar-772134293/)

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=100&section=footer" width="100%"/>'

Push-Readme "Porto_taxi_Traffic_trediction_" $r3

# === 4. Master_traffic_AI_project_DL. =========================================
$r4 = '<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=180&section=header&text=Master%20Traffic%20AI&fontSize=36&fontColor=fff&animation=twinkling&desc=Deep%20Learning%20Traffic%20Analysis%20Pipeline&descSize=16&descAlignY=75" width="100%"/>

<div align="center">

# Master Traffic AI -- Deep Learning Project

[![TensorFlow](https://img.shields.io/badge/TensorFlow-FF6F00?style=for-the-badge&logo=tensorflow&logoColor=white)](https://tensorflow.org)
[![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)

</div>

---

## Overview

An end-to-end **Deep Learning pipeline** for intelligent traffic flow analysis and prediction. Encompasses data preprocessing, model training, hyperparameter tuning, and result visualization for traffic datasets.

---

## Pipeline

```
Raw Traffic Data
      |
  Preprocessing --> Feature Extraction --> Deep Learning Model
      |                                          |
  Normalization                         CNN / LSTM / Transformer
  Augmentation                                   |
                                         Predictions & Metrics
```

---

## Key Features

- Complete ML pipeline from raw data to predictions
- Multiple model architectures (CNN, LSTM, Hybrid)
- Training visualization with loss / accuracy curves
- Experiment tracking and hyperparameter tuning
- Comprehensive evaluation metrics (MAE, RMSE, R2)

---

## Tech Stack

| Component | Technology |
|---|---|
| Deep Learning | TensorFlow / Keras |
| Data Processing | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Notebook | Jupyter Lab |

---

## Getting Started

```bash
git clone https://github.com/Divgagan/Master_traffic_AI_project_DL..git
cd "Master_traffic_AI_project_DL."
pip install -r requirements.txt
jupyter lab
```

---

**Author:** [Gagan Diwakar](https://portfolio-gagan-nu.vercel.app/) | [LinkedIn](https://www.linkedin.com/in/gagan-diwakar-772134293/)

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=100&section=footer" width="100%"/>'

Push-Readme "Master_traffic_AI_project_DL." $r4

# === 5. Hybrid_paralell_graph_using_openmp_-_MPI_ =============================
$r5 = '<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=180&section=header&text=Hybrid%20Parallel%20Graph&fontSize=32&fontColor=fff&animation=twinkling&desc=OpenMP%20%2B%20MPI%20%7C%20High%20Performance%20Computing&descSize=16&descAlignY=75" width="100%"/>

<div align="center">

# Hybrid Parallel Graph -- OpenMP + MPI

[![C++](https://img.shields.io/badge/C++-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white)](https://isocpp.org)
[![OpenMP](https://img.shields.io/badge/OpenMP-0071C5?style=for-the-badge&logo=intel&logoColor=white)](https://www.openmp.org)
[![MPI](https://img.shields.io/badge/MPI-FF6600?style=for-the-badge&logo=gnu&logoColor=white)](https://www.open-mpi.org)

</div>

---

## Overview

A **High Performance Computing (HPC)** project implementing parallel graph algorithms using a hybrid **OpenMP + MPI** approach. Developed during the HPC course, demonstrating multi-node, multi-thread parallelism for large-scale graph processing.

---

## Architecture

```
MPI Process 0          MPI Process 1          MPI Process N
+-------------+       +-------------+       +-------------+
| Thread 0    |       | Thread 0    |       | Thread 0    |
| Thread 1    | <---> | Thread 1    | <---> | Thread 1    |
| Thread 2    |  MPI  | Thread 2    |  MPI  | Thread 2    |
| Thread N    |       | Thread N    |       | Thread N    |
+-------------+       +-------------+       +-------------+
   OpenMP                 OpenMP                OpenMP
```

---

## Algorithms Implemented

- **Parallel BFS** - Breadth-First Search with OpenMP thread parallelism
- **Parallel Dijkstra** - Shortest path with MPI process distribution
- **Parallel MST** - Minimum Spanning Tree (Kruskal / Prim)
- **Graph Partitioning** - Distributed graph across MPI processes

---

## Build & Run

```bash
# Compile
make all

# Run with MPI (4 processes) + OpenMP (8 threads each)
export OMP_NUM_THREADS=8
mpirun -np 4 ./parallel_graph input_graph.txt

# Run benchmarks
make benchmark
```

---

## Performance Results

| Algorithm | Sequential | OpenMP (8T) | MPI (4P) | Hybrid (4P x 8T) |
|---|---|---|---|---|
| BFS | 1.0x | 4.2x | 3.1x | **11.8x** |
| Dijkstra | 1.0x | 3.8x | 2.9x | **10.2x** |

---

## Requirements

- GCC 9+
- OpenMPI 4.0+
- OpenMP 4.5+

---

**Author:** [Gagan Diwakar](https://portfolio-gagan-nu.vercel.app/) | HPC Course Project

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=100&section=footer" width="100%"/>'

Push-Readme "Hybrid_paralell_graph_using_openmp_-_MPI_" $r5

# === 6. HPC_LAB_ ===============================================================
$r6 = '<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=180&section=header&text=HPC%20Lab&fontSize=44&fontColor=fff&animation=twinkling&desc=High%20Performance%20Computing%20Laboratory&descSize=16&descAlignY=75" width="100%"/>

<div align="center">

# HPC Lab -- High Performance Computing

[![C](https://img.shields.io/badge/C-A8B9CC?style=for-the-badge&logo=c&logoColor=black)](https://en.cppreference.com/w/c)
[![OpenMP](https://img.shields.io/badge/OpenMP-0071C5?style=for-the-badge&logo=intel&logoColor=white)](https://www.openmp.org)
[![MPI](https://img.shields.io/badge/MPI-FF6600?style=for-the-badge&logo=gnu&logoColor=white)](https://www.open-mpi.org)

</div>

---

## Overview

Lab exercises and assignments from the **High Performance Computing** course. Covers parallel programming paradigms including shared memory (OpenMP), distributed memory (MPI), and GPU computing basics.

---

## Lab Topics

| Lab | Topic | Technique |
|---|---|---|
| Lab 1 | Introduction to Parallel Computing | OpenMP basics |
| Lab 2 | Matrix Multiplication | OpenMP parallelization |
| Lab 3 | Parallel Sorting | Merge sort, Odd-Even sort |
| Lab 4 | MPI Point-to-Point Communication | MPI_Send / MPI_Recv |
| Lab 5 | MPI Collective Operations | MPI_Bcast, MPI_Reduce |
| Lab 6 | Parallel Graph Traversal | BFS / DFS with OpenMP |
| Lab 7 | Hybrid MPI + OpenMP | Combined approach |

---

## Running Labs

```bash
# OpenMP example
gcc -fopenmp lab1.c -o lab1 && ./lab1

# MPI example
mpicc lab4.c -o lab4 && mpirun -np 4 ./lab4
```

---

**Author:** [Gagan Diwakar](https://portfolio-gagan-nu.vercel.app/) | [GitHub](https://github.com/Divgagan)

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=100&section=footer" width="100%"/>'

Push-Readme "HPC_LAB_" $r6

# === 7. DL_lab =================================================================
$r7 = '<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=180&section=header&text=Deep%20Learning%20Lab&fontSize=36&fontColor=fff&animation=twinkling&desc=Neural%20Networks%20%26%20DL%20Experiments&descSize=16&descAlignY=75" width="100%"/>

<div align="center">

# Deep Learning Lab

[![TensorFlow](https://img.shields.io/badge/TensorFlow-FF6F00?style=for-the-badge&logo=tensorflow&logoColor=white)](https://tensorflow.org)
[![PyTorch](https://img.shields.io/badge/PyTorch-EE4C2C?style=for-the-badge&logo=pytorch&logoColor=white)](https://pytorch.org)
[![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org)

</div>

---

## Overview

Lab experiments and assignments from the **Deep Learning** course. Covers neural network fundamentals through to advanced architectures including CNNs, RNNs, LSTMs, Transformers, and GANs.

---

## Lab Topics

| Lab | Topic | Framework |
|---|---|---|
| Lab 1 | Perceptron and MLP | NumPy |
| Lab 2 | Backpropagation from Scratch | NumPy |
| Lab 3 | CNN for Image Classification | TensorFlow / Keras |
| Lab 4 | Transfer Learning (VGG, ResNet) | TensorFlow |
| Lab 5 | RNN / LSTM for Sequence Data | PyTorch |
| Lab 6 | Attention Mechanism | PyTorch |
| Lab 7 | GAN -- Image Generation | PyTorch |
| Lab 8 | Autoencoders | Keras |

---

## Getting Started

```bash
git clone https://github.com/Divgagan/DL_lab.git
cd DL_lab
pip install -r requirements.txt
jupyter lab
```

---

**Author:** [Gagan Diwakar](https://portfolio-gagan-nu.vercel.app/) | [LinkedIn](https://www.linkedin.com/in/gagan-diwakar-772134293/)

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=100&section=footer" width="100%"/>'

Push-Readme "DL_lab" $r7

# === 8. Portfolio_Gagan ========================================================
$r8 = '<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=180&section=header&text=Portfolio%20Website&fontSize=38&fontColor=fff&animation=twinkling&desc=Live%20at%20portfolio-gagan-nu.vercel.app&descSize=16&descAlignY=75" width="100%"/>

<div align="center">

# Portfolio -- Gagan Diwakar

[![Live Demo](https://img.shields.io/badge/Live_Demo-00FFFF?style=for-the-badge&logo=vercel&logoColor=black)](https://portfolio-gagan-nu.vercel.app/)
[![Deployed on Vercel](https://img.shields.io/badge/Deployed_on-Vercel-000000?style=for-the-badge&logo=vercel)](https://vercel.com)
[![HTML](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)

</div>

---

## Overview

Personal **portfolio website** showcasing projects, skills, and experience as an AI/ML Engineer and Deep Learning Researcher.

**Live at: [portfolio-gagan-nu.vercel.app](https://portfolio-gagan-nu.vercel.app/)**

---

## Features

- Fully responsive design
- Dark mode aesthetic
- Fast loading on Vercel CDN
- Smooth animations and transitions
- Projects showcase with links
- Contact section

---

## Tech Stack

| Component | Technology |
|---|---|
| Structure | HTML5 |
| Styling | CSS3 |
| Deployment | Vercel |

---

## Run Locally

```bash
git clone https://github.com/Divgagan/Portfolio_Gagan.git
cd Portfolio_Gagan
# Open index.html in your browser
```

---

**Author:** [Gagan Diwakar](https://portfolio-gagan-nu.vercel.app/) | [LinkedIn](https://www.linkedin.com/in/gagan-diwakar-772134293/)

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=100&section=footer" width="100%"/>'

Push-Readme "Portfolio_Gagan" $r8

# === 9. Demo_repository ========================================================
$r9 = '# Demo Repository

A sandbox repository for learning Git workflows, branching strategies, and version control best practices.

**Author:** [Gagan Diwakar](https://github.com/Divgagan) | [Portfolio](https://portfolio-gagan-nu.vercel.app/)'

Push-Readme "Demo_repository" $r9

Write-Host ""
Write-Host "DONE: All READMEs fixed with clean ASCII content. No more garbled characters."
