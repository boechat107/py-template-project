from setuptools import setup, find_packages

VERSION = '0.1.0'

DEPENDENCIES = [
    'fire==0.1.2',
]

config = {
    'name': '__project-name__',
    'url': '',
    'version': VERSION,
    'packages': find_packages(exclude=['test*']),
    'entry_points': {
        'console_scripts': [],
    },
    'install_requires': DEPENDENCIES,
}

setup(**config)
