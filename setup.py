import os

from setuptools import setup, find_packages

version = "0.1"

here = os.path.abspath(os.path.dirname(__file__))
with open(os.path.join(here, 'README.txt')) as f:
    README = f.read()
with open(os.path.join(here, 'CHANGES.txt')) as f:
    CHANGES = f.read()

requires = [
    'plaster_pastedeploy',
    'pyramid',
    'pyramid_mako',
    'pyramid_debugtoolbar',
    'waitress',
    'alembic',
    'pyramid_retry',
    'pyramid_tm',
    'SQLAlchemy',
    'transaction',
    'zope.sqlalchemy',
    'bcrypt',
    'pymysql',
    'wtforms',
    'itsdangerous',
    'pyramid_mailer',
    'webhelpers2',
    'paginate_sqlalchemy',
    'unidecode',
    'pytz',
    'pyramid_beaker',
    'pyramid_deform'
]

tests_require = [
    'WebTest >= 1.3.1',  # py3 compat
    'pytest >= 3.7.4',
    'pytest-cov',
]

setup(
    name='cuppy',
    version=version,
    description='A simple pythonic Content Management system based on pyramid framework and SQLAlchemy',
    long_description=README + '\n\n' + CHANGES,
    classifiers=[
        'Programming Language :: Python',
        'Programming Language :: Python :: 3'
        'Framework :: Pyramid',
        'Topic :: Internet :: WWW/HTTP',
        'Topic :: Internet :: WWW/HTTP :: WSGI :: Application',
    ],
    author='Ephraim Anierobi',
    author_email='ephraimanierobi@gmail.com',
    url='',
    keywords='cuppy cms python sqlalchemy bootstrap framework web pyramid pylons',
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    extras_require={
        'testing': tests_require,
        'fanstatic':'fanstatic[jsmin]'
    },
    install_requires=requires,
    entry_points={
        'paste.app_factory': [
            'main = cuppy:main',
        ],
        'console_scripts': [
            'initialize_cuppy_db=cuppy.scripts.initialize_db:main',
        ],
        'fanstatic.libraries': [
            'cuppy = cuppy.fanstatic:cuppylib'
        ]
        
    },
)
