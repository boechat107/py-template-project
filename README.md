# Python Project Template

This is my template project for Python applications.

The project includes scripts to correctly install and test the application, in
addition to type checking annotated code with Mypy.


## Usage

### New Project

1. Clone this repository
2. Run the following command line:

```bash
./py-project-template/rename.sh <new_project_name>
```

### Install in Dev Mode

```bash
make dev_install
```

### Run Tests

```bash
# Runs pytest and Mypy.
make check
```
