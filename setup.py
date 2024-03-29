from setuptools import setup, find_packages

setup(
    name='LumoAPI',
    version='1.0',
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    install_requires=['Flask', 'boto3', 'DateTime', 'python-dateutil', 'python-dotenv']
)