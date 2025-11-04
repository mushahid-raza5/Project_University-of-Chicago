# Trained Models

This directory is for storing trained machine learning models.

## Guidelines

- **Do not commit large model files** directly to the repository
- Use `.gitignore` to exclude model binaries (*.pkl, *.h5, *.pt, etc.)
- For sharing models, consider:
  - Model hosting platforms (Hugging Face, MLflow, etc.)
  - Cloud storage with download links
  - Git LFS for version-controlled models
- Always document:
  - Model architecture and hyperparameters
  - Training dataset and preprocessing steps
  - Performance metrics
  - Dependencies and framework versions

## Model Documentation Template

For each model, create a README with:
- Model name and version
- Purpose and use case
- Training details (data, features, parameters)
- Performance metrics
- How to load and use the model
- Citation if based on published research
