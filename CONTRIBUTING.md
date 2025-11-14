# Contributing to This Repository

Thank you for your interest in this academic portfolio repository! This repository documents projects completed during the Master of Science in Applied Data Science program at the University of Chicago.

## Adding a New Project

### Individual Projects

1. Create a new directory in `individual-projects/` with a descriptive name:
   ```bash
   cd individual-projects
   mkdir your-project-name
   ```

2. Set up the project structure:
   ```
   your-project-name/
   ├── README.md
   ├── data/
   ├── notebooks/
   ├── src/
   ├── results/
   └── requirements.txt
   ```

3. Create a comprehensive README that includes:
   - Project title and description
   - Objectives and research questions
   - Dataset description and sources
   - Methodology
   - Key findings and results
   - Technologies used
   - How to run the project
   - Future work or improvements

4. Add your project to the main README.md in the appropriate section

### Collaborative Projects

Follow the same steps as individual projects, but also:
- List all team members and their contributions
- Document collaboration tools and processes used
- Clearly attribute work to respective team members

## Code Quality Standards

### Python Code
- Follow PEP 8 style guidelines
- Use meaningful variable and function names
- Include docstrings for functions and classes
- Add comments for complex logic

### Jupyter Notebooks
- Use markdown cells to explain analysis steps
- Keep notebooks organized and easy to follow
- Clear all outputs before committing (to reduce size)
- Use meaningful section headers

### Data Files
- Do not commit large data files (>10 MB)
- Use `.gitignore` to exclude data files
- Provide download links or instructions for obtaining data
- Include data dictionaries or descriptions

## Commit Message Guidelines

Write clear, descriptive commit messages:

- Use the present tense ("Add feature" not "Added feature")
- Keep the first line under 50 characters
- Provide additional details in the body if needed

Examples:
```
Add sentiment analysis project

Complete data preprocessing for NLP project

Update README with project results
```

## Documentation

- Keep documentation up to date
- Include visualizations and examples where appropriate
- Document dependencies and environment setup
- Explain any non-obvious decisions or approaches

## Testing

- If applicable, include unit tests for your code
- Document how to run tests
- Ensure all tests pass before committing

## Questions or Issues?

If you have questions about contributing or notice any issues:
1. Check existing documentation
2. Review project READMEs
3. Open an issue for discussion

---

Remember: This is an academic portfolio. Focus on quality, documentation, and demonstrating your learning and skills.
