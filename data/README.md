# Data Directory

This directory is for shared datasets that are used across multiple projects.

## Structure

- `raw/` - Original, immutable data
- `processed/` - Cleaned and transformed data ready for analysis

## Important Notes

- **Do not commit large datasets** to the repository. Use `.gitignore` to exclude them.
- For large datasets, consider using:
  - Cloud storage (Google Drive, AWS S3, etc.) and provide download links
  - Git LFS for version-controlled large files
  - Dataset hosting platforms (Kaggle, UCI ML Repository, etc.)
- Always include a README or data dictionary describing the data sources and structure
- Document any data preprocessing steps in notebooks or scripts

## Data Attribution

When using external datasets, always:
- Cite the original source
- Include license information
- Provide download links or instructions
- Respect data usage terms and privacy considerations
